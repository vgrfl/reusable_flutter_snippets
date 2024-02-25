import 'package:flutter/material.dart';
import 'package:reusable_flutter_snippets/Themes/themes.dart';


// Just a container materialapp with a scaffold homepage to act as base for
// other snippets in this repo

class BasicMaterialApp extends StatelessWidget {
  const BasicMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Snippets',
      theme: theme1,
      home: MyContainerPage1(),
    );
  }
}

class MyContainerPage1 extends StatefulWidget {
  Widget child;

  String title;

   MyContainerPage1({super.key, this.child=const Placeholder(), this.title=""});

  @override
  State<MyContainerPage1> createState() => _MyContainerPage1State();
}

class _MyContainerPage1State extends State<MyContainerPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      drawer: const Drawer(),
      body: widget.child
    );
  }
}
