import 'package:flutter/material.dart';

class UserProfileWidget extends StatelessWidget {
  final String name;
  final String image;

  UserProfileWidget({this.image,this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white
          ),
          child: Image(
            image: AssetImage(image),
            width: 65,
            height: 65,
          ),
        ),
        Text(
        name,
          style: TextStyle(
            color: Color(0xff065061),
            fontSize: 8
          ),
        ),
      ],
    );
  }
}
