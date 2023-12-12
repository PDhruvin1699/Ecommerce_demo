import 'package:figmaappnew/presentation/screens/Loginscreen.dart';
import 'package:flutter/material.dart';



import 'package:figmaappnew/presentation/screens/Signupscreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
    );
  }
}

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}



class FirstOnboardingScreen extends StatelessWidget {
  @override
  final VoidCallback onNextPressed;

  FirstOnboardingScreen({required this.onNextPressed});

  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 450,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFFF4FCFA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0, // Align to the top
                  left: 0,
                  right: 210,
                  bottom: 375,// Align to the left
                  child: Container(
                    width: 104,
                    height: 40,
                    child: Stack(
                      children: [
                        Image.asset(
                          'images/quickmart (2).png',
                          width: 100,
                          height: 70,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0, // Align to the top
                  right: 0,
                  bottom: 375,
                  // Align to the right
                  child: TextButton(
                    onPressed: () {
                      // Handle button click
                      Navigator.pushNamed(context, '/login');
                    },
                    style: TextButton.styleFrom(
                      primary: Color(0xFF21D4B4), // Text color
                    ),
                    child: Text(
                      'Skip for now',
                      style: TextStyle(
                        color: Color(0xFF21D4B4),
                        fontSize: 12,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w500,
                        height: 0.11,
                        letterSpacing: 0.07,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40, // Align to the bottom
                  left: 50, // Align to the left
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 240,
                        height: 240,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/01 Online Shopping 2.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
                    'Explore a wide range of products',
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
                    'Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs.',
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
          Column(
            children: [
              Container(
                width: double.maxFinite,
                child: ElevatedButton(

                    onPressed:onNextPressed,

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
                      "Next",
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
      // First Onboarding Screen Content
      // ...
    );
  }
}
class SecondOnboardingScreen extends StatelessWidget {
  final VoidCallback onNextPressed;

  final VoidCallback onBackTapped; // Callback for back navigation

  SecondOnboardingScreen({required this.onNextPressed, required this.onBackTapped});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 578,
          height: 450,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFF4FCFA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                bottom: 400,
                child: GestureDetector(
                    onTap:onBackTapped,

                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xFF1C1B1B),
                    size: 32,
                  ),

                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                bottom: 380,
                child: TextButton(
                  onPressed: () {
                    // Handle skip button click
                    Navigator.pushNamed(context, '/login');
                  },
                  style: TextButton.styleFrom(
                    primary: Color(0xFF21D4B4),
                  ),
                  child: Text(
                    'Skip for now',
                    style: TextStyle(
                      color: Color(0xFF21D4B4),
                      fontSize: 12,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w500,
                      height: 0.11,
                      letterSpacing: 0.07,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 240,
                  height: 240,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/01 Online Shopping 5.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
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
                  'Unlock exclusive offers and discounts',
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
                  'Get access to limited-time deals and special promotions available only to our valued customers.',
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
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Column(
          children: [
            Container(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: onNextPressed,
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 130, vertical: 20),
                  child: Text(
                    "Next",
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
    );
  }
}
class ThirdOnboardingScreen extends StatelessWidget {
  final VoidCallback onNextPressed;
  final VoidCallback onBackTapped; // Callback for back navigation


  ThirdOnboardingScreen({required this.onNextPressed, required this.onBackTapped});
  @override
  Widget build(BuildContext context) {
    double buttonWidth = 196.0; // Set a fixed width for the buttons
    double buttonHeight = 50.0;
    return Container(
      child: Column(
        children: [
          Container(
            width: 408,
            height: 450,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFFF4FCFA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  bottom: 420,
                  child: GestureDetector(
                    onTap: onBackTapped, // Call the back navigation function
                    child: Container(
                      width: 32,
                      height: 32,
                      child: Icon(
                        Icons.arrow_back, // Use the back arrow icon
                        color: Color(0xFF1C1B1B), // Set the icon color
                        size: 32, // Set the icon size
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 240,
                        height: 240,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "images/01 Online Shopping 4.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
                    'Safe and secure payments',
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
                const SizedBox(height: 25),
                SizedBox(
                  width: 328,
                  child: Text(
                    'QuickMart employs industry-leading encryption and trusted payment gateways to safeguard your financial information.',
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
              ],
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Button background color
                  onPrimary: Colors.black, // Button text color
                  elevation: 4, // Button elevation
                  fixedSize: Size(buttonWidth, buttonHeight), // Set fixed size
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(width: 7,),
              ElevatedButton(
                onPressed: () {
                  // Handle button click
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Button background color
                  onPrimary: Colors.white, // Button text color
                  elevation: 4, // Button elevation
                  fixedSize: Size(buttonWidth, buttonHeight), // Set fixed size
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward, // Use the right arrow icon
                      size: 20, // Set the icon size
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _currentPage = 0;

  void _nextScreen() {
    setState(() {
      _currentPage++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen;
    switch (_currentPage) {
      case 0:
        currentScreen = FirstOnboardingScreen(onNextPressed: _nextScreen);
        break;
      case 1:
        currentScreen = SecondOnboardingScreen(
          onNextPressed: _nextScreen,
          onBackTapped: () {
            setState(() {
              _currentPage--; // Navigate back to the first screen
            });
          },
        );
        break;
      case 2:
        currentScreen = ThirdOnboardingScreen(
          onNextPressed: _nextScreen,
          onBackTapped: () {
            setState(() {
              _currentPage--; // Navigate back to the second screen
            });
          },
        );
        break;
      default:
        currentScreen = FirstOnboardingScreen(onNextPressed: _nextScreen);
        break;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top:50.0,left: 10,right: 10),
            child: Column(
              children: [
                currentScreen,
                SizedBox(height: 30),
                // Indicator dots
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == _currentPage
                            ? Color(0xFF08E488)
                            : Colors.grey,
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
