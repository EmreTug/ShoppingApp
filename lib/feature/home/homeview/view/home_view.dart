import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingapp/core/constants/appconstants.dart';
import 'package:shoppingapp/core/extensions/color_extension.dart';
class category{
  final String name;
   bool isSelected;

  category(this.name, this.isSelected);
}
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    
    List<category> categories=[];
    categories.add(category("Wearable", true));
    categories.add(category("Drones", false));
    categories.add(category("Phones", false));
    categories.add(category("Laptops", false));

    return Scaffold(
      
      bottomNavigationBar:const BottomNavBar(),
      backgroundColor: "#F2F2F2".toColor(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 48, left: 20),
              child: Row(
                children: [
                  Image.asset(
                    AppConstants.BURGERICON,
                    width: 22,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 14),
                    height: 60,
                    width: 267,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.0,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 21),
                          child: Image.asset("assets/images/Search.png"),
                        ),
                        const SizedBox(
                          width: 150,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: TextField(
                                decoration: InputDecoration.collapsed(
                                    hintText: "Search")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 55, right: 80),
              child: Text(
                "Order online collect in store",
                style: GoogleFonts.raleway(
                    fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 55,left: 20),
              child: SizedBox(
                height: 35,
                child: ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        //cubit e geçince düzelecek
                        categories[index].isSelected=true;
                      },
                      child: Container(
                        width: 80,
                        margin: const EdgeInsets.only(right: 24),
                        child: Column(
                          children: [
                            Text(
                              categories[index].name,
                              style: GoogleFonts.raleway(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              height: 3,
                              color:categories[index].isSelected? "#5956E9".toColor():Colors.transparent,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 47),
              child: SizedBox(
                height: 270,
                child: ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 34),
                      width: 220,
                      height: 270,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Container(
                              width: 220,
                              height: 220,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 115, bottom: 5),
                                    child: Text(
                                      "Apple Watch",
                                      style: GoogleFonts.raleway(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Series 6. Red",
                                    style: GoogleFonts.raleway(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: "#868686".toColor(),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      "\$ 359",
                                      style: GoogleFonts.raleway(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: "#5956E9".toColor(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              "assets/images/clock.png",
                              width: 200,
                              height: 200,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 30),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Text(
                  "see more",
                  style: GoogleFonts.raleway(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: "5956E9".toColor(),
                  ),
                ),Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Image.asset("assets/images/next.png"),
                )
                ],)
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
    int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex:_currentIndex,
      elevation:0,
  type: BottomNavigationBarType.fixed,
    backgroundColor: "#F2F2F2".toColor(),
  selectedItemColor: "#5956E9".toColor(),
    unselectedItemColor: Colors.black,

  
  onTap: (value) {
    setState(() {
      _currentIndex=value;
    });
  },
  items: [
    BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: ""
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.favorite_border),
    label: ""

    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.person_outline),
    label: ""

    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.shopping_cart_outlined),
    label: ""

    ),
  ],
);
  }
}
