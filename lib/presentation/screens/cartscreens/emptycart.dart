import 'package:flutter/material.dart';
import 'emptycart.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CartEmptyScreen(),
    );
  }
}

class CartEmptyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 240,
              height: 240,
              child: Image.asset("images/01 Online Shopping 1.png"),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 284,
              child: Text(
                'Your cart is empty',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF1B1A1A),
                  fontSize: 24,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                  height: 0.05,
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 328,
              child: Text(
                'Looks like you have not added anything in your cart. Go ahead and explore top categories.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF6F7384),
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w400,
                  height: 1.11,
                  letterSpacing: 0.07,
                ),
              ),
            ),
            SizedBox(height: 30),
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
                      Navigator.pushNamed(context, '/dashboard', arguments: 1);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                    ),
                    child: Text(
                      'Explore Categories',
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
            ),
          ],
        ),
      ),
    );
  }
}
