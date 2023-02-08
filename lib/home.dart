import 'package:flutter/material.dart';
import 'package:food_delivery/data.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
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
                        children: [
                          Text("BLU ",
                              style: GoogleFonts.oswald(
                                textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 15, 118, 252),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              )),
                          Text(
                            "BAKERY",
                            style: GoogleFonts.oswald(
                              textStyle: const TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18),
                            ),
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
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: GoogleFonts.oswald(
                    textStyle:
                        const TextStyle(color: Color.fromARGB(64, 0, 0, 0)),
                  ),
                  suffixIcon: const Icon(Icons.search),
                  suffixIconColor: const Color.fromARGB(40, 0, 0, 0),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 15, 118, 252), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 15, 118, 252), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "OUR TOP PICKS",
                style: GoogleFonts.oswald(
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 15, 118, 252),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 185,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    itemCount: DataLoader.getPicks().length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      final pick = DataLoader.getPicks()[index];
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(pick["image"]),
                              fit: BoxFit.cover,
                              colorFilter: const ColorFilter.mode(
                                  Color.fromARGB(139, 0, 0, 0),
                                  BlendMode.darken),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(3)),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(20, 168, 168, 168),
                                  spreadRadius: 1,
                                  blurRadius: 5)
                            ]),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(bottom: 10, right: 10),
                        width: 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(pick["header"],
                                style: GoogleFonts.oswald(
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 30),
                                )),
                            Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry lorem Ipsum has been the',
                                style: GoogleFonts.oswald(
                                  textStyle: const TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ))
                          ],
                        ),
                      );
                    }),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: DataLoader.getCategories().length,
                    // shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      final category = DataLoader.getCategories()[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 70,
                              height: 65,
                              margin: const EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(category["image"]),
                                      fit: BoxFit.cover),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5))),
                              child: const Text('')),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Text(
                              category["header"],
                              style: GoogleFonts.oswald(),
                            ),
                          )
                        ],
                      );
                    }),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(right: 15),
                height: 230,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: DataLoader.getFoods().length,
                    itemBuilder: (BuildContext context, int index) {
                      final foodItem = DataLoader.getFoods()[index];
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 70,
                              height: 65,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(foodItem["image"]),
                                      fit: BoxFit.cover),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(3))),
                              child: const Text('')),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                            ),
                            child: SizedBox(
                              width: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    foodItem["header"],
                                    style: GoogleFonts.oswald(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w700)),
                                  ),
                                  Text(
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry ',
                                      style: GoogleFonts.oswald(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w300)))
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              splashColor:
                                  const Color.fromARGB(255, 15, 118, 252),
                              splashRadius: 20,
                              icon: const Icon(
                                Icons.shopping_cart_sharp,
                                color: Color.fromARGB(255, 15, 118, 252),
                              ))
                        ],
                      );
                    }),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 15, 118, 252),
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () {},
                child: Text(
                  'GET MORE GOODIES!',
                  style: GoogleFonts.oswald(
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
