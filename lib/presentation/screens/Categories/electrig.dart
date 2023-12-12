import 'dart:ffi';

import 'package:flutter/material.dart';

class ElectronicsCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Electronics Categories',style: TextStyle(color: Colors.black),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // childAspectRatio: 0.7,
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 0.0, // Horizontal spacing
          mainAxisSpacing: 0.0, // Vertical spacing
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Column(
            children: [
              Container(
                width: 200,
                height: 200, // Adjust the width and height of the container as needed
                padding: EdgeInsets.all(4),
                margin: EdgeInsets.all(1),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0, color: Colors.transparent),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child:
                    Image.asset(
                      // Replace with your image path
                      item.imagePath,
                      fit: BoxFit.cover,
                      width: double.maxFinite,
                      height: 150,
                    ),),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 160,
                      child: Text(
                        item.name,
                        style: TextStyle(
                          color: Color(0xFF1B1A1A),
                          fontSize: 14,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.0,
                          letterSpacing: 0.07,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Item {
  final String imagePath;
  final String name;
 // Change property name from stock to offerPrice

  Item({
    required this.imagePath,
    required this.name,
    // Change parameter name from stock to offerPrice
  });
}

// Define your list of items with different data
List<Item> items = [
Item(
imagePath: 'images/Rectangle 9 (5).png',
name: 'LapTops',
// Provide a valid offer price
),
Item(
imagePath: 'images/Rectangle 9 (6).png',
name: 'Mobile Phones',
 // Provide a valid offer price
),
  Item(
    imagePath: 'images/Rectangle 9 (7).png',
    name: 'Headphones',
// Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (8).png',
    name: 'Smart Watches',
// Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (9).png',
    name: 'Mobile Cases',
// Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (10).png',
    name: 'Monitors',
// Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (11).png',
    name: 'Earphones',
// Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (12).png',
    name: 'Charger',
// Provide a valid offer price
  ),
];

void main() {
  runApp(MaterialApp(
    home:ElectronicsCategoryScreen(),
  ));
}