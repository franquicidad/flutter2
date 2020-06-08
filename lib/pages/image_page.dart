import 'package:flutter/material.dart';
import 'package:flutter2/widgets/my_appBar.dart';

class ImagePageArgs {
  final String username;
  final bool isActive;

  ImagePageArgs({@required this.username,@required this.isActive});
}

class ImagesPage extends StatefulWidget {

  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {

  @override
  Widget build(BuildContext context) {

    final ImagePageArgs args=ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              MyAppBar(
                barTitle: "Images",
                iconColor: Colors.black,
                isDotVisible: false,
                barTitleColor: Colors.redAccent,
                leftIcon: Icon(Icons.keyboard_backspace,color: Colors.black,),
                rightIcon: Icon(Icons.camera,color:Colors.black),
                onLeftClick: ()=>
                    Navigator.pop(context)
                ,
              ),
              Expanded(child:
              Center(
                child:
                Text(args.username,style:
                TextStyle(color: Colors.blue,
                    fontSize: 22 ,
                    letterSpacing: 1,
                    fontWeight:
                    FontWeight.w600),
                ),
              ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
