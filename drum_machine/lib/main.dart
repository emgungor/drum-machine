import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  final oynatici = AudioPlayer();
  void SesiCal(String ses) {
    oynatici.play(AssetSource("$ses.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad("woo", Colors.deepPurple),
                  ),
                  Expanded(
                    child: buildDrumPad("ridebel", Colors.cyanAccent)
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: (){
                        oynatici.play(AssetSource("clap1.wav"));
                      },
                      style: TextButton.styleFrom(padding: EdgeInsets.all(5)),
                      child: Container(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: (){
                        oynatici.play(AssetSource("clap2.wav"));
                      },
                      style: TextButton.styleFrom(padding: EdgeInsets.all(5)),
                      child: Container(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: (){
                        oynatici.play(AssetSource("clap3.wav"));
                      },
                      style: TextButton.styleFrom(padding: EdgeInsets.all(5)),
                      child: Container(
                        color: Colors.lime,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: (){
                        oynatici.play(AssetSource("crash.wav"));
                      },
                      style: TextButton.styleFrom(padding: EdgeInsets.all(5)),
                      child: Container(
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: (){
                        oynatici.play(AssetSource("how.wav"));
                      },
                      style: TextButton.styleFrom(padding: EdgeInsets.all(5)),
                      child: Container(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: (){
                        oynatici.play(AssetSource("oobah.wav"));
                      },
                      style: TextButton.styleFrom(padding: EdgeInsets.all(5)),
                      child: Container(
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton buildDrumPad(String ses, Color renk) {
    return TextButton(
                    onPressed: (){
                      SesiCal(ses);
                    },
                    style: TextButton.styleFrom(padding: EdgeInsets.all(5)),
                    child: Container(
                      color: renk,
                    ),
                  );
  }
}
