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
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(20.0),
        children: [
          Text(
            'Professores disponíveis',
            style: style1,
          ),
          Container(
            height: 1,
            color: colorPrimary,
          ),
          SizedBox(height: 10,),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Card(
                  shadowColor: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('assets/images/logo.png'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Professor ${index + 1}'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10,),
          Text(
            'Conversas',
            style: style1,
          ),
          Container(
            height: 1,
            color: colorPrimary,
          ),
          SizedBox(height: 10,),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Card(
                  shadowColor: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/logo.png'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Professor ${index + 1}'),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Olá,qual a sua dúvida?'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
