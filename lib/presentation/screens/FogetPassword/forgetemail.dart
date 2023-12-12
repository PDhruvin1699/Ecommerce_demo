import 'package:figmaappnew/presentation/screens/FogetPassword/forgetotp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewEmailScreen(),
    );
  }
}

class NewEmailScreen extends StatefulWidget {
  @override
  _NewEmailScreenState createState() => _NewEmailScreenState();
}

class _NewEmailScreenState extends State<NewEmailScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight+1), // 1 extra for the underline
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    // Handle back button press
                  },
                ),
              ),
              title: Text(
                'Forgot Password',
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
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: SizedBox(
                    width: 136,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '021/',
                            style: TextStyle(
                              color: Color(0xFF1B1A1A),
                              fontSize: 14,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w500,
                              height: 0.11,
                              letterSpacing: 0.07,
                            ),
                          ),
                          TextSpan(
                            text: '03',
                            style: TextStyle(
                              color: Color(0xFFC0C0C0),
                              fontSize: 14,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w500,
                              height: 0.11,
                              letterSpacing: 0.07,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Color(0xFFF4F5FD), // Customize the color of the divider
              height: 1, // Customize the height of the divider
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'New Password',
              style: TextStyle(
                color: Color(0xFF1B1A1A),
                fontSize: 24,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w700,
                height: 0.05,
              ),
            ),


            SizedBox(height: 20,),
            SizedBox(
              width: 328,
              child: Text(
                'Enter your email address for verification.',
                style: TextStyle(
                  color: Color(0xFF6F7384),
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w400,
                  height: 0.11,
                  letterSpacing: 0.07,
                ),
              ),
            ),


            SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Enter your Email',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF21D4B4), width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF21D4B4), width: 2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.0),

            SizedBox(height: 20),
            Column(
                children:[Container(
                  width: double.infinity,
                  // Make the container take up the full width
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgetOTP()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),

                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      child: Text(
                        'Send',
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
                )
                ]),
          ],
        ),
      ),
    );
  }


}

