import 'package:flutter/material.dart';
import 'Model.dart';

class OnBoard_Page extends StatefulWidget {
  final OnBoardPageModel pageModel;
  final PageController pageController;

  const OnBoard_Page(
      {Key key, @required this.pageModel, @required this.pageController})
      : super(key: key);

  @override
  _OnBoard_PageState createState() => _OnBoard_PageState();
}

class _OnBoard_PageState extends State<OnBoard_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: height * 0.1),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    widget.pageModel.heading,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              new Image.asset(
                widget.pageModel.imagePath,
                height: height * 0.5,
                fit: BoxFit.fitWidth,
                width: width,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.05, left: width * 0.1, right: width * 0.1),
                child: Center(
                  child: Text(
                    widget.pageModel.subHead,
                    softWrap: true,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
