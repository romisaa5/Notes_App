import 'package:flutter/material.dart';
import 'package:note_app/views/note_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const NoteView()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 21, 21, 21),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Container(
            color: const Color.fromARGB(255, 21, 21, 21),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Container(
                      color:const Color.fromARGB(255, 21, 21, 21),
                      child: Image.asset(
                        "assets/images/splash.png",
                        height: 130,
                        width: 130,
                      ),
                    ),
                  ),
                ),
                const Text("Developed By Romisaa Fadel",
                    style: TextStyle(
                      color: Colors.grey,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
