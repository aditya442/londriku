import 'package:flutter/material.dart';
import 'package:laundryku/utils/utils.dart';


class IntroPage extends StatelessWidget {
  final String assetImage;
  final  String text;
  final  String title;

  IntroPage(this.assetImage, this.title, this.text);

  @override
  Widget build(BuildContext context) {
    Screen  size = Screen(MediaQuery.of(context).size);
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(assetImage),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: size.getWidthPx(110)),
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontFamily: 'Exo2',fontWeight: FontWeight.w900,fontSize: 26,color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),


          Center(
            child: Column(
              verticalDirection: VerticalDirection.up,
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.only(bottom: size.getWidthPx(200),left: size.getWidthPx(30),right: size.getWidthPx(20)),
                  child: Text(
                    text,
                    style: TextStyle(fontFamily: 'Exo2',fontWeight: FontWeight.w900,fontSize: 26,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
