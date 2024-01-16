import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NityasevaScreen extends StatefulWidget {
  const NityasevaScreen({super.key});

  @override
  State<NityasevaScreen> createState() => _NityasevaScreenState();
}

class _NityasevaScreenState extends State<NityasevaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('नित्यसेवा'),centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
              child: Container(
                child: Image(image:AssetImage('assets/images/kary&seva.jpeg') ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
