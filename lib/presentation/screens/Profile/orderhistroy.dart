//
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: MaterialApp(
        home: OrderHistoryScreen(),
      ),
    );
  }
}


class OrderHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop(); // Handle back button press
          },
        ),
        title: Text(
          'Order History',
          style: TextStyle(
            color: Color(0xFF1B1A1A),
            fontSize: 14,
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.w500,
            height: 1.11,
            letterSpacing: 0.07,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 48,
            padding: const EdgeInsets.all(4),
            decoration: ShapeDecoration(
              color: Color(0xFFF4F5FD),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            // color: Colors.black,
            child: TabBar(
              indicator: BoxDecoration(
                color: Colors.black, // Background color for selected tab
                borderRadius: BorderRadius.circular(12),), // Set indicator to null to remove the underline
              // labelColor: Colors.black, // Text color for the selected tab (white in this case)
              // unselectedLabelColor: Colors.black,

              // Set indicator to null to remove the underline
              tabs: [
                InkWell(
                  onTap: () {
                    // Handle tab tap
                  },
                  child: Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Ongoing',style: TextStyle(
                          color: Colors.white
                      ),),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Handle tab tap
                  },
                  child: Tab(
                    child: Container(
                      width: 156,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
                      decoration: ShapeDecoration(
                        color: DefaultTabController.of(context).index == 1
                            ? Colors.black // Background color for selected tab 1
                            : Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Completed',style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                // Content for Tab 1

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child:Container(
                              width: 166,
                              height: 24,
                              padding: const EdgeInsets.all(6),
                              decoration: ShapeDecoration(
                                color: Color(0xFFEE4D4D),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Estimated time: 7 working days',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                      letterSpacing: 0.15,
                                    ),
                                  ),
                                ],
                              ),
                            )
                        )
                      ],
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
                                          padding: const EdgeInsets.all(4),
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
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
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
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

                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child:Container(
                              width: 166,
                              height: 24,
                              padding: const EdgeInsets.all(6),
                              decoration: ShapeDecoration(
                                color: Color(0xFFEE4D4D),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Estimated time: 7 working days',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                      letterSpacing: 0.15,
                                    ),
                                  ),
                                ],
                              ),
                            )
                        )
                      ],
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
                                          padding: const EdgeInsets.all(4),
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                          width: 85,
                                          height: 40,
                                          // : Colors.blue,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,

                                            children: [
                                              Icon(
                                                Icons.remove,
                                                color: Colors.black,
                                              ),
                                              SizedBox(width: 8,),
                                              Text(
                                                '1',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
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

                        ],
                      ),
                    ),
                  ],
                ),
                // Content for Tab 2


                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                            width: 54,
                            height: 24,
                            padding: const EdgeInsets.all(6),
                            decoration: ShapeDecoration(
                              color: Color(0xFF1F8BDA),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Finished',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                    letterSpacing: 0.15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
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
                                          padding: const EdgeInsets.all(4),
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
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
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
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

                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                            width: 54,
                            height: 24,
                            padding: const EdgeInsets.all(6),
                            decoration: ShapeDecoration(
                              color: Color(0xFF1F8BDA),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Finished',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                    letterSpacing: 0.15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
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
                                          padding: const EdgeInsets.all(4),
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                          width: 85,
                                          height: 40,
                                          // : Colors.blue,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,

                                            children: [
                                              Icon(
                                                Icons.remove,
                                                color: Colors.black,
                                              ),
                                              SizedBox(width: 8,),
                                              Text(
                                                '1',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
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

                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
