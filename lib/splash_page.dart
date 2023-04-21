import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }
  

  bool bookmarked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: SizedBox(

          child: GestureDetector(
            onTap: () {
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
            },
            child: Lottie.network(
                'https://assets2.lottiefiles.com/packages/lf20_hnltamej.json',
                
                ),
          ),
        ),
      ),
    );
  }
}
