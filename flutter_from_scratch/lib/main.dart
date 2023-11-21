import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My Own App",
        theme: ThemeData(primarySwatch: Colors.purple),
        home: const YourWidget(title: "My Snatch App"));
  }
}

class YourWidget extends StatefulWidget {
  const YourWidget({super.key, required this.title});

  final String title;

  @override
  State<YourWidget> createState() => _YourWidgetState();
}

class _YourWidgetState extends State<YourWidget> {
  String theValue = "";
  String copyValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: [
          const Text("Skriv noget"),
          TextField(
            onChanged: (String value) {
              theValue = value;
            },
          ),
          const Text("Her kommer det"),
          Text(copyValue),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              copyValue = theValue;
            });
          },
          child: const Icon(Icons.add)),
    );
  }
}
