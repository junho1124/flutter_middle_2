import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../model/profile.dart';

class ProfileTopSection extends StatefulWidget {
  final Profile profile;


  ProfileTopSection(this.profile);

  @override
  _ProfileTopSectionState createState() => _ProfileTopSectionState();
}

class _ProfileTopSectionState extends State<ProfileTopSection> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: widget.profile.profileImages
              .map((e) => Image.network(
                    e,
                    width: MediaQuery.of(context).size.width,
                    height: 370,
                    fit: BoxFit.cover,
                  ))
              .toList(),
          options: CarouselOptions(
            height: 370.0,
            viewportFraction: 1,
            enableInfiniteScroll: true,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _index = index;
              });
            },
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.profile.profileImages.asMap().entries
                .map((image) {
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: image.key == _index
                    ? Colors.white
                      : Colors.blueGrey
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
