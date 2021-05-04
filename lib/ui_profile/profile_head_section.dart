import 'package:flutter/material.dart';
import 'package:flutter_middle_2/model/profile.dart';

class ProfileHeadSection extends StatelessWidget {
  final Profile profile;


  ProfileHeadSection(this.profile);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: Text('${profile.name}, ${profile.age}',
                  style: Theme.of(context).textTheme.headline6
                    .merge(TextStyle(fontWeight: FontWeight.bold)),
                  )),
              Icon(Icons.local_phone_rounded),
              profile.isVerifyMobile
                  ? Text('전화번호 인증됨')
                  : Text('전화번호 인증 안됨'),
            ],
          ),
          Text('${profile.location}, ${profile.distance}',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text('${profile.height}cm, ${profile.bloodType}',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
