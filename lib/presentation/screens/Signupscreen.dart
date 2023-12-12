// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(LoginApp());
// }
//
// class LoginApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SignupScreen(),
//     );
//   }
// }
//
// class SignupScreen extends StatefulWidget {
//   @override
//   _SignupScreenState createState() => _SignupScreenState();
// }
//
// class _SignupScreenState extends State<SignupScreen> {
//   bool _showPassword = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Image.asset('images/quickmart (2).png',
//             width: 50,height: 100),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(30.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Text(
//                 'Signup',
//                 style: TextStyle(
//                   color: Color(0xFF1B1A1A),
//                   fontSize: 24,
//                   fontFamily: 'Plus Jakarta Sans',
//                   fontWeight: FontWeight.w700,
//                   height: 0.05,
//                 ),
//               ),
//               SizedBox(height: 20,),
//               Text.rich(
//                 TextSpan(
//                   children: [
//                     TextSpan(
//                       text: 'Already have an account?',
//                       style: TextStyle(
//                         color: Color(0xFF6F7384),
//                         fontSize: 14,
//                         fontFamily: 'Plus Jakarta Sans',
//                         fontWeight: FontWeight.w400,
//                         height: 0.11,
//                         letterSpacing: 0.07,
//                       ),
//                     ),
//                     TextSpan(
//                       text: ' ',
//                       style: TextStyle(
//                         color: Color(0xFF6F7384),
//                         fontSize: 14,
//                         fontFamily: 'Plus Jakarta Sans',
//                         fontWeight: FontWeight.w500,
//                         height: 0.11,
//                         letterSpacing: 0.07,
//                       ),
//                     ),
//                     TextSpan(
//                       text: 'Login',
//                       style: TextStyle(
//                         color: Color(0xFF21D4B4),
//                         fontSize: 14,
//                         fontFamily: 'Plus Jakarta Sans',
//                         fontWeight: FontWeight.w500,
//                         height: 0.11,
//                         letterSpacing: 0.07,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//
//                   Text(
//                     'Full Name',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   TextFormField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       hintText: 'Enter your full name',
//                       filled: true,
//                       fillColor: Colors.white,
//                       contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Color(0xFF21D4B4), width: 1),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Color(0xFF21D4B4), width: 2),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Email',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   TextFormField(
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       hintText: 'Enter your full name',
//                       filled: true,
//                       fillColor: Colors.white,
//                       contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Color(0xFF21D4B4), width: 1),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Color(0xFF21D4B4), width: 2),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Password',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Container(
//                     width: 370,
//                     height: 60,
//                     padding: const EdgeInsets.only(
//                       top: 16,
//                       left: 16,
//                       right: 12,
//                       bottom: 16,
//                     ),
//                     decoration: ShapeDecoration(
//                       color: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     child: TextFormField(
//                       obscureText: !_showPassword,
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         hintText: 'Enter your password',
//                         suffixIcon: GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               _showPassword = !_showPassword;
//                             });
//                           },
//                           child: Icon(
//                             _showPassword ? Icons.visibility : Icons.visibility_off,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Column(
//                   children:[Container(
//                     width: double.maxFinite,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         // Handle button click
//                       },
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.black,
//                         onPrimary: Colors.white,
//                         elevation: 4,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                           side: BorderSide(color: Color(0xFF1B1A1A), width: 14),
//                         ),
//                       ),
//                       child: Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
//                           child: Text(
//                             'Create Account',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 14,
//                               fontFamily: 'Plus Jakarta Sans',
//                               fontWeight: FontWeight.w600,
//                               height: 0,
//                             ),
//                           )
//                       ),
//                     ),
//                   ),
//                   ]),
//               SizedBox(height: 20),
//               Container(
//                 width: double.maxFinite,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Handle button click
//                   },
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.white,
//                     onPrimary: Colors.black,
//                     elevation: 4,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                       side: BorderSide(color: Colors.white, width: 0),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                           padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                           child: Text(
//                             'Signup with Google',
//                             style: TextStyle(
//                               color: Color(0xFF1C1B1B),
//                               fontSize: 14,
//                               fontFamily: 'Plus Jakarta Sans',
//                               fontWeight: FontWeight.w600,
//                               height: 0,
//                             ),
//                           )
//                       ),
//                       Container(
//
//                         width: 24,
//                         height: 24,
//
//
//                         child: Image.asset('images/google.png',
//                           width: 24,height: 24,),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:figmaappnew/presentation/screens/OtpScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignupScreen(),
    );
  }
}

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
            titleSpacing: 0,
            automaticallyImplyLeading: false, // Set the title spacing to 0 to move the title to the left corner
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
            actions: [], // Add any other actions if needed
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Signup',
                  style: TextStyle(
                    color: Color(0xFF1B1A1A),
                    fontSize: 24,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w700,
                    height: 0.05,
                  ),
                ),
                SizedBox(height: 20,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have an account?',
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
                        text: 'Login',
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
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      'Full Name',
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
                SizedBox(height: 20),
                Column(
                    children:[
                      Container(
                        width: double.maxFinite,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => OTPScreen()),
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
                              "Create Account",
                              style: TextStyle(

                                fontSize: 14,
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
                Container(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button click
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
                              'Signup with Google',
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}