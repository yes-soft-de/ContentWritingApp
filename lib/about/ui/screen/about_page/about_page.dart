import 'package:contentwritingapp/shared/widget/app_drawer/app_drawer.dart';
import 'package:contentwritingapp/shared/widget/content_writing_app_bar/content_writing_app_bar.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return getPageLayout();
  }
  Widget getPageLayout(){
    return Scaffold(
      appBar: ContentWritingAppBarWidget(
        appBar: AppBar(),
        title: 'About',
      ),
      drawer:AppDrawerWidget(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsetsDirectional.fromSTEB(30.0, 50.0, 30.0,20.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffB4ACAC), Color(0xff2CB2CF)],
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                stops: [0.15, 1])),
        child: SingleChildScrollView(
            child:    Column(
              children: [
                Container(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0)),
                        color: Colors.white10
                    ),
                    width: MediaQuery.of(context).size.width*0.78,
                    child:  Column(
                      children: [
                        Container(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30.0),
                                ),
                                color: Colors.white10
                            ),
                            width: MediaQuery.of(context).size.width*0.78,
                            child:  Text(
                              'Who Are We',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Yesteryear',
                                color: Color(0xff065061)
                              ),
                            )
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.  ',
                          style: TextStyle(
                            color: Color(0xff065061)
                          ),
                        )
                      ],
                    )
                ),
              ],
            )
        ),
      ),
    );
  }
}
