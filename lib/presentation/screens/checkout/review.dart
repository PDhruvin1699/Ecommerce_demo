
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckoutReviewScreen(),
    );
  }
}

class CheckoutReviewScreen extends StatefulWidget {
  @override
  _CheckoutReviewScreenState createState() => _CheckoutReviewScreenState();
}

class _CheckoutReviewScreenState extends State<CheckoutReviewScreen> {
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
            height: 90,
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
                          _buildStep(0, 'Shipping', 'images/box1.png',Color(0xFF21D4B4)),
                          _buildStepperLine(),
                          _buildStep(1, 'Payment', 'images/card-tick1.png',Color(0xFF21D4B4)),
                          _buildStepperLine(),
                          _buildStep(2, 'Review', 'images/clipboard-tick.png', Color(0xFF6F7384),),
                        ],
                      ),
                    ),
                  ),
                  // Add other widgets below the Stepper
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 19.0),
                    child:   Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [

                        SizedBox(

                          width:284,

                          child: Text(

                            'Items (2)',

                            style: TextStyle(

                              color: Color(0xFF1B1A1A),

                              fontSize: 14,

                              fontFamily: 'Plus Jakarta Sans',

                              fontWeight: FontWeight.w500,

                              height: 0.11,

                              letterSpacing: 0.07,

                            ),

                          ),

                        ),



                        GestureDetector(

                          onTap: () {},

                          child: Image.asset('images/arrow-right.png',width: 24,height: 24,),

                        )

                      ],

                    ),
                  ),
                  SizedBox(height: 10,),
                  Container( // Add a container with a bottom border for the divider effect
                    width: double.infinity,
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide( color: Color(0xFFC0C0C0))), // Set the color of the line
                    ),
                  ),


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
                                'Shipping Address',
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
                                'Full Name',
                                style: TextStyle(
                                  color: Color(0xFF6F7384),
                                  fontSize: 12,
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                  letterSpacing: 0.06,
                                ),
                              ),Text(
                                'Ahmad Khan',
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
                          SizedBox(height: 15.0), // Add spacing between lines

                          // Second line
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mobile Number',
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
                                '+92 000-0000000',
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
                          SizedBox(height: 15.0), // Add spacing between lines

                          // Second line
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Province',
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
                                'Sindh',
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
                          SizedBox(height: 15.0), // Add spacing between lines

                          // Second line
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'City',
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
                                'Karachi',
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
                          SizedBox(height: 15.0), // Add spacing between lines

                          // Second line
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Street Address',
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
                                'XYZ-Address',
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
                          SizedBox(height: 15.0), // Add spacing between lines

                          // Second line
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'PostalCode',
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
                                'xyz',
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
                          // Add spacing between lines

                          // Third line

                        ]),
                  ),
                  SizedBox(height: 5.0),
                  Container( // Add a container with a bottom border for the divider effect
                    width: double.infinity,
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide( color: Color(0xFFC0C0C0))), // Set the color of the line
                    ),
                  ),
                  SizedBox(height: 10.0),
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
                            SizedBox(height: 15.0), // Add spacing between lines

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
                            SizedBox(height: 25.0),
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
                          ] )),

                  SizedBox(height: 200),
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
                              'Place Order',
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

  Widget _buildStep(int stepNumber, String stepTitle, String imagePath,Color textColor) {
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
            style: TextStyle(fontWeight: FontWeight.bold,color: textColor),
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