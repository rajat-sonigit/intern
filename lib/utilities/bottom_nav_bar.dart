import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Material(
        elevation:10,        color: Colors.white,
       borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        child: Container(
          height: 61, // Increased height by 5 pixels
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavBarItem(
                iconPath: 'lib/icons/home.png',
                text: 'Home',
                index: 0,
                selectedIndex: _selectedIndex,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
              ),
              NavBarItem(
                iconPath: 'lib/icons/groups.png',
                text: 'Groups',
                index: 1,
                selectedIndex: _selectedIndex,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
              ),
              NavBarItem(
                iconPath: 'lib/icons/post.png',
                text: 'Post',
                index: 2,
                selectedIndex: _selectedIndex,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
              ),
              NavBarItem(
                iconPath: 'lib/icons/network.png',
                text: 'Network',
                index: 3,
                selectedIndex: _selectedIndex,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
              ),
              NavBarItem(
                iconPath: 'lib/icons/job.png',
                text: 'Job',
                index: 4,
                selectedIndex: _selectedIndex,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 4;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavBarItem extends StatefulWidget {
  final String iconPath;
  final String text;
  final int index;
  final int selectedIndex;
  final VoidCallback onPressed;

  const NavBarItem({
    required this.iconPath,
    required this.text,
    required this.index,
    required this.selectedIndex,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Image.asset(
                widget.iconPath,
                color: widget.index == widget.selectedIndex ? Colors.cyan : Colors.grey, // Grey color for default state
              ),
            ),
            SizedBox(height: 4),
            Text(
              widget.text,
              style: TextStyle(
                color: widget.index == widget.selectedIndex ? Colors.cyan : Colors.grey, // Grey color for default state
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
