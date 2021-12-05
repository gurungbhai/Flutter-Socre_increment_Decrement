import 'package:flutter/material.dart';

void main() {
  runApp(const ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({Key? key}) : super(key: key);

  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;

  void increaseNumber() {
    setState(() {
      number++;
    });
  }


  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.restore_outlined),
        onPressed: resetNumber,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const Center(
            child: Text(
              'Score is',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          Center(
            child: Text(
              number.toString(),
              style: TextStyle(
                fontSize: 85,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.blue,
                child: const Text(
                  'Increase',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: increaseNumber,
              ),
              const SizedBox(
                width: 10,
              ),
              RaisedButton(
                color: Colors.red,
                child: const Text(
                  'Decrease',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: decreaseNumber,
              ),
            ],
          )
        ],
      ),
    );
  }
}
