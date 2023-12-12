import 'package:figmaappnew/presentation/screens/FogetPassword/forgetemail.dart';
import 'package:figmaappnew/presentation/screens/Signupscreen.dart';
import 'package:figmaappnew/presentation/screens/mainpages/dashboardscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          padding: EdgeInsets.only(top: 8, left: 28), // Customize padding here
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false, // Set this to false to remove the default leading icon
            titleSpacing: 0, // Set the title spacing to 0 to move the title to the left corner
            title: Padding(
              padding: const EdgeInsets.only(right: 12.0), // Adjust the padding as needed
              child: Container(
                width: 100, // Set the desired width
                height: 50, // Set the desired height
                child: Image.asset(
                  'images/quickmart (1).png',
                  fit: BoxFit.contain,
                ),
              ),
            ),

           // Add any other actions if needed
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  color: Color(0xFF1B1A1A),
                  fontSize: 24,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w700,
                  height: 0.09,
                ),
              ),
              SizedBox(height: 25),
              GestureDetector(
                onTap: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) =>SignupScreen()),
                  // );
                  Navigator.pushNamed(context, '/signup');
                },
                child:
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Don’t have an account?',
                      style: TextStyle(
                        color: Color(0xFF6F7384),
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                        letterSpacing: 0.07,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        color: Color(0xFF6F7384),
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w500,
                        height: 0.11,
                        letterSpacing: 0.07,
                      ),
                    ),
                    TextSpan(
                      text: 'Signup',
                      style: TextStyle(
                        color: Color(0xFF21D4B4),
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w500,
                        height: 0.11,
                        letterSpacing: 0.07,
                      ),
                    ),
                  ],
                ),
              ),),
              SizedBox(height: 20),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //
              //     Text(
              //       'Full Name',
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     SizedBox(height: 8),
              //     TextFormField(
              //       decoration: InputDecoration(
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(12),
              //         ),
              //         hintText: 'Enter your full name',
              //         filled: true,
              //         fillColor: Colors.white,
              //         contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              //         enabledBorder: OutlineInputBorder(
              //           borderSide: BorderSide(color: Color(0xFF21D4B4), width: 1),
              //           borderRadius: BorderRadius.circular(12),
              //         ),
              //         focusedBorder: OutlineInputBorder(
              //           borderSide: BorderSide(color: Color(0xFF21D4B4), width: 2),
              //           borderRadius: BorderRadius.circular(12),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(height: 20),
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
                      hintText: 'Enter your full name',
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
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
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 370,
                    height: 68,
                    padding: const EdgeInsets.only(
                      top: 16,
                      left: 16,
                      right: 12,
                      bottom: 16,
                    ),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: TextFormField(
                      obscureText: !_showPassword,
                      decoration: InputDecoration(
                        // contentPadding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                        border: InputBorder.none,
                        hintText: 'Enter your password',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                          child: Icon(
                            _showPassword ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              SizedBox(
                width: 340,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dashboard');

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 221.0),
                    child: Text(
                      'Forgot password?',
                      textAlign: TextAlign.right,
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
              ),
              SizedBox(height: 25,),
              Column(
                  children:[
                    Container(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>Dashboard()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // Button background color
                          onPrimary: Colors.white, // Button text color
                          elevation: 0, // Button elevation
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                          child: Text(
                            "Login",
                            style: TextStyle(

                              fontSize: 18,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.white, width: 0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Text(
                          'Login with Google',
                          style: TextStyle(
                            color: Color(0xFF1C1B1B),
                            fontSize: 14,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )
                    ),
                    Container(

                      width: 24,
                      height: 24,


                      child: Image.asset('images/google.png',
                        width: 24,height: 24,),
                    )
                  ],
                ),
              ),
              SizedBox(height: 250,),
              Column(children: [
                SizedBox(
                  width: 328,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'By login , you agree to our',
                          style: TextStyle(
                            color: Color(0xFF1B1A1A),
                            fontSize: 12,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                            height: 0,
                            letterSpacing: 0.06,
                          ),
                        ),
                        TextSpan(
                          text: ' Privacy Policy ',
                          style: TextStyle(
                            color: Color(0xFF1F8BDA),
                            fontSize: 12,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                            height: 0,
                            letterSpacing: 0.06,
                          ),
                        ),
                        TextSpan(
                          text: 'and',
                          style: TextStyle(
                            color: Color(0xFF1B1A1A),
                            fontSize: 12,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                            height: 0,
                            letterSpacing: 0.06,
                          ),
                        ),
                        TextSpan(
                          text: ' Terms & Conditions',
                          style: TextStyle(
                            color: Color(0xFF1F8BDA),
                            fontSize: 12,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                            height: 0,
                            letterSpacing: 0.06,
                          ),
                        ),
                        TextSpan(
                          text: '.',
                          style: TextStyle(
                            color: Color(0xFF1B1A1A),
                            fontSize: 12,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                            height: 0,
                            letterSpacing: 0.06,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
              )
            ],

          ),
        ),
      ),
    );
  }
}
