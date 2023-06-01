import 'package:flutter/material.dart';

import 'optionmenu.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(120); // Set the desired height of the app bar

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/background_image.png', // Replace with the path to your background image
          fit: BoxFit.cover,
          height: 120, // Set the desired height of the background image
        ),
        AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => optionmenu()),
              );
            },
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15), // Set the desired circular radius
            ),
          ),
          toolbarHeight: 120, // Set the desired height of the app bar
          actions: [
            // IconButton(
            //   icon: Icon(Icons.search),
            //   onPressed: () {
            //     // Add search functionality
            //   },
            // ),
            IconButton(
              icon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(Icons.logout),
              ),
              onPressed: () {
                // Add notification functionality
              },
            ),
          ],
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 60,
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/susipwinlogo.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          centerTitle: true,
        ),
      ],
    );
  }
}
