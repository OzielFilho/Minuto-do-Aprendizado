import 'package:flutter/material.dart';
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
      body: Container(
        
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Categorias',
              style: style1,
            ),
            Container(
              height: 250,
              
             
                
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => Container(
                    
                    width: 250,
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Center(
                          child: Text(
                        'Categoria ${index + 1}',
                        style: style1,
                      )),
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
