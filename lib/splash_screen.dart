import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_cal/main.dart';
//import 'package:splash_screen/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> 
  with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Calculator()));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      // decoration: const BoxDecoration(
      //     gradient: LinearGradient(
      //         colors: [Colors.blue, Colors.pink],
      //         begin: Alignment.topRight,
      //         end: Alignment.bottomLeft)),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(
          //   "Splash Screen",
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 35,
          //   ),
          // )
          Image.asset(
            "assets/calculator_icon.png",
            height: 80,
            width: 80,
          ),
          Text(
            "Calculator",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w900),
          )
        ],
      ),
    ));
  }
}
