import 'package:contentwritingapp/authorization/ui/widget/logo_widget/logo.dart';
import 'file:///D:/YesSoft%20projects/Content%20Writing%20app/content_writing_app/lib/services/ui/screen/services_page/srevices_page.dart';
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';



class RegisterPage extends StatefulWidget {
  final String tag = "LoginPage";


  @override
  State<StatefulWidget> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  bool _autoValidate = false;

  int _radioValue = 0;

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
                stops: [0.15, 1])
        ),
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
//                        Shadow(
//                          offset: Offset(10.0, 10.0),
//                          blurRadius: 8.0,
//                          color: Color.fromARGB(125, 0, 0, 255),
//                        ),
                      ],
                    ),
                  ),
                  //user name field
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
                  //email field
                  Container(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child:new TextFormField(
                        controller: _emailController,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                fontSize:  12
                            ),

                            icon: Tab(
                              icon: Container(
                                child: Image(
                                  image: AssetImage('assets/icons/email.png'),
                                  fit: BoxFit.cover,
                                ),
                                height: 30,
                                width: 25,
                              ),
                            )
                        ),

                        keyboardType: TextInputType.emailAddress,
                        validator: (email) => _validateEmail(email),
                      )
                  ),

                  SizedBox(height: 30,),
                  //password field
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
                                width: 20,
                              ),
                            ) ,
                            icon: Tab(
                              icon: Container(
                                child: Image(
                                  image: AssetImage('assets/icons/password.png'),
                                  fit: BoxFit.cover,
                                ),
                                height: 30,
                                width: 25,
                              ),
                            )
                        ),

                        keyboardType: TextInputType.visiblePassword,
                        validator: (password) => _validatePassword(password),
                      )
                  ),
                  //confirm password field
                  Container(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child:new TextFormField(
                        controller: _confirmPasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Confirm Password',
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
                                width: 20,
                              ),
                            ) ,
                            icon: Tab(
                              icon: Container(
                                child: Image(
                                  image: AssetImage('assets/icons/password.png'),
                                  fit: BoxFit.cover,
                                ),
                                height: 30,
                                width: 25,
                              ),
                            )
                        ),

                        keyboardType: TextInputType.visiblePassword,
                        validator: (confirmPassword) => _validateConfirmPassword(confirmPassword),
                      )
                  ),

                  SizedBox(height: 30,),
                  //sex radio button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text(
                          'sex:',
                      textAlign: TextAlign.start,
                        style:   TextStyle(
                          fontSize: 12.0,
                          color:  Color(0xff204F59)
                        )
                      ),
                      new Radio(
                        value: 0,
                        groupValue: _radioValue,
                        onChanged: _radioValue == 0 ? null : (int value) {
                          setState(() {
                            _radioValue = value;
                          });
                        },
                      ),
                      new Text(
                        'Male',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color:  Color(0xff204F59)
                          ,
                        ),
                      ),

                      SizedBox(width: 10,),
                      new Radio(
                        value: 1,
                        groupValue: _radioValue,
                        onChanged: _radioValue == 1 ? null : (int value) {
                          setState(() {
                            _radioValue = value;
                          });
                        },
                      ),
                      new Text(
                        'Female',
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: Color(0xff204F59)

                          ,
                        ),
                      ),

                    ],
                  ),
                  //submit button
                  Container(
                    width: MediaQuery.of(context).size.width*0.55,
                    margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
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
                            'Lest\'s Go',
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

  String _validateEmail(String value) {
    if (value.length < 1)
      return 'Email can\'t be empty ';
    else
      return null;
  }
  String _validateConfirmPassword(String value) {
    if (value.length < 1)
      return 'Confirm Paswword can\'t be empty ';
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
