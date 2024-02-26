import 'package:flutter/material.dart';
import 'package:reusable_flutter_snippets/Themes/themes.dart';
import 'package:reusable_flutter_snippets/url_launcher_snippets.dart';
import 'global_variables.dart' as globals;
import 'feedback_collection_dialog.dart';

// Just a container materialapp with a scaffold homepage to act as base for
// other snippets in this repo

class BasicMaterialApp extends StatelessWidget {
  const BasicMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Snippets',
      theme: theme1,
      home: MyContainerPage1(title: "Feedback dialog", ),
      // navigatorKey: globals.navigatorKey,
    );
  }
}

class MyContainerPage1 extends StatefulWidget {
  String title;
  MyContainerPage1({super.key, this.title=""});

  @override
  State<MyContainerPage1> createState() => _MyContainerPage1State();
}

class _MyContainerPage1State extends State<MyContainerPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      drawer: const Drawer(),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text('Open feedback form'),
            onPressed: () {
              showDialog(
                  context:  context,  //globals.navigatorKey.currentContext!,
                  builder:(context) => const FeedbackDialog());
            },
          ),
          ElevatedButton(onPressed: launchMailApp, child: Text("Launch mail"))
        ],
      )
    );
  }


}
