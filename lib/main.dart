import 'package:flutter/material.dart';
import 'middle_state.dart';

import 'data/fake_data.dart';
import 'model/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Profile profile = fakeProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          '프로필',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        titleSpacing: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.add_alert),
            onPressed: null,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ProfileTopSection(profile)
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('별로에요')
                ),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('괜찮아요')
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
