import 'package:examcoreflutter/GLOBAL/product_list.dart';
import 'package:examcoreflutter/screens/cartpage.dart';
import 'package:flutter/material.dart';

class cartpage extends StatefulWidget {
  const cartpage({super.key});

  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Screen'),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80,
          left: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Expanded(
            child: Column(
              children: [
                ...List.generate(
                  cartlist.length,
                      (index) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 150,
                        width: 160,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 3,
                                blurRadius: 5,
                                color: Colors.white)
                          ],
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(cartlist[index]['img']),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Container(
                            height: 150,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: (BorderRadius.circular(20))),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('${cartlist[index]['price']}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('${cartlist[index]['line']}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          cartlist.removeAt(index);
                                        });
                                      },
                                      child: Icon(Icons.delete)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/last');

          for (int i = 0; i < cartlist.length; i++) {
            qty = (qty + cartlist[i]['member']).toInt();
            amount = amount + cartlist[i]['price'].cartList[i]['member'];
          }
          total=(amount*12/100)+amount;

        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
