import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(3))),
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
      ),
    );
  }
}
