import 'package:flutter/material.dart';
import 'package:flutter_mountrip/Detail/detail_screen.dart';
import 'package:flutter_mountrip/Detail/place_model.dart';
import 'package:flutter_mountrip/screen/booking.dart';
import 'package:google_fonts/google_fonts.dart';

class Mainmenu extends StatelessWidget {
  const Mainmenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = 0; // Variabel index untuk mengakses places

    Widget kepala() {
      Widget itemcard(String img, String text, String rating, String lokasi) {
        return Container(
          margin: const EdgeInsets.only(bottom: 3),
          padding: const EdgeInsets.all(10),
          height: 95,
          width: 400,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 105,
                width: 115,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(img)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(children: [
                    Image.asset('assets/Star.png'),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      rating,
                      style: GoogleFonts.poppins(
                        color: const Color(0xff6F7789),
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(children: [
                    Image.asset('assets/location.png'),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      lokasi,
                      style: GoogleFonts.poppins(
                        color: const Color(0xff6F7789),
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ])
                ],
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
                child: Text(
                  'Top Place',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                width: 200,
              ),
              Text(
                'View All',
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          itemcard("assets/Semeru2.png", "Mount Semeru", "4.8", "Jawa Timur"),
          const SizedBox(height: 20),
          itemcard("assets/Ijen.png", "Mount Ijen", "4.9", "Jawa Timur"),
          const SizedBox(
            height: 20,
          ),
          itemcard(
              "assets/TP1.png", "Mount Tangkuban Perahu", "4.7", "Jawa Barat"),
          const SizedBox(
            height: 20,
          ),
          itemcard("assets/salak1.png", "Mount Salak", "4.7", "Jawa Barat"),
        ],
      );
    }

    Widget Header() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              child: Text(
                'Wonderful Indonesia',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                'Explore Your Journey',
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              children: [
                for (int index = 0; index < places.length; index++)
                  RecommendedCard(
                    placeInfo: places[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            placeInfo: places[index],
                          ),
                        ),
                      );
                    },
                  ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(224),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Color(0xff289AED),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    Text(
                      'Hello, \nTegar',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Image.asset('assets/ava.png'),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search your destination",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white, // Set the background color to white
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: const BoxDecoration(
              color: Color(0xff289AED),
              borderRadius: BorderRadius.all(Radius.circular(24))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Mainmenu()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.location_pin),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.message_outlined),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.person),
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kepala(),
            Header(),
          ],
        ),
      ),
    );
  }
}

class RecommendedCard extends StatelessWidget {
  final PlaceInfo placeInfo;
  final VoidCallback press;

  const RecommendedCard({
    Key? key,
    required this.placeInfo,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: HeaderCard(
        img: placeInfo.image,
        text: placeInfo.name,
        rating: placeInfo.rating,
        lokasi: placeInfo.location,
        onPressed: press,
      ),
    );
  }

  Widget HeaderCard({
    required String img,
    required String text,
    required String rating,
    required String lokasi,
    required VoidCallback onPressed,
  }) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 6),
              padding: const EdgeInsets.all(10),
              height: 200,
              width: 175,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 140,
                    width: 175,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(img)),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        text,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Image.asset('assets/Star.png'),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/location.png'),
                          Text(
                            lokasi,
                            style: GoogleFonts.poppins(
                              color: const Color(0xff6F7789),
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
