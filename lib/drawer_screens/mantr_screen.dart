// import 'package:flutter/material.dart';
//
//
// class MantrScreen extends StatefulWidget {
//   const MantrScreen({super.key});
//
//   @override
//   State<MantrScreen> createState() => _MantrScreenState();
// }
//
// class _MantrScreenState extends State<MantrScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('मंत्र'),centerTitle: true,),
//     );
//   }
// }



// This is a minimal example demonstrating a play/pause button and a seek bar.
// More advanced examples demonstrating other features can be found in the same
// directory as this example in the GitHub repository.

// This is a minimal example demonstrating a play/pause button and a seek bar.
// More advanced examples demonstrating other features can be found in the same
// directory as this example in the GitHub repository.

import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';

class MantrScreen extends StatefulWidget {
  const MantrScreen({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MantrScreen> with WidgetsBindingObserver {
  final _player = AudioPlayer();

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    //_init();
  }

  Future<void> _init() async {
    // Inform the operating system of our app's audio attributes etc.
    // We pick a reasonable default for an app that plays speech.
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    // Listen to errors during playback.
    _player.playbackEventStream.listen((event) {},
        onError: (Object e, StackTrace stackTrace) {
          print('A stream error occurred: $e');
        });
    // Try to load audio from a source and catch any errors.
    try {
      // AAC example: https://dl.espressif.com/dl/audio/ff-16b-2c-44100hz.aac
      // await _player.setAudioSource(AudioSource.uri(Uri.parse(
      //       //     "https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3")));
      _player.setAudioSource(AudioSource.asset("assets/audio/omkrimkalikaynamh.mpeg"));
      _player.play();

    } catch (e) {
      print("Error loading audio source: $e");
    }
  }

  @override
  void dispose() {

    // Release decoders and buffers back to the operating system making them
    // available for other apps to use.
    _player.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    _init();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Text("hello"),
        ),
      ),
    );
  }
}

