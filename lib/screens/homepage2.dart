import 'package:examcoreflutter/screens/cartpage.dart';
import 'package:flutter/material.dart';

import '../GLOBAL/product_list.dart';

class homepage2 extends StatefulWidget {
  const homepage2({super.key});

  @override
  State<homepage2> createState() => _homepage2State();
}

class _homepage2State extends State<homepage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 4,
        title: Text(
          'Detailspage',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(
            (Icons.notifications_active_outlined),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 370,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.green, blurRadius: 6, spreadRadius: 4)
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                      Text(
                        'search your Fruits',
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                // child: Padding(
                // padding: const EdgeInsets.only(top: 50),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/cart');
                  },
                ),
                // ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Center(
                  child: Wrap(
                    children: [
                      Column(
                        children: List.generate(
                            pr.length,
                                (index) =>
                                GestureDetector(
                                    onTap: () {
                                      SelectIndex = index;
                                      Navigator.of(context).pushNamed('/det');
                                    },
                                    child: box1(img: pr[index]['img']))),
                      ),
                      Column(
                        children: List.generate(
                            pr.length,
                                (index) =>
                                GestureDetector(
                                    onTap: () {
                                      SelectIndex = index;
                                      Navigator.of(context).pushNamed('/details');
                                    },
                                    child: box1(img: pr[index]['img']))),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding box1({required String img}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                  color: Colors.blueAccent,
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 5))
            ],
            borderRadius: (BorderRadius.circular(25)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(img),
            )),
      ),
    );
  }
}
