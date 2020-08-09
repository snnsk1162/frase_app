import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  String Genre = "日常";
  String Score = "35";
  String NewFrase;
  String NewMemo;

@override
Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(246, 183, 183, 1.0),
      title: Text("Add New Frase",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Color.fromRGBO(255, 252, 239, 1.0))),
    ),
    body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Genre:", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                  Text("日常", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Score:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                Text(Score,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text('Frase',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                Container(
                  color:Colors.white,
                  width: 275,
                  height: 125,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "フレーズを入力してください",
                        ),
                        onChanged: (text) {
                          NewFrase = text;
                          print(NewFrase);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text('Memo',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                Container(
                  color:Colors.white,
                  width: 275,
                  height: 125,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "メモを入力してください",
                        ),
                        onChanged: (text) {
                          NewMemo = text;
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:25,bottom: 40),
            child: Container(
              width: 100,
              height: 50,
              child: RaisedButton(
                color:Color.fromRGBO(246, 183, 183, 1.0),
                shape: StadiumBorder(),
                child: Text("Add",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color.fromRGBO(255, 252, 239, 1.0)),),
                onPressed: () {
                  return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        content: Container(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(Genre),
                                  Text(Score),
                                ],
                              ),
                              Text(NewFrase),
                              Text(NewMemo),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(246, 183, 183, 1.0),
        child: Icon(Icons.arrow_back,color:Color.fromRGBO(255, 252, 239, 1.0),),
        onPressed:(){
          Navigator.pop(context);
        }
    ), // This trailing comma makes auto-formatting nicer for build methods.
  );
}
}
