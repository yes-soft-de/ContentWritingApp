
import 'package:contentwritingapp/about/ui/screen/about_page/about_page.dart';
import 'package:contentwritingapp/our_team/ui/screen/our_team_page/our_team_page.dart';
import 'package:contentwritingapp/profile/ui/screen/profile_page/profile_page.dart';
import 'package:contentwritingapp/services/ui/screen/services_page/srevices_page.dart';
import 'package:flutter/material.dart';

class AppDrawerWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.75,
      child: Drawer(

        child: Container(

          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff39B6D2), Color(0xff1F2E35)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.6, 1])),

          child: ListView(

            children: <Widget>[
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 75,
                      width: 75,
                      image: AssetImage('assets/icons/pen.png'),
                    ),


                  ],
                ),
              ),

              ListTile(
                title: Text('Content Writing',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff065061),
                    fontFamily: 'yesteryear',
                    fontSize: 20

                  ),
                ) ,
              ),


              FlatButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ServicesPage()),
                  );
                },
                child: ListTile(
                  title: Text("Services",
                  style: TextStyle(
                    color: Color(0xffC5F3FD),
                  ),
                  ),
                  trailing: Icon(
                    Icons.home,
                  color: Color(0xffC5F3FD),
                  ),
                ),
              ),
              FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OurTeamPage()),
                  );
                },
                child: ListTile(
                  title: Text("Our Team",
                    style: TextStyle(
                        color: Color(0xffC5F3FD),
                    ),
                  ),
                  trailing: Icon(
                      Icons.people,
                    color: Color(0xffC5F3FD),
                  ),
                ),
              ),
              FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutPage()),
                  );
                },
                child: ListTile(
                  title: Text("About",
                    style: TextStyle(
                      color: Color(0xffC5F3FD),
                    ),
                  ),
                  trailing: Icon(
                    Icons.satellite,
                    color: Color(0xffC5F3FD),
                  ),
                ),
              ),
              FlatButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                child: ListTile(
                  title: Text("Profile",
                    style: TextStyle(
                      color: Color(0xffC5F3FD),
                    ),
                  ),
                  trailing: Icon(
                    Icons.person,
                    color: Color(0xffC5F3FD),
                  ),
                ),
              ),
//

            ],
          ),
        ),
      ),
    );
  }
}
