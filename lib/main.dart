import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('Play Ranjan'),
        backgroundColor: Colors.red,
      ),
     body: piano(),
    ),
  ));
}
class piano extends StatefulWidget {
  @override
  _pianoState createState() => _pianoState();
}

class _pianoState extends State<piano> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset('images/piano.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: (){
                  setState(() {
                    player.play('note1.wav');
                  });
                },
                child: Image.asset('images/key.png'),
              ),
              SizedBox(height: 2,),
              FlatButton(
                onPressed: (){
                  setState(() {
                    player.play('note2.wav');
                  });
                },
                child: Image.asset('images/key.png'),
              ),
              SizedBox(height: 2,),
              FlatButton(
                onPressed: (){
                  setState(() {
                    player.play('note3.wav');
                  });
                },
                child: Image.asset('images/key.png'),

              ),
              SizedBox(height: 2,),
              FlatButton(
                onPressed: (){
                  setState(() {
                    player.play('note4.wav');
                  });
                },
                child: Image.asset('images/key.png'),
              ),
              SizedBox(height: 2,),
              FlatButton(
                onPressed: (){
                  setState(() {
                    player.play('note5.wav');
                  });
                },
                child: Image.asset('images/key.png'),
              )
            ],
          ),
        ],
      ),
    );
  }
}


