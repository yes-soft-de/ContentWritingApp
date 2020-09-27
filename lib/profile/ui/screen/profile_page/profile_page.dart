import 'package:contentwritingapp/shared/widget/app_drawer/app_drawer.dart';
import 'package:contentwritingapp/shared/widget/content_writing_app_bar/content_writing_app_bar.dart';
import 'package:flutter/material.dart';

class  ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State< ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return getPageLayout();
  }
  Widget getPageLayout(){
    return Scaffold(
      appBar: ContentWritingAppBarWidget(
        appBar: AppBar(),
        title: 'My Profile',
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
            child:  Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                      padding: EdgeInsetsDirectional.fromSTEB(10, 80, 10, 20),
                      decoration: BoxDecoration(

                          color: Colors.white10
                      ),
                      width: MediaQuery.of(context).size.width ,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [

                          Text(
                            'Jhon Bill',
                            style: TextStyle(
                              color: Color(0xff065061),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'jhonbill99@webmail.com',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff7D7373),
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width*0.55,
                            margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                            child: FlatButton(
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                              color: Color(0xff0097D3),
                              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                              onPressed: () {
//                        Navigator.pushNamed(
//                            context, AuthorizationModule.ROUTE_REGISTER_PAGE);
//                                Navigator.push(
//                                  context,
//                                  MaterialPageRoute(builder: (context) => PaymentPage()),
//                                );
                              },

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Change Password',
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 10
                                    ),
                                  ),
                                  Icon(
                                      Icons.lock,
                                  color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Align(
                        alignment: Alignment.topCenter,
                        child:Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white
                          ),
                          child: Image(
                            image: AssetImage('assets/images/profile img 2.png'),
                            width: 75,
                            height: 75,
                          ),
                        )
                    ),
//
                  ],
                ),
                Container(
                  margin: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 20),
                  decoration: BoxDecoration(

                      color: Colors.white10
                  ),
                  width: MediaQuery.of(context).size.width ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      //  assets/icons/Ellipse 12.png

                      Text(
                        'History:',
                        style: TextStyle(
                            color: Color(0xff065061),
                            fontSize: 17
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/icons/Ellipse 12.png'),
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'SomeWebsite',
                            style: TextStyle(
                                color: Color(0xff065061),
                                decoration: TextDecoration.underline
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/icons/Ellipse 12.png'),
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'SomeWebsite',
                            style: TextStyle(
                                color: Color(0xff065061),
                                decoration: TextDecoration.underline
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/icons/Ellipse 12.png'),
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'SomeWebsite',
                            style: TextStyle(
                                color: Color(0xff065061),
                                decoration: TextDecoration.underline
                            ),
                          ),
                        ],
                      ),


                    ],
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
