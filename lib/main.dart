import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  Widget main(){

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/logo.png"),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            DateFormat('MMMMd').format(DateTime.now()).toString()+"th",
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextButton(

                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(0)),

                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.red),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            side: BorderSide(color: Colors.grey)))),
                child: const Text(
                  "Espanol",
                  style: TextStyle(color: Colors.black,),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Oliver Eielson",
            style: TextStyle(fontSize: 20, ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Cleared",
            style: TextStyle(fontSize: 20, ),
          ),
        ),

        const Center(child: Icon(CupertinoIcons.check_mark_circled_solid,color: CupertinoColors.activeGreen,size: 320,)),
        Padding(
          padding: const EdgeInsets.fromLTRB(10,0,10,20),
          child: Row(

            children: [

              TextButton(

                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(0)),

                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.red),
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            side: BorderSide(color: Colors.grey)))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text(
                        "Retake Daily Screening Survey",
                        style: TextStyle(color: Colors.black,),
                      ),
                      Icon(Icons.chevron_right,color: Colors.black,)
                    ],
                  ),
                ),
                onPressed: () {},
              ),
              Spacer()

            ],

          ),
        )
      ],


    );


  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Colors.white38.withOpacity(0.9),
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          leading: Container(
            child: Row(
              children: const [Icon(Icons.chevron_left), Text("Back")],
            ),
          ),

          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(CupertinoIcons.person_alt),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(CupertinoIcons.bars),
            )
          ],

          backgroundColor: CupertinoColors.darkBackgroundGray,
          automaticallyImplyLeading: true,
          leadingWidth: 70,

          title: Text("Student,Faculty,Staff"),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                color: Color.fromRGBO(247, 247, 247, 1),
                child: main()
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
              child: Text("©2021 Tufts Univeristy",style: TextStyle
                (fontSize: 11)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 0),
              child: Text("Tufts Mobil is desgined,developed and maintained by Tufts Technology Services (TTS)",style: TextStyle
                (fontSize: 11),),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
              child: Text("Powered By Modo",style: TextStyle
                (fontSize: 11,color: Colors.grey),),
            )
          ],
        ));
  }
}
