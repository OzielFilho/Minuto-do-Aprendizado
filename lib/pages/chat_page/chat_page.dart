import 'package:flutter/material.dart';
import 'package:minutodoaprendizado/utils/theme/themes.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: 50,
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.contain,
                      )),
                  SizedBox(width: 50,),
                  Column(
                    
                    children: <Widget>[
                      Text('User ${index + 1}'),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Olá,qual sua dúvida?',
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
