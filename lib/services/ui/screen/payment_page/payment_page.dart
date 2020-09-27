import 'package:contentwritingapp/shared/widget/app_drawer/app_drawer.dart';
import 'package:contentwritingapp/shared/widget/content_writing_app_bar/content_writing_app_bar.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return getPageLayout();
  }
  Widget getPageLayout(){
    return Scaffold(
      appBar: ContentWritingAppBarWidget(
        appBar: AppBar(),
        title: 'Payment',
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
          child:    Stack(
            children: [
              Container(
                margin: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                padding: EdgeInsetsDirectional.fromSTEB(10, 100, 10, 20),
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
                     height: 10,
                   ),
                   Text(
                     'jhonbill99@webmail.com',
                     style: TextStyle(
                       color: Color(0xff065061),
                     ),
                   ),
                   SizedBox(
                     height: 30,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         'This Service Coast ',
                         style: TextStyle(
                           color: Color(0xff3D646C),
                           fontSize: 12,
                         ),
                       ),
                       Text(
                         '120\$',
                         style: TextStyle(
                           color: Color(0xff3D646C),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Text(
                     'Please inter your card holder name',
                     style: TextStyle(
                       color: Color(0xff3D646C),
                       fontSize: 10,
                     ),
                   ),
                   TextField(

                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Text(
                     'Card number',
                     style: TextStyle(
                       color: Color(0xff3D646C),
                       fontSize: 10,
                     ),
                   ),
                   TextField(
                     decoration: InputDecoration(
                         border: new UnderlineInputBorder(
                             borderSide: new BorderSide(
                                 color: Colors.red
                             )
                         )

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
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => PaymentPage()),
                         );
                       },

                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Text(
                             'Pay Now',
                             style: TextStyle(
                               color: Color(0xffFFFFFF),
                             ),
                           ),
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
          )
        ),
      ),
    );
  }
}
