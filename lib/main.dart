import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Screen',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.black),
        primaryColor: Colors.black,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('images/person.jpg'),
              radius: 20,
            ),
            Text('   Person'),
          ],
        ),

        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          const Icon(Icons.call),
          const Icon(Icons.more_vert)
        ],
        //title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(32),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/background.png'))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 1, 1),
            child: const CircleAvatar(
              backgroundImage: AssetImage('images/person1.jpg'),
              radius: 40,
            ),
          ),
          Container(
            alignment: AlignmentDirectional.topEnd,
            padding: const EdgeInsets.fromLTRB(20, 150, 20, 30),
            child: const CircleAvatar(
              backgroundImage: AssetImage('images/person2.jpg'),
              radius: 40,
            ),
          ),
          Container(
            padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 80, 10),
            alignment: AlignmentDirectional.bottomStart,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  suffixIcon:
                      const Icon(Icons.attach_file, color: Colors.white),
                  prefixIcon: const Icon(Icons.emoji_emotions_outlined,
                      color: Colors.white),
                  hintText: 'Type A Massage',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  )),
            ),
          ),
          Container(
            alignment: AlignmentDirectional.topCenter,
            padding: const EdgeInsetsDirectional.fromSTEB(120, 45, 20, 1),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: 'This My First Massage',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  )),
            ),
          ),
          Container(
            alignment: AlignmentDirectional.topCenter,
            padding: const EdgeInsetsDirectional.fromSTEB(20, 160, 110, 40),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: 'This My Second Massage',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  )),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Record',
        elevation: 1,
        backgroundColor: Colors.black,
        child: const Icon(Icons.mic_none),
      ),
    );
  }
}
