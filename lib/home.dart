import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                    color: Color.fromARGB(255, 145, 245, 173),
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
                          color: Color.fromARGB(255, 145, 245, 173), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 145, 245, 173), width: 1),
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
                    color: Color.fromARGB(255, 145, 245, 173),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(10),
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKWBHLmyeZIjrRTO6NB-w1IVlbwz16E7xraA&usqp=CAU'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Color.fromARGB(139, 0, 0, 0),
                                  BlendMode.darken),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(20, 168, 168, 168),
                                  spreadRadius: 1,
                                  blurRadius: 5)
                            ]),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(bottom: 10, right: 40),
                        width: 190,
                        child: Text('Hot Muffins',
                            style: GoogleFonts.oswald(
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 38),
                            )),
                      );
                    }),
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    // shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: const EdgeInsets.only(
                              bottom: 5, left: 10, right: 10),
                          width: 100,
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Image(
                                  width: 100,
                                  height: 80,
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKWBHLmyeZIjrRTO6NB-w1IVlbwz16E7xraA&usqp=CAU'),
                                  fit: BoxFit.cover),
                              Text(
                                "Category",
                                style: GoogleFonts.oswald(),
                              )
                            ],
                          ));
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
