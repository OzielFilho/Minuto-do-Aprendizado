import 'dart:math';

import 'package:flutter/material.dart';
import 'package:minutodoaprendizado/utils/listUtils/personList.dart';
import 'package:minutodoaprendizado/utils/theme/themes.dart';

class ChatPage extends StatefulWidget {
  static final String id = 'chat_page_id';
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(15.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Professores disponíveis',
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    print('CHAT PROFESSOR - ${index + 1}');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        CircleAvatar(
                            minRadius: 25,
                            backgroundColor: Colors.transparent,
                            backgroundImage: random != null
                                ? NetworkImage(
                                    personList[random.nextInt(4)],
                                  )
                                : Container()),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Conversas',
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 15,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    print('CHAT PAGE - ${index + 1}');
                  },
                  child: Card(
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
                                    random != null
                                ? NetworkImage(
                                    personList[random.nextInt(4)],
                                  )
                                : Container()),
                              
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
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
