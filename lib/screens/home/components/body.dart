import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practiseui1/components/header_with_searchbox.dart';
import 'package:practiseui1/components/title_with_morebtn.dart';
import 'package:practiseui1/constants.dart';
import 'package:practiseui1/screens/home/components/recommend_plants.dart';

import 'feature_plants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          // Spacer(),
          TitleWithMorebtn(
            title: 'Recommended',
            press: () {},
          ),
          RecommendsPlants(),
          TitleWithMorebtn(
            title: "Feature Plants",
            press: () {},
          ),
          FeaturePlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

