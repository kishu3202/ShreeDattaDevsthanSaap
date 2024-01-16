import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DattaMaharajAbhishekScreen extends StatefulWidget {
  const DattaMaharajAbhishekScreen({super.key});

  @override
  State<DattaMaharajAbhishekScreen> createState() => _DattaMaharajAbhishekScreenState();
}

class _DattaMaharajAbhishekScreenState extends State<DattaMaharajAbhishekScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("श्री दत्त महाराज अभिषेक सेवा"),),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Image(image:AssetImage('assets/images/dattaMaharajAbhishek.jpeg') ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Image(image:AssetImage('assets/images/dattaMaharajAbhishek2.jpeg') ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
