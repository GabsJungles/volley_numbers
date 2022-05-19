import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volley_numbers/secondpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController competitionName = TextEditingController();
  TextEditingController teamA = TextEditingController();
  TextEditingController teamB = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: 90,
              image: AssetImage("lib/images/wallpaper.final.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 60,
                ),
                Container(
                  height: 180,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('lib/images/logo.bola.final.gif'),
                          fit: BoxFit.contain),
                      shape: BoxShape.circle),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.handlee().fontFamily,
                      color: Colors.yellow,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText('Volley Numbers',
                            speed: const Duration(milliseconds: 250)),
                            
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                        controller: competitionName,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.white
                          ),
                          border: OutlineInputBorder(
                          ),
                          hintText: 'Nome da Competição',
                          
                        ))),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    controller: teamA,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(
                            color: Colors.white
                          ),
                      border: OutlineInputBorder(),
                      hintText: 'Nome da Equipe/Atleta A',
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    controller: teamB,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(
                            color: Colors.white
                          ),
                      border: OutlineInputBorder(),
                      hintText: 'Nome da Equipe/Atleta B',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                IconButton(
                    icon: const Icon(Icons.task_alt_rounded),
                    iconSize: 60,
                    color: Colors.green,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage(
                                    competitionName: competitionName.text,
                                    teamA: teamA.text,
                                    teamB: teamB.text,
                                  )));
                    })
              ]),
        ),
      ),
    );
  }
}
