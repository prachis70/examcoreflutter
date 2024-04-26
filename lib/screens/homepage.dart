import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Homepage',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
      backgroundColor: Colors.greenAccent,
    ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 80),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
              child: Container(
                alignment: Alignment.center,
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.black, blurRadius: 8, spreadRadius: 3)
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/images/img11.jpeg'),
                    fit: BoxFit.cover,

                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 40),
            child: Text('🍎..Fruits..🍎',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.brown),),
          ),
        ],
      ),
    );
  }
}
