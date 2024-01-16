import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MahaKaliAbhishekScreen extends StatefulWidget {
  const MahaKaliAbhishekScreen({super.key});

  @override
  State<MahaKaliAbhishekScreen> createState() => _MahaKaliAbhishekScreenState();
}

class _MahaKaliAbhishekScreenState extends State<MahaKaliAbhishekScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("श्री कालिका माता अभिषेक सेवा"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
              child: Container(
                child: Image(image:AssetImage('assets/images/kalikamataAbhishek.jpeg') ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
