import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/widgets/my_appBar.dart';

class PostPage extends StatefulWidget {
  static final routeName= "posts";
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            MyAppBar(iconColor: Colors.black,
                barTitle: "Posts",
                isDotVisible:true,
              leftIcon: Icon(Icons.arrow_back,color: Colors.black,
              ),
              onLeftClick:()=>Navigator.pop(context),
              rightIcon: Icon(Icons.message,color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ),);
  }
}
