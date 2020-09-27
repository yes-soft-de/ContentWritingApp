import 'package:contentwritingapp/authorization/ui/screen/register_page/register_page.dart';
import 'package:contentwritingapp/authorization/ui/widget/logo_widget/logo.dart';
import 'package:contentwritingapp/services/services_module.dart';
import 'file:///D:/YesSoft%20projects/Content%20Writing%20app/content_writing_app/lib/services/ui/screen/services_page/srevices_page.dart';
import 'package:flutter/material.dart';

import '../../../authorization_module.dart';
import 'package:inject/inject.dart';


class LoginPage extends StatefulWidget {
  final String tag = "LoginPage";

  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _autoValidate = false;

  String _userName;
  String _password;

  bool _buttonsDisabled = false;
  bool authError = false;

  @override
  Widget build(BuildContext context) {
//    widget._loginPageBloc.loginStateObservable.listen((stateChanged) {
//      // This can be used to calculate how many times the page refreshes
//      widget._logger.info(widget.tag, "State Changed");
//      currentState = stateChanged.first;
//      // We Could use a message generated from a bloc with stateChanged.second
//      setState(() {});
//    });
//
//    if (currentState == LoginPageBloc.STATUS_CODE_AUTH_SUCCESS) {
//      // TODO: Move to Home using Navigator
//      widget._logger.info(widget.tag, "AUTH SUCCESS");
//      Future.delayed(Duration(milliseconds: 100), () {
//        Navigator.pushReplacementNamed(context, HomeModule.ROUTE_HOME);
//      });
//    }
//
//    if (currentState == LoginPageBloc.STATUS_CODE_AUTH_ERROR) {
//      _buttonsDisabled = false;
//      widget._logger.info(widget.tag, "AUTH Error");
//      return getPageLayout();
//    }
//
//    if (currentState == LoginPageBloc.STATUS_CODE_CREDENTIALS_SENT) {
//      // TODO: Stop submitting more requests until we get a response
//      widget._logger.info(widget.tag, "Sending Login Request");
//      _buttonsDisabled = true;
//      return getPageLayout();
//    }
//
//    if (currentState == LoginPageBloc.STATUS_CODE_INIT) {
//      // RECOMMENDATION: Stick to more general coding style, where we return at the end
//      widget._logger.info(widget.tag, "Login Page Started");
//      _buttonsDisabled = false;
//      return getPageLayout();
//    }
//
//    // Undefined State
//    widget._logger.error(widget.tag, "Undefined State");
//
//    _buttonsDisabled = true;
    return getPageLayout();
  }

  // Always Return a Scaffold from a screen, consistency is the key here
  Widget getPageLayout() {
    // Build Based on Current State :)
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0, 10.0, 0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffB4ACAC), Color(0xff2CB2CF)],
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                stops: [0.15, 1])),
        child: SafeArea(
          child: SingleChildScrollView(
            child: new Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  LogoWidget(),
                  Text(
                    'We Express You !',
                    style: TextStyle(
                      color: Color(0xff2DA5BF),
                      fontSize: 25,
                      fontFamily:'yesteryear',
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 3.0),
                          blurRadius: 1.0,
                          color: Colors.grey,
                        ),
//
                      ],
                    ),
                  ),

                 Container(
                   padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                   child:  new TextFormField(
                     controller: _usernameController,
                     decoration: InputDecoration(
                         labelText: 'User Name',
                         labelStyle: TextStyle(
                             fontSize:  12
                         ),
                         icon: Tab(
                           icon: Container(
                             child: Image(
                               image: AssetImage('assets/icons/person.png'),
                               fit: BoxFit.cover,
                             ),
                             height: 30,
                             width: 25,
                           ),
                         )),
                     keyboardType: TextInputType.text,
                     validator: (username) => _validateName(username),
                   ),
                 ),
                  Container(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child:new TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                fontSize:  12
                            ),
                            suffixIcon:Tab(
                              icon: Container(
                                child: Image(
                                  image: AssetImage('assets/icons/Eye (closed).png'),
                                  fit: BoxFit.cover,
                                ),
                                height: 10,
                                width: 25,
                              ),
                            ) ,
                            icon: Tab(
                              icon: Container(
                                child: Image(
                                  image: AssetImage('assets/icons/password.png'),
                                  fit: BoxFit.cover,
                                ),
                                height: 30,
                                width: 20,
                              ),
                            )
                        ),

                        keyboardType: TextInputType.visiblePassword,
                        validator: (password) => _validatePassword(password),
                      )
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.55,
                    margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                    child: FlatButton(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 15),

                      onPressed: /*(){  Navigator.pushReplacementNamed(context, HomeModule.ROUTE_HOME);},*/

                      _buttonsDisabled
                          ? null
                          : () => /*_validateInputsAndLogin()*/ login(),
                      color: Color(0xff368B97),
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            // This needs to translate, but Later, the dependency is installed
                            'Login',
                            style: TextStyle(
                              color: Color(0xffC5F3FD),
                            ),
                          ),

                        ],
                      ),
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
                          MaterialPageRoute(builder: (context) => RegisterPage()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Register',
                            style: TextStyle(
                              color: Color(0xffC5F3FD),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                Container(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 20, 20),
                  child:   Text(
                    'Or Login With:',
                    style: TextStyle(
                      color: Color(0xff214047),

                    ),
                  ),
                ),
                  Container(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage(
                          'assets/icons/u_facebook.png'
                        ),
                          width: 30,
                          height: 30,
                        ),
                        Image(image: AssetImage(
                            'assets/icons/Gmail logo.png'
                        ),
                          width: 30,
                          height: 30,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _validateName(String value) {
    if (value.length < 1)
      return 'Name can\'t be empty ';
    else
      return null;
  }

  String _validatePassword(String value) {
    if (value.length < 1)
      return 'Password can\'t be empty ';
    else
      return null;
  }

  void login() {
    if (_formKey.currentState.validate()) {

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ServicesPage()),
      );

//      widget._loginPageBloc.login('MickSawy3r12', '123456789');
    }
  }
}
