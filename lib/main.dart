import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pestaña Tabbar',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //My home page StatefullWidget

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.lightGreen,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15), // Creates border
                color: Colors.cyan), //Change background color from here
            tabs: [
              Tab(icon: Icon(Icons.headphones)),
              Tab(icon: Icon(Icons.cell_wifi)),
              Tab(icon: Icon(Icons.computer)),
              Tab(icon: Icon(Icons.tv)),
            ],
          ),
          centerTitle: true,
          title: Text('Papeleria'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.headphones, size: 350),
            Icon(Icons.cell_wifi, size: 350),
            Icon(Icons.computer, size: 350),
            Icon(Icons.tv, size: 350),
          ],
        ),
      ),
    );
  } //  Widget
} // _MyHomePageState
