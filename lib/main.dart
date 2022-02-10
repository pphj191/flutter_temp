import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _idx = 0;
  void _incrementCounter() {
    setState(() {

    });
  }
  @override
  void initState(){
    super.initState();
    _idx = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: AppBar(),
        preferredSize: Size.fromHeight(0),
      ),
      body: Column(
        children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx){
              return MyHomePage(title: "새로운 페이지에요!");
            })
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "통화",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: "연락처",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "내번호",
          )
        ],
        onTap: (index){
          setState((){
            _idx = index;
          });
          print(index);
        },
        currentIndex: _idx,
      ),
    );
  }
}

