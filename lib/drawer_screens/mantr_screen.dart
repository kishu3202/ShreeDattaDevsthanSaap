import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MantrScreen extends StatefulWidget {
  const MantrScreen({super.key});

  @override
  State<MantrScreen> createState() => _MantrScreenState();
}

class _MantrScreenState extends State<MantrScreen> {
  int maxduration = 100;
  int currentpos = 0;
  String currentpostlabel = "00:00";
  String audioasset = "assets/audio/omkrimkalikaynamh.mpeg";
  bool isplaying = false;
  bool audioplayed = false;
  late Uint8List audiobytes;

  AudioPlayer player = AudioPlayer();
  @override
  void initState() {
    Future.delayed(Duration.zero, () async {

      ByteData bytes = await rootBundle.load(audioasset); //load audio from assets
      audiobytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      //convert ByteData to Uint8List

      player.onDurationChanged.listen((Duration d) { //get the duration of audio
        maxduration = d.inMilliseconds;
        setState(() {

        });
      });
      // player.onAudioPositionChanged.listen((Duration  p){
      //   currentpos = p.inMilliseconds; //get the current position of playing audio
      //
      //   //generating the duration label
      //   int shours = Duration(milliseconds:currentpos).inHours;
      //   int sminutes = Duration(milliseconds:currentpos).inMinutes;
      //   int sseconds = Duration(milliseconds:currentpos).inSeconds;
      //
      //   int rhours = shours;
      //   int rminutes = sminutes - (shours * 60);
      //   int rseconds = sseconds - (sminutes * 60 + shours * 60 * 60);
      //
      //   currentpostlabel = "$rhours:$rminutes:$rseconds";
      //
      //   setState(() {
      //     //refresh the UI
      //   });
      // });

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('मंत्र'),centerTitle: true,),
      body: Container(
        margin: EdgeInsets.only(top:50),
        child: Column(
          children: [

          Container(
          child: Text(currentpostlabel, style: TextStyle(fontSize: 25),),
      ),

      Container(
          child: Slider(onChanged: (value){},
            value: double.parse(currentpos.toString()),
            min: 0,
            max: double.parse(maxduration.toString()),
            divisions: maxduration,
            label: currentpostlabel,
            // onChanged: (double value) async {
            //   int seekval = value.round();
            //   int result = await player.seek(Duration(milliseconds: seekval));
            //   if(result == 1){ //seek successful
            //     currentpos = seekval;
            //   }else{
            //     print("Seek unsuccessful.");
            //   }
            // },
          )
      ),
        Container(
        child: Wrap(
        spacing: 10,
        children: [
        ElevatedButton.icon(
        onPressed: ()  {
      if(!isplaying && !audioplayed) {
        player.setSource();
        player.play(source:AssetSource('assets/audio/omkrimkalikaynamh.mpeg'));
      }
    },
    icon: Icon(isplaying?Icons.pause:Icons.play_arrow),
    label:Text(isplaying?"Pause":"Play")
    ),

    ElevatedButton.icon(
      onPressed: (){},
    // onPressed: () async {
    // int result = await player.stop();
    // if(result == 1){ //stop success
    // setState(() {
    // isplaying = false;
    // audioplayed = false;
    // currentpos = 0;
    // });
    // }else{
    // print("Error on stop audio.");
    // }
    // },
    icon: Icon(Icons.stop),
    label:Text("Stop")
    ),
    ],
    ),
    )

    ],
    )
      )

    );
  }
}
