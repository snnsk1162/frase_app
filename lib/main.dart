import 'package:flutter/material.dart';
import 'package:frase_app/add_page.dart';
import 'package:frase_app/how_to_use.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frase App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color.fromRGBO(255, 252, 239, 1.0),
      ),
      home: MyHomePage(title: 'Frase Study!!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  String Genre = "日常";
  String Score = "3";
  String FraseContent = "フレーズを表示";
  String MemoContent = "メモを表示";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(246, 183, 183, 1.0),
        title: Text(widget.title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Color.fromRGBO(255, 252, 239, 1.0))),
        actions: <Widget>[
          IconButton(
              icon:Icon(Icons.help_outline,color:Color.fromRGBO(255, 252, 239, 1.0),),
              onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HowToUse()
                  ),
                );
              }
          )],
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

                        Text(FraseContent)
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
                        Text(MemoContent),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:25,bottom: 40),
              child: Container(
                width: 125,
                height: 50,
                child: RaisedButton(
                  color:Color.fromRGBO(246, 183, 183, 1.0),
                  shape: StadiumBorder(),
                  child: Text("Change",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color.fromRGBO(255, 252, 239, 1.0)),),
                  onPressed: () {
                    //ここにフレーズ更新の処理を書く
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(246, 183, 183, 1.0),
          child: Icon(Icons.add,color:Color.fromRGBO(255, 252, 239, 1.0),),
        onPressed:(){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddPage()
              ),
          );
        }
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
