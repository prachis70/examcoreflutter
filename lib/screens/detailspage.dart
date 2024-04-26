
import 'package:flutter/material.dart';
import '/GLOBAL/product_list.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.backpack, color: Colors.white,

          ),
        ),
        title: Text('details', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2, blurRadius: 3, color: Colors.black)
                    ],
                    image: DecorationImage(
                      image: AssetImage(
                        pr[SelectIndex]['img'],
                      ),
                    )
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(spreadRadius: 2,
                            blurRadius: 4,
                            color: Colors.black),
                      ]
                  ),
                  child: Column(
                    children: [
                      Text('${pr[SelectIndex]['price']}', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 35),),
                      Text('${pr[SelectIndex]['dec']}', style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),),
                      Text('${pr[SelectIndex]['star']}', style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                    ],
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: InkWell(onTap: () {
                    cartlist.add(pr[SelectIndex]);
                    Navigator.of(context).pushNamed('/cart');

                  },
                    child: Center(child: Text('Add To Cart', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),),),),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

