import 'package:contentwritingapp/authorization/ui/screen/login_page/login_page.dart';
import 'package:contentwritingapp/authorization/ui/screen/register_page/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:contentwritingapp/abstracts/module.dart';
import 'package:inject/inject.dart';


//class AuthorizationModule extends  Module {
//  static const ROUTE_LOGIN_PAGE = '/login';
//  static const ROUTE_REGISTER_PAGE = '/register';
//
//  final LoginPage _loginPage;
//  final RegisterPage _registerPage;
//  AuthorizationModule(this._loginPage,this._registerPage );
//
//  Map<String, WidgetBuilder> getRoutes() {
//    return {
//      ROUTE_LOGIN_PAGE: (context) => _loginPage,
//      ROUTE_REGISTER_PAGE: (context) => _registerPage
//    };
//  }
//}