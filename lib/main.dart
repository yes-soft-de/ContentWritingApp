import 'package:contentwritingapp/about/ui/screen/about_page/about_page.dart';
import 'package:contentwritingapp/authorization/ui/screen/register_page/register_page.dart';
import 'package:inject/inject.dart';
import 'di/app.component.dart';
import 'file:///D:/YesSoft%20projects/Content%20Writing%20app/content_writing_app/lib/our_team/ui/screen/our_team_page/our_team_page.dart';
import 'file:///D:/YesSoft%20projects/Content%20Writing%20app/content_writing_app/lib/services/ui/screen/services_page/srevices_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'authorization/ui/screen/login_page/login_page.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) async {
    final container = await AppComponent.create();
    runApp(container.app);
  });
}

@provide
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  LoginPage( ),
    );
  }
}

