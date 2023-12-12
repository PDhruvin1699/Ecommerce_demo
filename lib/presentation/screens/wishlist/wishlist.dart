
import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  @override
   WishListScreenState createState() => WishListScreenState();
}

class  WishListScreenState extends State< WishListScreen> {


  void _showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            height: 230, // Specify a finite height for the Container
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text(
                    'Delete product from wishlist',
                    style: TextStyle(
                      color: Color(0xFF1B1A1A),
                      fontSize: 16,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w500,
                      height: 0.09,
                      letterSpacing: 0.08,
                    ),
                  ),
                ),
                // Rest of your content...

                Center(
                    child: Container(
                      width: 400, // Set the container's width to occupy the full width
                      child: TextButton(
                          onPressed: () {
                            // Handle button press
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 16.0), // Adjust vertical padding as needed
                            backgroundColor: Colors.black, // Set transparent background
                            side: BorderSide(
                              color: Color(0xFFF4F5FD), // Border color
                              width: 1.0, // Border width
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0), // Adjust the border radius as needed
                            ),
                          ),
                          child:Text(
                            'Delete (1) product',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          )
                      ),
                    )

                ),
                SizedBox(height: 15),
                Center(
                    child: Container(
                      width: 400, // Set the container's width to occupy the full width
                      child: TextButton(
                          onPressed: () {
                            // Handle button press
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 16.0), // Adjust vertical padding as needed
                            backgroundColor: Colors.transparent, // Set transparent background
                            side: BorderSide(
                              color: Color(0xFFF4F5FD), // Border color
                              width: 1.0, // Border width
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0), // Adjust the border radius as needed
                            ),
                          ),
                          child:Text(
                            'Cancel',
                            style: TextStyle(
                              color: Color(0xFF1C1B1B),
                              fontSize: 14,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          )
                      ),
                    )

                ),
              ],
            ),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'WishList',
          style: TextStyle(
            color: Color(0xFF1B1A1A),
            fontSize: 16,
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.w500,
            height: 1.11,
            letterSpacing: 0.07,
          ),
        ),

      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Left side - Image
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          color: Colors.transparent,
                          child: Image.asset(
                            'images/Rectangle 9 (13).png',
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: Text(
                                    'Loop Silicone Strong Magnetic Watch',
                                    style: TextStyle(
                                      color: Color(0xFF1B1A1A),
                                      fontSize: 14,
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w500,
                                      height: 1.11,
                                      letterSpacing: 0.07,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                              ],
                            ),
                            SizedBox(height: 10,
                            ),
                            Text(
                              '\$15.25',
                              style: TextStyle(
                                color: Color(0xFF1B1A1A),
                                fontSize: 12,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: 0.06,
                              ),
                            ),
                            SizedBox(height: 10,
                            ),
                            Text(
                              '\$20.00',
                              style: TextStyle(
                                color: Color(0xFF6F7384),
                                fontSize: 10,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.lineThrough,
                                height: 0,
                                letterSpacing: 0.15,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  // Handle decrement logic here
                                },
                                child: Container(
                                  width: 120,
                                  height: 40,
                                  // : Colors.blue,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                      ),
                                      SizedBox(width: 8,),
                                      Text(
                                        '1',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFC0C0C0),
                                          fontSize: 16,
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontWeight: FontWeight.w500,
                                          height: 0.09,
                                          letterSpacing: 0.08,
                                        ),
                                      ),
                                      SizedBox(width:8),
                                      Icon(
                                        Icons.add,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),


                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: GestureDetector(
                        onTap: () {
                          // Handle delete logic here
                        },
                        child: Image.asset(
                          'images/trash.png',
                          width: 24,height: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),



            Container(
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Left side - Image
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          color: Colors.transparent,
                          child: Image.asset(
                            'images/Rectangle 13 (1).png',
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: Text(
                                    'M6 Smart watch IP67 Waterproof',
                                    style: TextStyle(
                                      color: Color(0xFF1B1A1A),
                                      fontSize: 14,
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w500,
                                      height: 1.11,
                                      letterSpacing: 0.07,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                              ],
                            ),
                            SizedBox(height: 10,
                            ),
                            Text(
                              '\$15.25',
                              style: TextStyle(
                                color: Color(0xFF1B1A1A),
                                fontSize: 12,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: 0.06,
                              ),
                            ),
                            SizedBox(height: 10,
                            ),
                            Text(
                              '\$20.00',
                              style: TextStyle(
                                color: Color(0xFF6F7384),
                                fontSize: 10,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.lineThrough,
                                height: 0,
                                letterSpacing: 0.15,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  // Handle decrement logic here
                                },
                                child: Container(
                                  width: 120,
                                  height: 40,
                                  // : Colors.blue,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                      ),
                                      SizedBox(width: 8,),
                                      Text(
                                        '1',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFC0C0C0),
                                          fontSize: 16,
                                          fontFamily: 'Plus Jakarta Sans',
                                          fontWeight: FontWeight.w500,
                                          height: 0.09,
                                          letterSpacing: 0.08,
                                        ),
                                      ),
                                      SizedBox(width:8),
                                      Icon(
                                        Icons.add,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top:70.0),
                      child: GestureDetector(
                        onTap: () {_showFilterBottomSheet(context);
                        },
                        child: Image.asset(
                          'images/trash.png',
                          width: 24,height: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 150,),




          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WishListScreen(),
  ));
}
