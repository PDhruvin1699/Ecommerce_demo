// import 'package:flutter/material.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: CheckoutScreen(),
//     );
//   }
// }
//
// class CheckoutScreen extends StatefulWidget {
//   @override
//   _CheckoutScreenState createState() => _CheckoutScreenState();
// }
//
// class _CheckoutScreenState extends State<CheckoutScreen> {
//   int _currentStep = 0;
//   String? selectedCountry; // Store selected country
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   PhoneNumber? phoneNumber; // Store selected phone number
//   // final List<Map<String, dynamic>> countryData = [
//   //   {'image': 'images/Pakistan.png'},
//   //   {'image': 'images/indian-flag-icon-21372.jpg'},
//   //   {'image': 'images/united-states_206626.png'},
//   // ];
//   // String? selectedCountry;
//   String?selectedValue;
//
//   // Define your dropdown items here
//   List<String> dropdownItems = ['Item 1', 'Item 2', 'Item 3'];
//   List<String> dropdownItems1 = ['Item 5', 'Item 2', 'Item 3'];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: 100,
//             decoration: BoxDecoration(
//               border: Border(
//                 bottom: BorderSide(
//                   color: Color(0xFFC0C0C0), // Color of the horizontal line
//                   width: 1, // Adjust the line thickness as needed
//                 ),
//               ),
//             ),
//             child: AppBar(
//               elevation: 0,
//               backgroundColor: Colors.transparent,
//               leading: IconButton(
//                 icon: Icon(Icons.arrow_back, color: Colors.black),
//                 onPressed: () {
//                   // Handle back button press
//                 },
//               ),
//               title: Text(
//                 'Checkout',
//                 style: TextStyle(
//                   color: Color(0xFF1B1A1A),
//                   fontSize: 14,
//                   fontFamily: 'Plus Jakarta Sans',
//                   fontWeight: FontWeight.w500,
//                   height: 1.11,
//                   letterSpacing: 0.07,
//                 ),
//               ),
//             ),
//           ),
//           SingleChildScrollView(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 14.0),
//                   child: Container(
//                     height: 65,
//                     constraints:
//                     BoxConstraints(maxHeight: 400), // Adjust the maximum height as needed
//                     child: Row(
//                       children: [
//                         _buildStep(0, 'Shipping', 'images/box.png'),
//                         _buildStepperLine(),
//                         _buildStep(1, 'Payment', 'images/card-tick.png'),
//                         _buildStepperLine(),
//                         _buildStep(2, 'Review', 'images/clipboard-tick.png'),
//                       ],
//                     ),
//                   ),
//                 ),
//                 // Add other widgets below the Stepper
//                 SizedBox(height: 30),
//
//                 // Add some spacing
//                 // Bordered TextFiel
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left:8.0),
//                       child: Text('Full Name',style: TextStyle(
//                         color: Color(0xFF1B1A1A),
//                         fontSize: 14,
//                         fontFamily: 'Plus Jakarta Sans',
//                         fontWeight: FontWeight.w500,
//                         height: 0.11,
//                         letterSpacing: 0.07,
//                       ),),
//                     )
//                   ],
//                 ),
//                 SizedBox(height: 15,),
//                 Container(
//                   width: double.maxFinite, // Adjust the width as needed
//                   height: 60, // Adjust the height as needed
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Color(0xFFF4F5FD), // Border color
//                       width: 1, // Border width
//                     ),
//                     borderRadius: BorderRadius.circular(12), // Border radius
//                   ),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       // labelText: 'Full Name',
//                       hintText: 'Enter a Full Name',
//
//                       border: InputBorder.none, // Remove default border
//                       contentPadding: EdgeInsets.all(10), // Adjust padding as needed
//                     ),
//                   ),
//                 ),
//                 // Container(
//                 //   width: double.maxFinite, // Adjust the width as needed
//                 //   height: 60, // Adjust the height as needed
//                 //   decoration: BoxDecoration(
//                 //     border: Border.all(
//                 //       color: Color(0xFFF4F5FD), // Border color
//                 //       width: 1, // Border width
//                 //     ),
//                 //     borderRadius: BorderRadius.circular(12), // Border radius
//                 //   ),
//                 //   child: Row(
//                 //     children: [
//                 //       // Dropdown for Country
//                 //       Expanded(
//                 //         flex: 1,
//                 //         child: DropdownButton<String>(
//                 //           value: selectedCountry,
//                 //           onChanged: (newValue) {
//                 //             setState(() {
//                 //               selectedCountry = newValue;
//                 //             });
//                 //           },
//                 //           items: countryData.map<DropdownMenuItem<String>>((country) {
//                 //             return DropdownMenuItem<String>(
//                 //               value: country['image'],
//                 //               child: Image.asset(
//                 //                 country['image'],
//                 //                 width: 26, // Adjust the width as needed
//                 //                 height: 20, // Adjust the height as needed
//                 //               ),
//                 //             );
//                 //           }).toList(),
//                 //         ),
//                 //       ),
//                 //
//                 //       // Vertical Divider
//                 //       VerticalDivider(),
//                 //
//                 //       // Mobile Number TextField
//                 //       Expanded(
//                 //         flex: 7,
//                 //         child: TextField(
//                 //           decoration: InputDecoration(
//                 //             hintText: 'Mobile Number',
//                 //             border: InputBorder.none, // Remove default border
//                 //             contentPadding: EdgeInsets.all(10), // Adjust padding as needed
//                 //           ),
//                 //         ),
//                 //       ),
//                 //     ],
//                 //   ),
//                 // ),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left:8.0),
//                       child: Text('Phone Number',style: TextStyle(
//                         color: Color(0xFF1B1A1A),
//                         fontSize: 14,
//                         fontFamily: 'Plus Jakarta Sans',
//                         fontWeight: FontWeight.w500,
//                         height: 0.11,
//                         letterSpacing: 0.07,
//                       ),),
//                     )
//                   ],
//                 ),
//                 SizedBox(height: 15,),
//                 Container(
//                   width: double.maxFinite, // Adjust the width as needed
//                   height: 60, // Adjust the height as needed
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Color(0xFFF4F5FD), // Border color
//                       width: 1, // Border width
//                     ),
//                     borderRadius: BorderRadius.circular(12), // Border radius
//                   ),
//                   child: Form(
//                     key: formKey,
//                     child: InternationalPhoneNumberInput(
//                       onInputChanged: (PhoneNumber number) {
//                         phoneNumber = number;
//                       },
//                       initialValue: phoneNumber,
//                       selectorConfig: SelectorConfig(
//                         selectorType: PhoneInputSelectorType.DIALOG,
//                       ),
//                       inputDecoration: InputDecoration(
//                         hintText: 'Mobile Number',
//                         border: InputBorder.none, // Remove default border
//                         contentPadding: EdgeInsets.all(10), // Adjust padding as needed
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20,),
//
//                 Container(
//                   width: double.maxFinite, // Adjust the width as needed
//                   height: 60, // Adjust the height as needed
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Color(0xFFF4F5FD), // Border color
//                       width: 1, // Border width
//                     ),
//                     borderRadius: BorderRadius.circular(12), // Border radius
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 8.0),
//                         child: Text(
//                           'Select Province',
//                           style: TextStyle(
//                             color: Colors.black, // Title text color
//                             fontSize: 14,
//                           ),
//                         ),
//                       ),
//                       DropdownButton<String>(
//                         value: selectedValue,
//                         onChanged: (newValue) {
//                           setState(() {
//                             selectedValue = newValue;
//                           });
//                         },
//                         items: dropdownItems.map((item) {
//                           return DropdownMenuItem<String>(
//                             value: item,
//                             child: Text(
//                               item,
//                               style: TextStyle(
//                                 fontSize: 14,
//                               ),
//                             ),
//                           );
//                         }).toList(),
//                         underline: Container(), // Remove the default underline
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 20,),
//
//                 Container(
//                   width: double.maxFinite, // Adjust the width as needed
//                   height: 60, // Adjust the height as needed
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Color(0xFFF4F5FD), // Border color
//                       width: 1, // Border width
//                     ),
//                     borderRadius: BorderRadius.circular(12), // Border radius
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 8.0),
//                         child: Text(
//                           'Select City',
//                           style: TextStyle(
//                             color: Colors.black, // Title text color
//                             fontSize: 14,
//                           ),
//                         ),
//                       ),
//                       DropdownButton<String>(
//                         value: selectedValue,
//                         onChanged: (newValue) {
//                           setState(() {
//                             selectedValue = newValue;
//                           });
//                         },
//                         items: dropdownItems1.map((item) {
//                           return DropdownMenuItem<String>(
//                             value: item,
//                             child: Text(
//                               item,
//                               style: TextStyle(
//                                 fontSize: 14,
//                               ),
//                             ),
//                           );
//                         }).toList(),
//                         underline: Container(), // Remove the default underline
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 30),
//
//                 // Add some spacing
//                 // Bordered TextFiel
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left:8.0),
//                       child: Text('Street Address',style: TextStyle(
//                         color: Color(0xFF1B1A1A),
//                         fontSize: 14,
//                         fontFamily: 'Plus Jakarta Sans',
//                         fontWeight: FontWeight.w500,
//                         height: 0.11,
//                         letterSpacing: 0.07,
//                       ),),
//                     )
//                   ],
//                 ),
//                 SizedBox(height: 15,),
//                 Container(
//                   width: double.maxFinite, // Adjust the width as needed
//                   height: 60, // Adjust the height as needed
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Color(0xFFF4F5FD), // Border color
//                       width: 1, // Border width
//                     ),
//                     borderRadius: BorderRadius.circular(12), // Border radius
//                   ),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       // labelText: 'Full Name',
//                       hintText: 'Enter Street Address',
//
//                       border: InputBorder.none, // Remove default border
//                       contentPadding: EdgeInsets.all(10), // Adjust padding as needed
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 30),
//
//                 // Add some spacing
//                 // Bordered TextFiel
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left:8.0),
//                       child: Text('Postal Code',style: TextStyle(
//                         color: Color(0xFF1B1A1A),
//                         fontSize: 14,
//                         fontFamily: 'Plus Jakarta Sans',
//                         fontWeight: FontWeight.w500,
//                         height: 0.11,
//                         letterSpacing: 0.07,
//                       ),),
//                     )
//                   ],
//                 ),
//                 SizedBox(height: 15,),
//                 Container(
//                   width: double.maxFinite, // Adjust the width as needed
//                   height: 60, // Adjust the height as needed
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Color(0xFFF4F5FD), // Border color
//                       width: 1, // Border width
//                     ),
//                     borderRadius: BorderRadius.circular(12), // Border radius
//                   ),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       // labelText: 'Full Name',
//                       hintText: 'Enter Postal code',
//
//                       border: InputBorder.none, // Remove default border
//                       contentPadding: EdgeInsets.all(10), // Adjust padding as needed
//                     ),
//                   ),
//                 ),
//
//                 SizedBox(height: 15),
//                 Center(
//                     child: Container(
//                       width: 400, // Set the container's width to occupy the full width
//                       child: TextButton(
//                           onPressed: () {
//                             // Handle button press
//                           },
//                           style: TextButton.styleFrom(
//                             padding: EdgeInsets.symmetric(vertical: 16.0), // Adjust vertical padding as needed
//                             backgroundColor: Colors.black, // Set transparent background
//                             side: BorderSide(
//                               color: Color(0xFFF4F5FD), // Border color
//                               width: 1.0, // Border width
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0), // Adjust the border radius as needed
//                             ),
//                           ),
//                           child:Text(
//                             'Save',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 14,
//                               fontFamily: 'Plus Jakarta Sans',
//                               fontWeight: FontWeight.w600,
//                               height: 0,
//                             ),
//                           )
//                       ),
//                     )
//
//                 ),
//                 // Add more widgets below the TextField if needed
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildStep(int stepNumber, String stepTitle, String imagePath) {
//     return Expanded(
//       child: Column(
//         children: [
//           Image.asset(
//             imagePath,
//             width: 50, // Adjust the width as needed
//             height: 50, // Adjust the height as needed
//           ),
//           Text(
//             stepTitle,
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildStepperLine() {
//     return Container(
//       width: 60, // Width of the stepper line
//       height: 1, // Adjust the height as needed
//       color: Color(0xFFC0C0C0), // Color of the stepper line
//     );
//   }
// }
// // import 'package:flutter/material.dart';
// //
// // void main() {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: DropdownListScreen(),
// //     );
// //   }
// // }
// //
// // class DropdownListScreen extends StatefulWidget {
// //   @override
// //   _DropdownListScreenState createState() => _DropdownListScreenState();
// // }
// //
// // class _DropdownListScreenState extends State<DropdownListScreen> {
// //   String?selectedValue;
// //
// //   // Define your dropdown items here
// //   List<String> dropdownItems = ['Item 1', 'Item 2', 'Item 3'];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Custom Dropdown List'),
// //       ),
// //       body: Center(
// //         child: Container(
// //           width: 300, // Adjust the width as needed
// //           height: 50, // Adjust the height as needed
// //           decoration: BoxDecoration(
// //             border: Border.all(
// //               color: Colors.black, // Border color
// //               width: 1, // Border width
// //             ),
// //             borderRadius: BorderRadius.circular(12), // Border radius
// //           ),
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //             children: [
// //               Padding(
// //                 padding: const EdgeInsets.only(left: 8.0),
// //                 child: Text(
// //                   'Dropdown Title',
// //                   style: TextStyle(
// //                     color: Colors.black, // Title text color
// //                     fontSize: 14,
// //                   ),
// //                 ),
// //               ),
// //               DropdownButton<String>(
// //                 value: selectedValue,
// //                 onChanged: (newValue) {
// //                   setState(() {
// //                     selectedValue = newValue;
// //                   });
// //                 },
// //                 items: dropdownItems.map((item) {
// //                   return DropdownMenuItem<String>(
// //                     value: item,
// //                     child: Text(
// //                       item,
// //                       style: TextStyle(
// //                         fontSize: 14,
// //                       ),
// //                     ),
// //                   );
// //                 }).toList(),
// //                 underline: Container(), // Remove the default underline
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),


import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckoutPaymentScreen(),
    );
  }
}

class CheckoutPaymentScreen extends StatefulWidget {
  @override
  _CheckoutPaymentScreenState createState() => _CheckoutPaymentScreenState();
}

class _CheckoutPaymentScreenState extends State<CheckoutPaymentScreen> {
  int _currentStep = 0;

  // final List<Map<String, dynamic>> countryData = [
  //   {'image': 'images/Pakistan.png'},
  //   {'image': 'images/indian-flag-icon-21372.jpg'},
  //   {'image': 'images/united-states_206626.png'},
  // ];
  // String? selectedCountry;
  TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.blue, // Set your desired primary color
            hintColor: Colors.blue, // Set your desired accent color
            colorScheme: ColorScheme.light(primary: Colors.blue),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
      initialEntryMode: DatePickerEntryMode.input,
      initialDatePickerMode: DatePickerMode.year,
    );

    if (picked != null && picked != DateTime.now()) {
      String formattedDate = '${picked.month}/${picked.year}';
      setState(() {
        _dateController.text = formattedDate;
      });
      // Do something with the selected date
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFFC0C0C0), // Color of the horizontal line
                  width: 1, // Adjust the line thickness as needed
                ),
              ),
            ),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  // Handle back button press
                },
              ),
              title: Text(
                'Checkout',
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
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0),
                    child: Container(
                      height: 66,
                      constraints:
                      BoxConstraints(maxHeight: 400), // Adjust the maximum height as needed
                      child: Row(
                        children: [
                          _buildStep(0, 'Shipping', 'images/box1.png'),
                          _buildStepperLine(),
                          _buildStep(1, 'Payment', 'images/card-tick (1).png'),
                          _buildStepperLine(),
                          _buildStep(2, 'Review', 'images/clipboard-tick.png'),
                        ],
                      ),
                    ),
                  ),
                  // Add other widgets below the Stepper
                  SizedBox(height: 30),

                  // Add some spacing
                  // Bordered TextFiel

                  // Add more widgets below the TextField if needed
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 160, // Set the width of the button
                        height: 64, // Set the height of the button
                        padding: const EdgeInsets.symmetric(vertical: 19),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF4FCFA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),),
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Set this to transparent to make the button background color match the container color
                            elevation: 0, // Optional: Set the elevation to 0 to remove the shadow
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/Group 1.png",width: 61.10,
                                height: 17,// Set the color of the icon
                              ),
                              SizedBox(width: 8), // Add some spacing between the icon and text
                              Text(
                                '', // Set your button text here
                                style: TextStyle(
                                  color: Colors.white, // Set the color of the text
                                  fontSize: 16, // Set the font size of the text
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 40,),
                      Container(
                        width: 160, // Set the width of the button
                        height: 64, // Set the height of the button
                        padding: const EdgeInsets.symmetric(vertical: 19),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF4FCFA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),),
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Set this to transparent to make the button background color match the container color
                            elevation: 0, // Optional: Set the elevation to 0 to remove the shadow
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/Group 2.png",width: 61.10,
                                height: 17,// Set the color of the icon
                              ),
                              SizedBox(width: 8), // Add some spacing between the icon and text
                              Text(
                                '', // Set your button text here
                                style: TextStyle(
                                  color: Colors.white, // Set the color of the text
                                  fontSize: 16, // Set the font size of the text
                                ),
                              ),
                            ],
                          ),

                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text('Card Holder Name',style: TextStyle(
                          color: Color(0xFF1B1A1A),
                          fontSize: 14,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w500,
                          height: 0.11,
                          letterSpacing: 0.07,
                        ),),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: double.maxFinite, // Adjust the width as needed
                    height: 60, // Adjust the height as needed
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFF4F5FD), // Border color
                        width: 1, // Border width
                      ),
                      borderRadius: BorderRadius.circular(12), // Border radius
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        // labelText: 'Full Name',
                        hintText: 'Enter a Cardholder name',

                        border: InputBorder.none, // Remove default border
                        contentPadding: EdgeInsets.all(10), // Adjust padding as needed
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text('Card Number',style: TextStyle(
                          color: Color(0xFF1B1A1A),
                          fontSize: 14,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w500,
                          height: 0.11,
                          letterSpacing: 0.07,
                        ),),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: double.maxFinite, // Adjust the width as needed
                    height: 60, // Adjust the height as needed
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFF4F5FD), // Border color
                        width: 1, // Border width
                      ),
                      borderRadius: BorderRadius.circular(12), // Border radius
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        // labelText: 'Full Name',
                        hintText: '4111 1111 1111 1111',
                        hintStyle: TextStyle(
                          color: Color(0xFFC0C0C0),
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 0.06,
                        ),

                        border: InputBorder.none, // Remove default border
                        contentPadding: EdgeInsets.all(10), // Adjust padding as needed
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        children: [
                          Text('Expiration',style: TextStyle(
                            color: Color(0xFF1B1A1A),
                            fontSize: 14,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w500,
                            height: 0.11,
                            letterSpacing: 0.07,
                          ),),
                          SizedBox(height: 10,),
                          Container(
                            width: 160, // Set the width of the button
                            height: 64, // Set the height of the button
                            padding: const EdgeInsets.symmetric(vertical: 19),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                                borderRadius: BorderRadius.circular(12),
                              ),),
                            child: InkWell(
                              onTap: () {
                                _selectDate(context);
                              },
                              child: TextFormField(
                                controller: _dateController,
                                enabled: false,
                                decoration: InputDecoration(
                                  hintText: 'MM/YY',
                                  hintStyle: TextStyle(
                                    color: Color(0xFFC0C0C0),
                                    fontSize: 12,
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 0.06,
                                  ),
                                  border: InputBorder.none,
                                  // suffixIcon: Icon(Icons.calendar_today),
                                ),
                              ),
                            ),
                          )],
                      ),
                      SizedBox(width: 40,),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 120.0),
                            child: Text('CVV',style: TextStyle(
                              color: Color(0xFF1B1A1A),
                              fontSize: 14,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w500,
                              height: 0.11,
                              letterSpacing: 0.07,
                            ),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: 160, // Set the width of the button
                            height: 64, // Set the height of the button
                            padding: const EdgeInsets.symmetric(vertical: 19),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                                borderRadius: BorderRadius.circular(12),
                              ),),

                            child: TextField(

                              decoration: InputDecoration(
                                hintText: '123',
                                hintStyle: TextStyle(
                                  color: Color(0xFFC0C0C0),
                                  fontSize: 12,
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                  letterSpacing: 0.06,
                                ),
                                border: InputBorder.none,

                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 170),
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
                              'Save',
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
        ],
      ),
    );
  }

  Widget _buildStep(int stepNumber, String stepTitle, String imagePath) {
    return Expanded(
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 50, // Adjust the width as needed
            height: 50, // Adjust the height as needed
          ),
          Text(
            stepTitle,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildStepperLine() {
    return Container(
      width: 60, // Width of the stepper line
      height: 1, // Adjust the height as needed
      color: Color(0xFFC0C0C0), // Color of the stepper line
    );
  }
}