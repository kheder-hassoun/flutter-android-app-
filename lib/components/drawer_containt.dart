import 'dart:isolate';

import 'package:amazing_001/setting/globalvariable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerContaint extends StatefulWidget {
  const DrawerContaint({super.key});

  @override
  State<DrawerContaint> createState() => _DrawerContaintState();
}

class _DrawerContaintState extends State<DrawerContaint> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;
    ColorProvider colorProvider = Provider.of<ColorProvider>(context);
    return AnimatedContainer(
      duration: const Duration(seconds: 3),
      width: screenWidth * 0.8,
      color: colorProvider.backgroundlevel1,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          height: screenHight * 0.35,
          width: screenWidth * 0.8,
          color: colorProvider.themelevel1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHight * 0.05,
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(60)),
                child: SizedBox(
                  height: screenHight * 0.15,
                  width: screenHight * 0.15,
                  child: Image.asset(
                    "assets/images/kheder.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Devloper",
                  style: TextStyle(
                      color: colorProvider.textcolor,
                      fontFamily: 'englishrotated',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: screenHight * 0.01,
              ),
              Text(
                "Welcom in Telportin App  👋 \n"
                '',
                style: TextStyle(
                    color: colorProvider.backgroundlevel1,
                    fontFamily: 'englishrotated',
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ],
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: SizedBox(
            height: screenHight * 0.65,
            width: screenHight * 0.8,
            child: Image.asset(
              "assets/images/network.gif",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ]),
    );
  }
}
