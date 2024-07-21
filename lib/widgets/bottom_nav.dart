import 'package:flutter/material.dart';
import 'package:imepay_assesment/widgets/coming_soon.dart';
import 'package:imepay_assesment/presentation/home_screen.dart';
import 'package:imepay_assesment/theme/custom_colors.dart';
import 'package:imepay_assesment/theme/custom_text_style.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  void initState() {
    super.initState();
    // Provider.of<DataProvider>(context, listen: false).fetchData();
  }

  bool obscureAmount = false;
  int selectedIndex = 0;

  void onTapImplemented(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const ComingSoonPage(),
    const ComingSoonPage(),
    const ComingSoonPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[selectedIndex],

        floatingActionButton: Container(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(30), // Adjust the radius as needed
              ),
              onPressed: () {
                // Your action code
              },
              backgroundColor: Theme.of(context).primaryColor,
              child: const Icon(
                Icons.qr_code,
                color: Colors.white,
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(30), // Adjust the radius as needed
            ),
            // clipBehavior: Clip.antiAlias,
            elevation: 5,
            child: Container(
              height: 75.0,
              decoration: const BoxDecoration(
                color: Color(0xfff2f4f3),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 18),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        onTapImplemented(0);
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.home,
                            color: selectedIndex == 0
                                ? Theme.of(context).primaryColor
                                : CustomColors.disabledColor,
                          ),
                          Text(
                            "Home",
                            style: selectedIndex == 0
                                ? CustomTextStyles.navigationbarstyleselected
                                : CustomTextStyles.navigationbarstyle,
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        onTapImplemented(1);
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.credit_card,
                            color: selectedIndex == 1
                                ? Theme.of(context).primaryColor
                                : CustomColors.disabledColor,
                          ),
                          Text(
                            "Cards",
                            style: selectedIndex == 1
                                ? CustomTextStyles.navigationbarstyleselected
                                : CustomTextStyles.navigationbarstyle,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 25), // Centered FAB

                    InkWell(
                      onTap: () {
                        onTapImplemented(2);
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.card_giftcard_rounded,
                            color: selectedIndex == 2
                                ? Theme.of(context).primaryColor
                                : CustomColors.disabledColor,
                          ),
                          Text(
                            "Offer",
                            style: selectedIndex == 2
                                ? CustomTextStyles.navigationbarstyleselected
                                : CustomTextStyles.navigationbarstyle,
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        onTapImplemented(3);
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.history,
                            color: selectedIndex == 3
                                ? Theme.of(context).primaryColor
                                : CustomColors.disabledColor,
                          ),
                          Text(
                            "History",
                            style: selectedIndex == 3
                                ? CustomTextStyles.navigationbarstyleselected
                                : CustomTextStyles.navigationbarstyle,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: '',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.add_outlined),
        //       label: '',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.notifications),
        //       label: '',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: '',
        //     ),
        //   ],
        //   selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        //   unselectedItemColor: const Color.fromARGB(255, 146, 138, 138),
        //   selectedFontSize: 0,
        //   currentIndex: _selectedIndex,
        //   backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        //   onTap: onTapImplemented,
        // ),
      ),
    );
  }
}
