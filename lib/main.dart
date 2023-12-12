
import 'package:figmaappnew/presentation/screens/Categories/categories.dart';
import 'package:figmaappnew/presentation/screens/Loginscreen.dart';


import 'package:figmaappnew/presentation/screens/Profile/userprofile.dart';
import 'package:figmaappnew/presentation/screens/Signupscreen.dart';
import 'package:figmaappnew/presentation/screens/cartscreens/emptycart.dart';
import 'package:figmaappnew/presentation/screens/checkout/checkoutscreen.dart';
import 'package:figmaappnew/presentation/screens/checkout/payment.dart';
import 'package:figmaappnew/presentation/screens/mainpages/dashboardscreen.dart';
import 'package:figmaappnew/presentation/screens/mainpages/homescreen.dart';


import 'package:figmaappnew/presentation/screens/splash_screen.dart';
import 'package:figmaappnew/presentation/screens/wishlist/emptywish.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: '/splash',
        routes:{
        '/splash': (context) => SplashScreen(),



        '/signup':(context) =>SignupScreen(),
        '/login': (context) => LoginScreen(),
        '/dashboard':(context) =>Dashboard(),
           '/home':(context) => HomeScreen(),
           '/catgories':(context) => CategoriesScreen(),
          '/cart':(context)=> CartEmptyScreen(),
          '/wishlist':(context) => WishEmptyScreen(),

         '/profile':(context)=> ProfileScreen(),
          '/shipping':(context) => CheckoutScreen(),
          '/payment':(context) =>CheckoutPaymentScreen(),
        }
    );
  }
}
