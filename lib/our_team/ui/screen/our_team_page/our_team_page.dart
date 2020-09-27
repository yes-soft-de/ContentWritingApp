import 'package:contentwritingapp/our_team/ui/screen/writer_profile_page/writer_profile_page.dart';
import 'package:contentwritingapp/shared/widget/app_drawer/app_drawer.dart';
import 'package:contentwritingapp/shared/widget/content_writing_app_bar/content_writing_app_bar.dart';
import 'package:contentwritingapp/shared/widget/user_profile_widget/user_profile_widget.dart';
import 'package:flutter/material.dart';

class OurTeamPage extends StatefulWidget {
  @override
  _OurTeamPageState createState() => _OurTeamPageState();
}

class _OurTeamPageState extends State<OurTeamPage> {
  @override
  Widget build(BuildContext context) {
    return getPageLayout();
  }

  Widget getPageLayout(){
    return Scaffold(
      appBar: ContentWritingAppBarWidget(
        appBar: AppBar(),
        title: 'Our Team',
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
         child: Container(
              padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white10
              ),
              width: MediaQuery.of(context).size.width*0.78,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WriterProfilePage()),
                          );
                        },
                        child:UserProfileWidget(
                       image: 'assets/images/341-3415770_the-event-is-free-to-register-visit-http 1.png',
                       name: 'John Doe',
                     ),
                      ),
                      FlatButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WriterProfilePage()),
                          );
                        },
                        child:  UserProfileWidget(
                        image: 'assets/images/loah-profile 1.png',
                        name:'Amanda 	Davidson' ,
                      ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      FlatButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WriterProfilePage()),
                          );
                        },
                        child:UserProfileWidget(
                        image:'assets/images/unnamed (1) 1.png' ,
                        name: 'Sara Bill',
                      ),
                      ),
                      FlatButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WriterProfilePage()),
                          );
                        },
                        child:
                          UserProfileWidget(
                            image: 'assets/images/NICO_PROFILE_CIRCULAR_VERSION-300x300 1.png',
                            name: 'Victor	Ball',
                          ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WriterProfilePage()),
                          );
                        },
                        child: UserProfileWidget(
                          image: 'assets/images/unnamed 1.png',
                          name: 'Steven	Short',
                        ),
                      ),
                      FlatButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WriterProfilePage()),
                          );
                        },
                        child:
                          UserProfileWidget(
                            image: 'assets/images/images 1.png',
                            name:'Diane	Forsyth' ,
                          ),
                      ),
                    ],
                  ),
                ],
              )
         ),
    ),
      )
    );
  }
}
