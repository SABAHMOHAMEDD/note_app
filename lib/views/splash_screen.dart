import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:note_app/core/constants.dart';
import 'package:note_app/views/notes_view.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "SplashScreen";

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 150,
      backgroundColor: KprimaryColor.withOpacity(0.9),
      splash: const Column(
        children: [
          Image(
            image: AssetImage(Klogo),
            height: 100,
            width: 100,
          ),
          Text(
            "Nottie",
            style: TextStyle(
                fontFamily: "Pacifico", color: Colors.white, fontSize: 24),
          ),
        ],
      ),
      nextScreen: const NotesView(),
      splashTransition: SplashTransition.sizeTransition,

      //pageTransitionType: PageTransitionType.downToUp,
    );
  }
}
