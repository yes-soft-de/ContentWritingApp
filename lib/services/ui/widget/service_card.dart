import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String image;

  ServiceCard({this.title,this.image});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          width: 100,
          height: 85,
          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(37),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              gradient: LinearGradient(
                  colors: [Color(0xffFFFFFF), Color(0xff4EBDD6)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.15, 1])
          ),
          child: Container(

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),

            ),
            child: ClipOval(
              child: Image(

                image: AssetImage(image),

              ),
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 10,
            color: Color(0xff204F59),
          ),
        ),
      ],
    );
  }
}
