//
 import 'package:figmaappnew/presentation/screens/Loginscreen.dart';
import 'package:flutter/material.dart';
// class Passwordfinal extends StatefulWidget {
//   @override
//   State<Passwordfinal> createState() => _PasswordfinalState();
// }
//
// class _PasswordfinalState extends State<Passwordfinal> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Align(
//           alignment: Alignment.topCenter,
//           child: Padding(
//             padding: const EdgeInsets.all(40.0),
//             child: Column(
//               children: [
//                 Container(
//                   width: 328,
//                   height: 408,
//                   padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
//                   clipBehavior: Clip.antiAlias,
//                   decoration: ShapeDecoration(
//                     color: Color(0xFFF4FCFA),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(32),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Container(
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     width: 104,
//                                     height: 32,
//                                     child: Stack(children: [
//                                       Image.asset('images/quickmart (2).png', width: 100, height: 50,)
//                                     ]),
//                                   ),
//                                   const SizedBox(width: 104),
//                                   TextButton(
//                                     onPressed: () {
//                                       // Handle button click
//                                     },
//                                     style: TextButton.styleFrom(
//                                       primary: Color(0xFF21D4B4), // Text color
//                                     ),
//                                     child: Text(
//                                       'Skip for now',
//                                       style: TextStyle(
//                                         color: Color(0xFF21D4B4),
//                                         fontSize: 12,
//                                         fontFamily: 'Plus Jakarta Sans',
//                                         fontWeight: FontWeight.w500,
//                                         height: 0.11,
//                                         letterSpacing: 0.07,
//                                       ),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             const SizedBox(height: 46),
//                             Container(
//                               width: 240,
//                               height: 240,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   image: AssetImage("images/01 Online Shopping 2.png"),
//                                   fit: BoxFit.fill,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 20), // Add spacing between containers
//                 Container(
//                   width: 328,
//                   height: 137,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         width: 284,
//                         child: Text(
//                           'Explore a wide range of products',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: Color(0xFF1B1A1A),
//                             fontSize: 24,
//                             fontFamily: 'Plus Jakarta Sans',
//                             fontWeight: FontWeight.w700,
//                             height: 1.05,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       SizedBox(
//                         width: 328,
//                         child: Text(
//                           'Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs.',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: Color(0xFF6F7384),
//                             fontSize: 14,
//                             fontFamily: 'Plus Jakarta Sans',
//                             fontWeight: FontWeight.w400,
//                             height: 1.50,
//                             letterSpacing: 0.07,
//                           ),
//                         ),
//                       ),
//                       // SizedBox(height: 20),
//
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 30,),
//                 Column(
//                     children:[Container(
//                       width: double.maxFinite,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Handle button click
//                         },
//                         style: ElevatedButton.styleFrom(
//                           primary: Colors.black, // Button background color
//                           onPrimary: Colors.white, // Button text color
//                           elevation: 4, // Button elevation
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             side: BorderSide(color: Color(0xFF1B1A1A), width: 14), // Button border
//                           ),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
//                           child: Text(
//                             "Continue",
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     ])
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
class Passwordfinal extends StatefulWidget {
  @override
  State<Passwordfinal> createState() => _PasswordfinalState();
}

class _PasswordfinalState extends State<Passwordfinal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                Container(
                  width: 328,
                  height: 418,
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF4FCFA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: Center( // Center the content
                    child: Container(
                      width: 240,
                      height: 270,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/Rectangle 1741.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
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
                          'New password set successfully',
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
                          'Congratulations! Your password has been set successfully. Please proceed to the login screen to verify your account.',
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
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle button click
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // Button background color
                          onPrimary: Colors.white, // Button text color
                          elevation: 4, // Button elevation
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            // Button border
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}