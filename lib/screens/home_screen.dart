import 'package:flutter/material.dart';
import 'package:shree_datta_devsthan_saap/drawer_screens/donation_screen.dart';
import 'package:shree_datta_devsthan_saap/drawer_screens/mantr_screen.dart';
import 'package:shree_datta_devsthan_saap/drawer_screens/nityaseva_screen.dart';
import 'package:shree_datta_devsthan_saap/drawer_screens/sevamarg_screen/sevamarg_screen.dart';
import 'package:shree_datta_devsthan_saap/drawer_screens/youtube_screen.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import '../drawer_screens/aartisangraha_screen/aarti_screen.dart';
import '../drawer_screens/contact_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    SingleChildScrollView(
      child:Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.yellowAccent.shade400.withOpacity(0.9), Colors.orangeAccent.shade400.withOpacity(0.9)], // Define your two colors here
            begin: Alignment.topLeft, /// Adjust the gradient's start and end points as needed
            end: Alignment.bottomRight,),),
          // width: MediaQuery.of(context).size.width,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: ScrollLoopAutoScroll(
                child: Text(
                  "|| दिगंबरा दिगंबरा श्रीपाद वल्लभ दिगंबरा ||",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                scrollDirection: Axis.horizontal,
                delay: Duration(seconds: 1),
                duration: Duration(seconds: 50),
                gap: 25,
                reverseScroll: false,
                duplicateChild: 25,
                enableScrollInput: true,
                delayAfterScrollInput: Duration(seconds: 1)),
          ),
        ),
      ),
    ),
    SingleChildScrollView(
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
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return await showDialog(
            context: context,
            builder: (context) =>AlertDialog(
              content: SizedBox(
                height: 150,
                child: Column(children: [
                  Row(children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: Image(image:AssetImage('assets/icon/dattaMaharaj.jpeg') ),),
                    SizedBox(width: 10,),
                    Text("श्री दत्त देवस्थान साप", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ]),
                  SizedBox(height: 30,),
                  Text("तुम्हाला खात्री आहे का तुम्ही एप्लिकेशनच्या बाहेर पडत आहात ?", style: TextStyle(fontSize: 18),),
                ],),
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: const Text('नाही', style: TextStyle(fontSize: 18),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: const Text('होय',style: TextStyle(fontSize: 18)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            )
        );
      },
      child: Scaffold(
      appBar: AppBar(
        // leading: IconButton(icon:Icon(Icons.menu), onPressed: (){},),
        title: Text("श्री दत्त देवस्थान साप"),
        centerTitle: true,
      // automaticallyImplyLeading: ,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
        IconButton(onPressed: (){
      showMessage(context, 'तुम्हाला खात्री आहे का तुम्ही एप्लिकेशनच्या बाहेर पडत आहात ?');
        }, icon: Icon(Icons.logout))
      ],
      ),
        drawer:Drawer(backgroundColor: Colors.deepOrangeAccent.shade200,
          child: ListView(
            children: [
              DrawerHeader(decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  ClipRRect(child: Image.asset("assets/images/nrusinhmaharaj.jpg", height: 120, width: 200,),
                    // borderRadius: BorderRadius.circular(30),
                    )
                ],
              ),
              ),
              Container(
                color: Colors.deepOrangeAccent.shade200,
                child: Column(children: [
                  InkWell(onTap: () {
                    Navigator.push(context,  MaterialPageRoute(
                        builder: (context) => HomeScreen()),);
                  },
                    child: ListTile(
                    leading: Icon(Icons.home, color: Colors.white,),
                    title: Text('Home',style: TextStyle(color: Colors.white,fontSize: 18),),
                ),
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context,  MaterialPageRoute(
                        builder: (context) => SevaMargScreen()),);
                  },
                    child: ListTile(
                      leading: Icon(Icons.temple_hindu, color: Colors.white,),
                      title: Text('सेवामार्ग',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context,  MaterialPageRoute(
                        builder: (context) => NityasevaScreen()),);
                  },
                    child: ListTile(
                      leading: Icon(Icons.book, color: Colors.white,),
                      title: Text('नित्यसेवा',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context,  MaterialPageRoute(
                        builder: (context) => AartiScreen()),);
                  },
                    child: ListTile(
                      leading: Icon(Icons.book_online, color: Colors.white,),
                      title: Text('आरती संग्रह',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context,  MaterialPageRoute(
                        builder: (context) => MantrScreen()),);
                  },
                    child: ListTile(
                      leading: Icon(Icons.list_alt, color: Colors.white,),
                      title: Text('मंत्र',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context,  MaterialPageRoute(
                        builder: (context) => YouTubeScreen()),);
                  },
                    child: ListTile(
                      leading: Icon(Icons.play_circle_outline, color: Colors.white,),
                      title: Text('YouTube',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context,  MaterialPageRoute(
                        builder: (context) => DonationScreen()),);
                  },
                    child: ListTile(
                      leading: Icon(Icons.money, color: Colors.white,),
                      title: Text('देणगी',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context,  MaterialPageRoute(
                        builder: (context) => ContactScreen()),);
                  },
                    child: ListTile(
                      leading: Icon(Icons.phone, color: Colors.white,),
                      title: Text('संपर्क',style: TextStyle(color: Colors.white, fontSize: 18),),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.white,),
                    title: Text('Logout',style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                ],
                ),
              ),
            ],
          ),
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'होम',
              backgroundColor: Colors.deepOrangeAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'नित्यसेवा',
              backgroundColor: Colors.deepOrangeAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flag),
              label: 'उपक्रम',
              backgroundColor: Colors.deepOrangeAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'आमच्यविषयी',
              backgroundColor: Colors.deepOrangeAccent,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}


void showMessage(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
          height: 150,
          child: Column(children: [
            Row(children: [
              Container(
                height: 60,
                width: 60,
                child: Image(image:AssetImage('assets/icon/dattaMaharaj.jpeg') ),),
              SizedBox(width: 10,),
              Text("श्री दत्त देवस्थान साप", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ]),
            SizedBox(height: 30,),
            Text(message, style: TextStyle(fontSize: 18),),
          ],),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: const Text('नाही', style: TextStyle(fontSize: 18),),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: const Text('होय',style: TextStyle(fontSize: 18)),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      );
    },
  );
}
