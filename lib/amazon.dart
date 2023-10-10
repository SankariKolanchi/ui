import 'package:amazon/themes/app_text_style.dart';
import 'package:flutter/material.dart';

import 'amazon_detail.dart';

class Amazon extends StatelessWidget {
  const Amazon({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Image.asset(
                "assets/images/image.png",
              ),
              SizedBox(height: 20),
              ClipOval(
                child: Image.asset(
                  "assets/images/girl.png",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "FIND EVERYTHING YOU \nLOVE AN AMAZON",
                style: AppTextStyle.appBarTitle,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Let’s try our best products simple to create for you",
                  style: AppTextStyle.blackF12W700TextStyle,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all<Size>(Size(100, 60)),
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.orange),
                        ),
                        onPressed: () {

                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AmazonDetail()));
                        },
                        child: Text(
                          "Start Shooping",
                          style: AppTextStyle.blackF16W700TextStyle,
                        )
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
