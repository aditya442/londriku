
import 'package:flutter/material.dart';
import 'package:laundryku/model/intro.dart';
import 'package:laundryku/color_pelette.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:laundryku/pages/login_page.dart';
import 'package:laundryku/utils/Constans.dart';
import 'package:laundryku/Localbindings.dart';
import 'package:laundryku/widget/Indicator.dart';
import 'package:laundryku/utils/colors.dart';
import 'package:laundryku/model/intro.dart';
import 'package:laundryku/utils/utils.dart';
import 'package:laundryku/pages/intro_page.dart';
import 'package:laundryku/pages/registrasi_page.dart';

class Intro_Page extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<Intro_Page> {

  final _controller = PageController();
  bool leadingVisibility = false;
  Screen  size;
  final List<Widget> _pages = [
    IntroPage("assets/images/intro_2.png","", "Londriku!\n"),
    IntroPage("assets/images/intro_3.png","", "Londriku!\n"),
    IntroPage("assets/images/intro_1.png","", "Londriku!\n"),
//    IntroPage("assets/images/onboard_2.png","Halaman 2", "Informasi Halaman! \n \n Dua!"),
//    IntroPage("assets/images/onboard_3.png","Halaman 3", "Informasi Halaman \n \n Tiga!"),
  ];

  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    bool isLastPage = currentPageIndex == _pages.length - 1;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              pageViewFillWidget(),
              appBarWithButton(isLastPage, context),
              bottomDotsWidget(),
            ],
          ),
        )
    );
  }
  Positioned bottomDotsWidget() {
    return Positioned(
        bottom: size.getWidthPx(20),
        left: 0.0,
        right: 0.0,
        child: DotsIndicator(
          controller: _controller,
          itemCount: _pages.length,
          color: Colors.tealAccent,
          onPageSelected: (int page) {
            _controller.animateToPage(
              page,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
        ));
  }
  Positioned appBarWithButton(bool isLastPage, BuildContext context) {
    return Positioned(
      top: 0.0,
      left: 0.0,
      right: 0.0,
      child: new SafeArea(
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          primary: false,
          centerTitle: true,
          leading: Visibility(
              visible: leadingVisibility,
              child: IconButton(
                icon: const Icon(Icons.arrow_back,color: Colors.white,size: 34,),
                onPressed: () {
                  _controller.animateToPage(currentPageIndex - 1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeOut);
                },
              )),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: size.getWidthPx(16), right:  size.getWidthPx(12), bottom: size.getWidthPx(12)),
              child: RaisedButton(
                child: Text(
                  isLastPage ? 'DONE' : 'SKIP',
                  style: TextStyle(fontFamily: 'Exo2',fontWeight: FontWeight.w500,fontSize: 14,color: Colors.grey.shade700),
                ),
                onPressed: isLastPage
                    ? () async{
                  // Last Page Done Click

                  LocalStorage.sharedInstance.writeValue(key:Constants.isOnBoard,value: "1");

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login_page()));

                }
                    : () {
                  _controller.animateToPage(currentPageIndex + 1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Positioned pageViewFillWidget() {
    return Positioned.fill(
        child: PageView.builder(
          controller: _controller,
          itemCount: _pages.length,
          itemBuilder: (BuildContext context, int index) {
            return _pages[index % _pages.length];
          },
          onPageChanged: (int p) {
            setState(() {
              currentPageIndex = p;
              if (currentPageIndex == 0) {
                leadingVisibility = false;
              } else {
                leadingVisibility = true;
              }
            });
          },
        )
    );
  }
}

