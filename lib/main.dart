import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  final List _names = ['Estefania Rodriguez Rodriguez','Miguel Angel', 'Marlon', 'Edwin', 'Alejandro', 'Victor'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contacts'),
        ),
        body: Container(
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(                  
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  _details(),
                    ),
                ),
                
                Container(
                  padding: EdgeInsets.all(30.0),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _contacts(),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(50.0),
                  alignment: Alignment.bottomCenter,
                  child:_buttons(),
                )                
              ],
            ),
        ),
      ),
    );
  }

  List<Widget> _details(){
    List<Widget> lst = [];
    lst.add(ListTile(
              title: Text(_names[0], style: TextStyle(fontSize: 20.0),),
              leading: _avatar()
              )
            );
    lst.add(ListTile(
              title: Text('89273572682', style: TextStyle(fontSize: 15.0),),
              leading: Icon(Icons.file_present, size: 25.0,)
              )
            );
            return lst;
  }

  List<Widget> _contacts(){

    List<Widget> lst = [];

    for(var i=1; i <_names.length-1; i++){
      final widget =ListTile(
              title: Text(_names[i]),
              subtitle: Text('12345678'),
              leading: Icon(Icons.call, color: Colors.black),
              trailing: Icon(Icons.arrow_forward_ios_rounded)
              );

      lst.add(widget);
    }

    return lst;
  }

  Widget _buttons(){

      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[

          FloatingActionButton(
            child: Icon(Icons.arrow_circle_up_rounded ),
            backgroundColor: Colors.green[500],
            onPressed: (){
            },
          ),

          SizedBox(width: 10.0,),

          FloatingActionButton(
            child: Icon(Icons.arrow_circle_up_rounded ),
            backgroundColor: Colors.green[500],
            onPressed: (){
            },
          ),

          SizedBox(width: 10.0,),

          FloatingActionButton(
            child: Icon(Icons.arrow_circle_up_rounded, size: 30.0,),
            backgroundColor: Colors.green[500],
            onPressed: (){
            
            },
          ),

        ],
      );
  }

  Widget _avatar(){
    return CircleAvatar(
      backgroundImage: NetworkImage('https://image.freepik.com/vector-gratis/icono-perfil-personas_24877-40761.jpg'),
      radius: 40.0,
    );
  }
}   