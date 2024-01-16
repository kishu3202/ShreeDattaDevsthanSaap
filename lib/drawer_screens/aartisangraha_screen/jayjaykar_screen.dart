import 'package:flutter/material.dart';
import 'package:shree_datta_devsthan_saap/drawer_screens/aartisangraha_screen/prarthana_screen.dart';

class JayJayKarScreen extends StatefulWidget {
  const JayJayKarScreen({super.key});

  @override
  State<JayJayKarScreen> createState() => _JayJayKarScreenState();
}

class _JayJayKarScreenState extends State<JayJayKarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("आरती संग्रह"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    IconButton(onPressed: (){
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PrarthanaScreen(
                              )));
                    }, icon: Icon(Icons.keyboard_double_arrow_left), color: Colors.white,iconSize: 30),
                    SizedBox(width: 90,),
                    Text("जयजयकार", style: TextStyle(fontSize: 18, color: Colors.white)),
                    SizedBox(width: 80,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_double_arrow_right), color: Colors.white,iconSize: 30)
                  ],
                ),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.yellowAccent.shade400.withOpacity(0.9), Colors.orangeAccent.shade400.withOpacity(0.9)], // Define your two colors here
                  begin: Alignment.topLeft, // Adjust the gradient's start and end points as needed
                  end: Alignment.bottomRight,),
                  borderRadius: BorderRadius.circular(10),

                ),
              ),
            ],
          ),
        )
    );
  }
}
