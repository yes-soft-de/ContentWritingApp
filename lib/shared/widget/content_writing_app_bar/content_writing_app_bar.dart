import 'package:contentwritingapp/shared/widget/image_icon/image_icon.dart';
import 'package:flutter/material.dart';

class ContentWritingAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;

  const ContentWritingAppBarWidget({this.appBar,this.title}):super();

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Color(0xff3FB8D3),
      centerTitle: true,
      title:Text(
        title,
        style: TextStyle(
            fontSize: 20.0,
            color:Color(0xff147C93),
            fontFamily: 'yesteryear',
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
      actions: <Widget>[

      ],
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: ImageAsIconWidget(
              img:'assets/icons/humberger.png',
              height: 20.0,
              width: 30.0,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),

    );
  }
}
