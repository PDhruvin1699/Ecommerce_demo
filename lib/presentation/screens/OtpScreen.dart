import 'package:figmaappnew/presentation/screens/Loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OTPScreen(),
    );
  }
}

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController _otpController = TextEditingController();
  List<TextEditingController> _otpControllers = List.generate(6, (index) => TextEditingController());
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
              title: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 0.0,),
                child: Text(
                  'Verification Code',
                  style: TextStyle(
                    color: Color(0xFF1B1A1A),
                    fontSize: 16,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                    letterSpacing: 0.07,
                  ),
                ),
              ),
            ),
            Divider(
              color: Color(0xFFF4F5FD), // Customize the color of the divider
              height: 1, // Customize the height of the divider
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Text(
              'Email Verification',
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
                'Enter the 6-digit verification code send to your email address.',
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


            SizedBox(height: 20.0),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            6,
                (index) => Container(
              width: 50, // Adjust the width as needed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), // Customize the corner radius as needed
                border: Border.all(
                  color: Color(0xFF21D4B4), // Customize the border color
                  width: 1.0, // Customize the border width
                ),
              ),
              child: PinInputTextField(
                pinLength: 1, // Single digit input
                decoration: BoxTightDecoration(),
                controller: _otpControllers[index],
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                onChanged: (pin) {
                  // Handle OTP input
                  if (pin.isNotEmpty && index < 5) {
                    // Move focus to the next field when a digit is entered
                    FocusScope.of(context).nextFocus();
                  }
                },
              ),
            ),
          ),
        ),

            SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
                // Handle resend code button press
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 130.0),
                child: Text(
                  'Resend Code',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF21D4B4),
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                    letterSpacing: 0.07,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
                children:[Container(
                  width: double.infinity,
                  // Make the container take up the full width
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
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
                        'Proceed',
                        style: TextStyle(
                          // color: Colors.white,
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

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }
}
