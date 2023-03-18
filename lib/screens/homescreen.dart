import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../styles/font_styles.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60.0),
            child: Column(
              children: [
                Text(
                  'Hey.',
                  style: heading,
                ),
                SizedBox(height: 20.0),
                DefaultTextStyle(
                  style: subheading,
                  child: AnimatedTextKit(animatedTexts: [
                    TypewriterAnimatedText('Wanna find an ally?',
                        speed: const Duration(milliseconds: 60), cursor: ' |')
                  ]),
                ),
              ],),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 20.0),
          child: Column(
            children: [
          ElevatedButton(
              onPressed: () {},
              style: button_style,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Yessssss',style: button_text.copyWith(fontSize: 24),), Icon(Icons.arrow_forward)],
                ),
              ),

          ),
          SizedBox(height: 12.0,),
          ElevatedButton(
            onPressed: () {},
            style: button_style,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('No! Wanna to self study',style: button_text.copyWith(fontSize: 24)), Icon(Icons.local_library)],
              ),
            ),
          )
            ],
          ),
        )
      ]),
    );
  }
}

ButtonStyle button_style= ElevatedButton.styleFrom(backgroundColor: Colors.deepPurpleAccent,
shape: const RoundedRectangleBorder(
borderRadius: BorderRadius.all(Radius.circular(20))));

