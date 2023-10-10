import 'package:amazon/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AmazonDetail extends StatefulWidget {
  AmazonDetail({super.key});

  @override
  State<AmazonDetail> createState() => _AmazonDetailState();
}

class _AmazonDetailState extends State<AmazonDetail> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Image.asset("assets/images/Group .png"),
          SizedBox(
            width: 60,
          ),
          Image.asset(
            "assets/images/image.png",
          ),
          SizedBox(
            width: 40,
          ),
          Text(
            "Sign In",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Container(
                alignment: Alignment.topLeft,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black12, width: 1),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("assets/images/Vector.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Search Product",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffB4B4B4),
                          letterSpacing: -0.3,
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Image.asset("assets/images/stand.png"),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: 2,
                      onPageChanged: (page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Image.asset("assets/images/Rectangle.png");
                      },
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 2,
                    effect: WormEffect(
                      activeDotColor: Colors.red,
                      dotWidth: 10,
                      dotHeight: 10,
                      spacing: 5,
                    ),
                  ),
                ],
              )
    ])));
  }
}
