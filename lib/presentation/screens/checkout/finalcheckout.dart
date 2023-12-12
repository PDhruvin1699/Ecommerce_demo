import 'package:flutter/material.dart';


class CheckoutPage extends StatefulWidget {
  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State< CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:70.0),
          child: Column(
            children: [
              Container(
                width: 354,
                height: 408,

                clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF4FCFA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                child: Image.asset('images/01 Online Shopping 16.png'),
              ),

              SizedBox(height: 20), // Add spacing between containers
              Container(
                width: 328,
                height: 137,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 284,
                      child: Text(
                        'Your order has been placed successfully',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1B1A1A),
                          fontSize: 24,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w700,
                          height: 1.05,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 328,
                      child: Text(
                        'Thank you for choosing us! Feel free to continue shopping and explore our wide range of products. Happy Shopping!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF6F7384),
                          fontSize: 14,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                          letterSpacing: 0.07,
                        ),
                      ),
                    ),
                    // SizedBox(height: 20),

                  ],
                ),
              ),
              SizedBox(height: 30,),
              Center(
                  child: Container(
                    width: 400,
                    height: 70,// Set the container's width to occupy the full width
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
                          'Continue Shopping',
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
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckoutPage(),
    );
  }
}