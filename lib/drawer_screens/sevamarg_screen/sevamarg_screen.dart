import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shree_datta_devsthan_saap/drawer_screens/sevamarg_screen/dattaMaharjAbhishek_screen.dart';
import 'package:shree_datta_devsthan_saap/drawer_screens/sevamarg_screen/mahakaliMataAbhishek_screen.dart';

class SevaMargScreen extends StatefulWidget {
  const SevaMargScreen({super.key});

  @override
  State<SevaMargScreen> createState() => _SevaMargScreenState();
}

class _SevaMargScreenState extends State<SevaMargScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('सेवामार्ग'),centerTitle: true,),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Container(height: 80,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DattaMaharajAbhishekScreen(
                            )));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Ink.image(image: AssetImage('assets/images/dattguru.jpg'),
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(width: 30,),

                      Center(
                        child: const Text(
                          "श्री दत्त महाराज अभिषेक सेवा",
                          style: TextStyle(
                            color: Colors.orange, // Set the text color
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(height: 80,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MahaKaliAbhishekScreen(
                            )));
                  },

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Ink.image(image: AssetImage('assets/images/mahakali_devi.jpg'),
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(width: 30,),
                      Center(
                        child: const Text(
                          "श्री कालिका माता अभिषेक सेवा",
                          style: TextStyle(
                            color: Colors.orange, // Set the text color
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
