import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interproj/utilities/bottom_nav_bar.dart';
import 'package:interproj/utilities/post_tile.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
          child: Image.asset(
            'lib/assets/comlogo.png',
            height: 32, // Adjust the height of the logo
            width: 32, // Adjust the width of the logo
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.grey,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                'lib/icons/search.png',
                height: 24, // Adjust the size of the search icon
                width: 24, // Adjust the size of the search icon
              ),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.grey,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset(
                    'lib/icons/schedule.png',
                    height: 24, // Adjust the size of the schedule icon
                    width: 24, // Adjust the size of the schedule icon
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 8,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '+2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.grey,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                'lib/icons/alert.png',
                height: 24, // Adjust the size of the alert icon
                width: 24, // Adjust the size of the alert icon
              ),
            ),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: ColorFiltered(
          //     colorFilter: ColorFilter.mode(
          //       Colors.grey,
          //       BlendMode.srcIn,
          //     ),
          //     child: Image.asset(
          //       'lib/icons/message.png',
          //       height: 24, // Adjust the size of the message icon
          //       width: 24, // Adjust the size of the message icon
          //     ),
          //   ),
          // ),
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.grey,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset(
                    'lib/icons/message.png',
                    height: 24, // Adjust the size of the schedule icon
                    width: 24, // Adjust the size of the schedule icon
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 8,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '+5',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
            child: CircleAvatar(
              radius: 16, // Adjust the size of the avatar
              backgroundColor:
                  Colors.grey[200], // Background color of the avatar
              backgroundImage: AssetImage(
                  'lib/assets/profile.png'), // Path to the profile picture
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Recent',
                    style: GoogleFonts.robotoFlex(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 3), // Add spacing between text and icon
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey,
                  size: 24, // Adjust the size of the arrow icon
                ),
              ],
            ),
          ),
          PostTile(),
          PostTile(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 18),
            child: Row(
              children: [
                Text(
                  'Suggested People',
                  style: GoogleFonts.robotoFlex(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  'View More',
                  style: GoogleFonts.robotoFlex(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_rounded,
                  size: 20, // Adjust the size of the arrow icon
                ),
              ],
            ),
          ),
          PostTile(),
          PostTile(),
          PostTile(),
          PostTile(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
