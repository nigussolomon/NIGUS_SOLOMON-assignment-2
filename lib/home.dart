import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(19, 150, 150, 150),
                          spreadRadius: 1)
                    ]),
                margin: const EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "BLU ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 145, 245, 173),
                                fontWeight: FontWeight.w900,
                                fontSize: 20),
                          ),
                          Text(
                            "BAKERY",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                      Image.network(
                        'https://iili.io/H1p6H6F.png',
                      ),
                    ],
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Color.fromARGB(50, 0, 0, 0)),
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor: Color.fromARGB(40, 0, 0, 0),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 145, 245, 173), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 145, 245, 173), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
