import 'package:contentwritingapp/services/ui/screen/payment_page/payment_page.dart';
import 'package:contentwritingapp/shared/widget/app_drawer/app_drawer.dart';
import 'package:contentwritingapp/shared/widget/content_writing_app_bar/content_writing_app_bar.dart';
import 'package:flutter/material.dart';
class SubjectPage extends StatefulWidget {
  @override
  _SubjectPageState createState() => _SubjectPageState();
}

class _SubjectPageState extends State<SubjectPage> {
  @override
  Widget build(BuildContext context) {
    return getPageLayout();
  }
  Widget getPageLayout(){
    return Scaffold(
        appBar: ContentWritingAppBarWidget(
          appBar: AppBar(),
          title: 'Subject',
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

              'Fill the Subject that you want our experts to write about',
              style: TextStyle(
                  fontFamily: 'yesteryear',
                  fontSize: 20,
                  color: Color(0xff065061)
              ),
              textAlign: TextAlign.center,
            ),
          ),
                Text(

                  'The Subject :',
                  style: TextStyle(
                      fontFamily: 'yesteryear',
                      fontSize: 25,
                      color: Color(0xff065061)
                  ),
                  textAlign: TextAlign.start,
                ),
                //services
                Container(
                    margin: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
                    decoration: BoxDecoration(
                       
                        color: Colors.white10
                    ),
                    width: MediaQuery.of(context).size.width*0.78,
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                    ),
                ),

                Container(
                  width: MediaQuery.of(context).size.width*0.55,
                  margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: FlatButton(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                    color: Color(0xff368B97),
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
                          'Submit',
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
