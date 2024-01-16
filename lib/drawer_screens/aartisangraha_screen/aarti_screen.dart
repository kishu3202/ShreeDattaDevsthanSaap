import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shree_datta_devsthan_saap/drawer_screens/aartisangraha_screen/dattatray_aarti_screen.dart';
import 'package:shree_datta_devsthan_saap/drawer_screens/aartisangraha_screen/devi_aarti_screen.dart';
import 'package:shree_datta_devsthan_saap/drawer_screens/aartisangraha_screen/ganpati_aarti_screen.dart';
import 'package:shree_datta_devsthan_saap/drawer_screens/aartisangraha_screen/jayjaykar_screen.dart';
import 'package:shree_datta_devsthan_saap/drawer_screens/aartisangraha_screen/prarthana_screen.dart';

class AartiScreen extends StatefulWidget {
  const AartiScreen({super.key});

  @override
  State<AartiScreen> createState() => _AartiScreenState();
}

class _AartiScreenState extends State<AartiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('आरती संग्रह'),
      centerTitle: true,),
      body: Column(
        children: [
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
                            builder: (context) => GanpatiAartiScreen(
                            )));
                  },
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Ink.image(image: AssetImage('assets/images/ganapti.jpg'),
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(width: 30,),

                      Center(
                        child: const Text(
                          "श्री गणपतीची आरती",
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
                            builder: (context) => DevichiAartiScreen(
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
                          "श्री देवीची आरती",
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
                            builder: (context) => DattaguruArtiScreen(
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
                      const Text(
                        "श्री दत्तात्रेयांची आरती",
                        style: TextStyle(
                          color: Colors.orange, // Set the text color
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Container(height: 80,
          //     width: MediaQuery.of(context).size.width,
          //     child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //             primary: Colors.white,
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(10),
          //             )),
          //         onPressed: () {
          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => JagtvyandDigambarScreen(
          //                   )));
          //         },
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           children: [
          //             Ink.image(image: AssetImage('assets/images/dattguru.jpg'),
          //               height: 70,
          //               width: 70,
          //             ),
          //             SizedBox(width: 30,),
          //             Center(
          //               child: const Text(
          //                 "श्री मारुतीची आरती",
          //                 style: TextStyle(
          //                   color: Colors.orange, // Set the text color
          //                   fontSize: 18,
          //                 ),
          //               ),
          //             ),
          //           ],
          //         )),
          //   ),
          // ),
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
                            builder: (context) => PrarthanaScreen(
                            )));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Ink.image(image: AssetImage('assets/images/prarthana.jpg'),
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(width: 30,),
                      Center(
                        child: const Text(
                          "प्रार्थना",
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
                            builder: (context) => JayJayKarScreen(
                            )));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Ink.image(image: AssetImage('assets/images/nrusinhmaharaj.jpg'),
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(width: 30,),
                      Center(
                        child: const Text(
                          "जयजयकार",
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
