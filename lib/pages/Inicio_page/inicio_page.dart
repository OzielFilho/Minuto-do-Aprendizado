import 'package:flutter/material.dart';
import 'package:minutodoaprendizado/utils/listUtils/categList.dart';
import 'package:minutodoaprendizado/utils/theme/themes.dart';

class InicioPage extends StatefulWidget {
  static final String id = 'inicio_page_id';
  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
            
            // mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Categorias',
                style: style1,
              ),
              Container(
                
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: categoList.length,
                  itemBuilder: (BuildContext context, int index) => Container(
                    width: 250,
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        print('clicou');
                      },
                      child: Card(
                        shadowColor: Colors.grey,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              categoList[index],
                              style: style1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
      ),
      
      // child: ListView(
      //   children: [
      //     Text('Categorias'),
      //     // SizedBox(
      //     //   height: 20,
      //     // ),

      //   ],
    );
  }
}
