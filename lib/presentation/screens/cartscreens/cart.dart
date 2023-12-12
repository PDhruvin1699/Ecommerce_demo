
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {


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
                    'Voucher Code',
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
                Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      autofocus: true, // Automatically focus and open the keyboard
                      decoration: InputDecoration(
                        hintText: 'Enter a Voucher code',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color(0xFFF4F5FD),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: Container(
                    width: 400,
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: ShapeDecoration(
                      color: Color(0xFF1C1B1B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                      ),
                      child: Text(
                        'Apply',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
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
          'My Cart',
          style: TextStyle(
            color: Color(0xFF1B1A1A),
            fontSize: 16,
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.w500,
            height: 1.11,
            letterSpacing: 0.07,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              _showFilterBottomSheet(context);
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            ),
            child: Text(
              'Voucher Code',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF21D4B4),
                fontSize: 14,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w500,
                height: 1.11,
                letterSpacing: 0.07,
              ),
            ),
          )
        ],
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
                  Padding(
                      padding: const EdgeInsets.only(bottom: 20,left:385),
                      child: Container(
                        width: 20,
                        height: 20,
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.zero, // Remove default padding
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 5, // Border width
                            color: Colors.blue, // Border color

                          ),
                          borderRadius: BorderRadius.circular(4), // Border radius
                          color: Colors.white, // Background color
                        ),
                        child: Checkbox(
                          value: true,
                          onChanged: (newValue) {
                            // Handle checkbox state change
                            // You can implement your logic here
                          },
                          activeColor: Color(0xFF21D4B4), // Set the background color when checked
                          checkColor: Colors.red,
                        ),
                      )
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
                  Padding(
                      padding: const EdgeInsets.only(bottom: 20,left:385),
                      child: Container(
                        width: 20,
                        height: 20,
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.zero, // Remove default padding
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 5, // Border width
                            color: Colors.blue, // Border color

                          ),
                          borderRadius: BorderRadius.circular(4), // Border radius
                          color: Colors.white, // Background color
                        ),
                        child: Checkbox(
                          value: true,
                          onChanged: (newValue) {
                            // Handle checkbox state change
                            // You can implement your logic here
                          },
                          activeColor: Color(0xFF21D4B4), // Set the background color when checked
                          checkColor: Colors.red,
                        ),
                      )
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top:70.0),
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

            SizedBox(height: 150,),


            Container(

              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Order Info',
                        style: TextStyle(
                          color: Color(0xFF1B1A1A),
                          fontSize: 16,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w500,
                          height: 0.09,
                          letterSpacing: 0.08,
                        ),
                      )

                    ],
                  ),
                  SizedBox(height: 20,),
                  // First line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(
                          color: Color(0xFF6F7384),
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 0.06,
                        ),
                      ),Text(
                        '\$27.25',
                        style: TextStyle(
                          color: Color(0xFF6F7384),
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 0.06,
                        ),
                      )

                    ],
                  ),
                  SizedBox(height: 8.0), // Add spacing between lines

                  // Second line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping Cost',
                        style: TextStyle(
                          color: Color(0xFF6F7384),
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 0.06,
                        ),
                      ),
                      Text(
                        '\$0.00',
                        style: TextStyle(
                          color: Color(0xFF6F7384),
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 0.06,
                        ),
                      ),
                    ],
                  ),
                  // Add spacing between lines
                  SizedBox(height: 18.0),
                  // Third line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          color: Color(0xFF1B1A1A),
                          fontSize: 16,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w500,
                          height: 0.09,
                          letterSpacing: 0.08,
                        ),
                      ),
                      Text(
                        '\$27.25',
                        style: TextStyle(
                          color: Color(0xFF1B1A1A),
                          fontSize: 16,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w500,
                          height: 0.09,
                          letterSpacing: 0.08,
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 60,),
                  Center(
                    child: Container(
                      width: double.maxFinite,
                      height: 60,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: ShapeDecoration(
                        color: Color(0xFF1C1B1B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,),
                          child: Text(
                            'Checkout (2)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          )
                      ),
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CartScreen(),
  ));
}
