import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'images/einstein.jpg',
              height: 300,
              width: 300,
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
            thickness: 2,
          ),
          Container(
            color: Colors.blueGrey,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            child: const Center(
              child: Text(
                'This is a text widget',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isSwitched ? Colors.green : Colors.blue,
            ),
            onPressed: () {
              debugPrint('Elevated Button');
            },
            child: const Text('Elevated Button'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('Outlined Button');
            },
            child: const Text('Outlined Button'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('Text Button');
            },
            child: const Text('Text Button'),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('This is the row');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.blue,
                ),
                Text('Row widget'),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Switch(
            value: isSwitched,
            onChanged: (bool changed) {
              setState(() {
                isSwitched = changed;
              });
            },
          ),
        ],
      ),
    );
  }
}
