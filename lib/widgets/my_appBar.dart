import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2/pages/chat_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CupertinoButton(
            padding: EdgeInsets.all(15),
              child:Icon(Icons.camera,color: Colors.black,size: 30,),
              onPressed: (){}
              ),
          Text("First App",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
          ),
          CupertinoButton(
              padding: EdgeInsets.all(15),
              child:
              Stack(
                children: <Widget>[
                  Icon(
                      Icons.message,
                      color: Colors.black,
                      size: 30
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child:
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(color: Colors.red,shape: BoxShape.circle),

                    ),
                  ),
                ],
              ),
              onPressed: (){final route= MaterialPageRoute(builder:(BuildContext _ ){
                return ChatPage();
              });
              Navigator.push(context, route);}
          ),

        ]
      ),
    );
  }

}