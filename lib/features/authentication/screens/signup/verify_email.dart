import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: const Padding(
          padding: const EdgeInsets.all(GetItSizes.defaultSpace),
          child: Column(
            children: [
              //Image

              ////Title & SubTitle
              /////Buttons
            ],
          )),
    );
  }
}

class Cupertino {}
