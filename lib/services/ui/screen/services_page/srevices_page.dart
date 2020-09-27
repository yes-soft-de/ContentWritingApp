import 'package:contentwritingapp/services/ui/screen/subject_page/subject_page.dart';
import 'package:contentwritingapp/services/ui/widget/service_card.dart';
import 'package:contentwritingapp/shared/widget/app_drawer/app_drawer.dart';
import 'package:contentwritingapp/shared/widget/content_writing_app_bar/content_writing_app_bar.dart';
import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return getPageLayout();
  }

  Widget getPageLayout(){
    return Scaffold(
      appBar: ContentWritingAppBarWidget(
        appBar: AppBar(),
        title: 'Our Services',
      ),
        drawer:AppDrawerWidget(),
      body:  Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0,20.0),
            decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: [Color(0xffB4ACAC), Color(0xff2CB2CF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            stops: [0.15, 1])),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white10
              ),
              width: MediaQuery.of(context).size.width*0.78,
              child: Text(

                  'Choose on of Our Services',
                style: TextStyle(
                  fontFamily: 'yesteryear',
                  fontSize: 20,
                  color: Color(0xff065061)
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //services
            Container(
              margin: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
              padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white10
              ),
              width: MediaQuery.of(context).size.width*0.78,
              child:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ServiceCard(
                        title: 'Website Content',
                        image: 'assets/images/Website-Content-Writing-Service 1.png',
                      ),
                      ServiceCard(
                        title: ' Books Writing',
                        image: 'assets/images/Books-300x200 1.png',
                      ),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ServiceCard(
                        title: 'Messages',
                        image: 'assets/images/1200px-Google_Messages_logo 1.png',
                      ),
                      ServiceCard(
                        title: 'Scripts',
                        image: 'assets/images/script-writing-software 1.png',
                      ),
                    ],
                  ),
                ],
              )
            ),

            Container(
              width: MediaQuery.of(context).size.width*0.55,
              margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: FlatButton(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                color: Color(0xff368B97),
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                onPressed: () {
//                        Navigator.pushNamed(
//                            context, AuthorizationModule.ROUTE_REGISTER_PAGE);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SubjectPage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Next',
                      style: TextStyle(
                        color: Color(0xffC5F3FD),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      )

    );
  }
}
