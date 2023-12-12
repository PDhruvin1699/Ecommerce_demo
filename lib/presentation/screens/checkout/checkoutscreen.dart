import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckoutScreen(),
    );
  }
}

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int _currentStep = 0;
  String? selectedCountry; // Store selected country
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  PhoneNumber? phoneNumber; // Store selected phone number
  // final List<Map<String, dynamic>> countryData = [
  //   {'image': 'images/Pakistan.png'},
  //   {'image': 'images/indian-flag-icon-21372.jpg'},
  //   {'image': 'images/united-states_206626.png'},
  // ];
  // String? selectedCountry;
  String?selectedValue;

  // Define your dropdown items here
  List<String> dropdownItems = ['Item 1', 'Item 2', 'Item 3'];
  List<String> dropdownItems1 = ['Item 5', 'Item 2', 'Item 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
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
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0),
                    child: Container(
                      height: 65,
                      constraints:
                      BoxConstraints(maxHeight: 400), // Adjust the maximum height as needed
                      child: Row(
                        children: [
                          _buildStep(0, 'Shipping', 'images/box.png'),
                          _buildStepperLine(),
                          _buildStep(1, 'Payment', 'images/card-tick.png'),
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text('Full Name',style: TextStyle(
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
                        hintText: 'Enter a Full Name',

                        border: InputBorder.none, // Remove default border
                        contentPadding: EdgeInsets.all(10), // Adjust padding as needed
                      ),
                    ),
                  ),
                  // Container(
                  //   width: double.maxFinite, // Adjust the width as needed
                  //   height: 60, // Adjust the height as needed
                  //   decoration: BoxDecoration(
                  //     border: Border.all(
                  //       color: Color(0xFFF4F5FD), // Border color
                  //       width: 1, // Border width
                  //     ),
                  //     borderRadius: BorderRadius.circular(12), // Border radius
                  //   ),
                  //   child: Row(
                  //     children: [
                  //       // Dropdown for Country
                  //       Expanded(
                  //         flex: 1,
                  //         child: DropdownButton<String>(
                  //           value: selectedCountry,
                  //           onChanged: (newValue) {
                  //             setState(() {
                  //               selectedCountry = newValue;
                  //             });
                  //           },
                  //           items: countryData.map<DropdownMenuItem<String>>((country) {
                  //             return DropdownMenuItem<String>(
                  //               value: country['image'],
                  //               child: Image.asset(
                  //                 country['image'],
                  //                 width: 26, // Adjust the width as needed
                  //                 height: 20, // Adjust the height as needed
                  //               ),
                  //             );
                  //           }).toList(),
                  //         ),
                  //       ),
                  //
                  //       // Vertical Divider
                  //       VerticalDivider(),
                  //
                  //       // Mobile Number TextField
                  //       Expanded(
                  //         flex: 7,
                  //         child: TextField(
                  //           decoration: InputDecoration(
                  //             hintText: 'Mobile Number',
                  //             border: InputBorder.none, // Remove default border
                  //             contentPadding: EdgeInsets.all(10), // Adjust padding as needed
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text('Phone Number',style: TextStyle(
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
                    child: Form(
                      key: formKey,
                      child: InternationalPhoneNumberInput(
                        onInputChanged: (PhoneNumber number) {
                          phoneNumber = number;
                        },
                        initialValue: phoneNumber,
                        selectorConfig: SelectorConfig(
                          selectorType: PhoneInputSelectorType.DIALOG,
                        ),
                        inputDecoration: InputDecoration(
                          hintText: 'Mobile Number',
                          border: InputBorder.none, // Remove default border
                          contentPadding: EdgeInsets.all(10), // Adjust padding as needed
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Select Province',
                            style: TextStyle(
                              color: Colors.black, // Title text color
                              fontSize: 14,
                            ),
                          ),
                        ),
                        DropdownButton<String>(
                          value: selectedValue,
                          onChanged: (newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                          },
                          items: dropdownItems.map((item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            );
                          }).toList(),
                          underline: Container(), // Remove the default underline
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),

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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Select City',
                            style: TextStyle(
                              color: Colors.black, // Title text color
                              fontSize: 14,
                            ),
                          ),
                        ),
                        DropdownButton<String>(
                          value: selectedValue,
                          onChanged: (newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                          },
                          items: dropdownItems1.map((item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            );
                          }).toList(),
                          underline: Container(), // Remove the default underline
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),

                  // Add some spacing
                  // Bordered TextFiel
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text('Street Address',style: TextStyle(
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
                        hintText: 'Enter Street Address',

                        border: InputBorder.none, // Remove default border
                        contentPadding: EdgeInsets.all(10), // Adjust padding as needed
                      ),
                    ),
                  ),
                  SizedBox(height: 30),

                  // Add some spacing
                  // Bordered TextFiel
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text('Postal Code',style: TextStyle(
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
                        hintText: 'Enter Postal code',

                        border: InputBorder.none, // Remove default border
                        contentPadding: EdgeInsets.all(10), // Adjust padding as needed
                      ),
                    ),
                  ),

                  SizedBox(height: 15),
                  Center(
                      child: Container(
                        width: 400, // Set the container's width to occupy the full width
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
                  // Add more widgets below the TextField if needed
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
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DropdownListScreen(),
//     );
//   }
// }
//
// class DropdownListScreen extends StatefulWidget {
//   @override
//   _DropdownListScreenState createState() => _DropdownListScreenState();
// }
//
// class _DropdownListScreenState extends State<DropdownListScreen> {
//   String?selectedValue;
//
//   // Define your dropdown items here
//   List<String> dropdownItems = ['Item 1', 'Item 2', 'Item 3'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Custom Dropdown List'),
//       ),
//       body: Center(
//         child: Container(
//           width: 300, // Adjust the width as needed
//           height: 50, // Adjust the height as needed
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: Colors.black, // Border color
//               width: 1, // Border width
//             ),
//             borderRadius: BorderRadius.circular(12), // Border radius
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 8.0),
//                 child: Text(
//                   'Dropdown Title',
//                   style: TextStyle(
//                     color: Colors.black, // Title text color
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//               DropdownButton<String>(
//                 value: selectedValue,
//                 onChanged: (newValue) {
//                   setState(() {
//                     selectedValue = newValue;
//                   });
//                 },
//                 items: dropdownItems.map((item) {
//                   return DropdownMenuItem<String>(
//                     value: item,
//                     child: Text(
//                       item,
//                       style: TextStyle(
//                         fontSize: 14,
//                       ),
//                     ),
//                   );
//                 }).toList(),
//                 underline: Container(), // Remove the default underline
//               ),
//             ],
//           ),
//         ),
//       ),
