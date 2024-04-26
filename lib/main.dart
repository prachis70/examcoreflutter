import 'package:examcoreflutter/screens/cartpage.dart';
import 'package:examcoreflutter/screens/detailspage.dart';
import 'package:examcoreflutter/screens/homepage.dart';
import 'package:examcoreflutter/screens/homepage2.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(Application());
}
class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => homepage(),
        '/home':(context)=>homepage2(),
        '/det':(context)=>details(),
        '/cart': (context) => cartpage(),
      }
    );
  }
}
