import 'package:flutter/material.dart';
import 'package:flutter_middle_2/model/profile.dart';

class ProfileBodySection extends StatelessWidget {
  final Profile profile;

  ProfileBodySection(this.profile);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '학교',
                      style: TextStyle(
                        color: Color(0xffa2a2a2),
                      ),
                    ),
                    flex: 3,
                  ),
                  Expanded(
                      child: Text(profile.educationLevel),
                  flex: 7,
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '직업',
                      style: TextStyle(
                        color: Color(0xffa2a2a2),
                      ),
                    ),
                    flex: 3,
                  ),
                  Expanded(
                      child: Text(profile.basicOccupation),
                  flex: 7,
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start, // 위로 붙임
                children: [
                  Expanded(
                    child: Text(
                      '내소개',
                      style: TextStyle(
                        color: Color(0xffa2a2a2),
                      ),
                    ),
                    flex: 3,
                  ),
                  Expanded(
                      child: Text(profile.description),
                  flex: 7,
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.blueGrey,
        ),
        Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '종교',
                      style: TextStyle(
                        color: Color(0xffa2a2a2),
                      ),
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Text(profile.religion),
                    flex: 7,
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '음주',
                      style: TextStyle(
                        color: Color(0xffa2a2a2),
                      ),
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Text(profile.alcohol),
                    flex: 7,
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start, // 위로 붙임
                children: [
                  Expanded(
                    child: Text(
                      '흡연',
                      style: TextStyle(
                        color: Color(0xffa2a2a2),
                      ),
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Text(profile.smoke),
                    flex: 7,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
