
import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ProductDetailsScreen(),
      ),
    );
  }
}


void main() {
  runApp(ProductDetailsScreen());
}
//
class ProductDetailsScreen extends StatefulWidget {
  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final PageController _pageController = PageController();
  final List<String> imagePaths = [
    'images/Rectangle 9 (17).png',
    'images/your_image_2.png',
    'images/your_image_3.png',
    'images/your_image_4.png',
    'images/your_image_5.png',
  ];
  final List<String> circleTexts = [
    'XS',
    'S',
    'M',
    'L',
    'XL',
  ];
  int _currentPage = 0;
  int quantity = 1;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
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
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Image.asset('images/wishlist.png'),
                onPressed: () {
                  // Implement liked button functionality
                },
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 270,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    // PageView of Images
                    PageView.builder(
                      controller: _pageController,
                      itemCount: imagePaths.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: double.infinity,
                          height: 200,
                          child: Image.asset(
                            imagePaths[index],
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        );
                      },
                    ),
                    // Horizontal Scroll Indicator
                    Container(
                      width: 100,
                      padding: const EdgeInsets.all(5),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF4F5FD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          imagePaths.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentPage == index
                                    ? Colors.red
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 730,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                ),

                padding: EdgeInsets.all(16.0),
                // color: Colors.black.withOpacity(0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // First Row with Circular Borders
                    Row(
                      children: [
                        Container(
                          width: 62,
                          height: 24,
                          padding: const EdgeInsets.all(6),
                          decoration: ShapeDecoration(
                            color: Color(0xFF1F8BDA),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Top Rated',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                  letterSpacing: 0.15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Container(
                          width: 81,
                          height: 24,
                          padding: const EdgeInsets.all(6),
                          decoration: ShapeDecoration(
                            color: Color(0xFF08E488),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Free Shipping',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                  letterSpacing: 0.15,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16.0),
                    // Second Row with Two Lines
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 253,
                                child: Text(
                                  'Loop Silicone Strong Magnetic watch',
                                  style: TextStyle(
                                    color: Color(0xFF1B1A1A),
                                    fontSize: 18,
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                    letterSpacing: 0.04,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 112.0),
                                child: Text(
                                  '\$ 15.25',
                                  style: TextStyle(
                                    color: Color(0xFF1B1A1A),
                                    fontSize: 18,
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                    letterSpacing: 0.04,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 112.0),
                                child: Text(
                                  '\$ 20.00',
                                  style: TextStyle(
                                    color: Color(0xFF6F7384),
                                    fontSize: 14,
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.lineThrough,
                                    height: 1.11,
                                    letterSpacing: 0.07,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(
                          children: List.generate(
                            4,
                            (index) => Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4.5 (2,495 reviews) ',
                          style: TextStyle(
                            color: Color(0xFF1B1A1A),
                            fontSize: 10,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                            height: 0,
                            letterSpacing: 0.15,
                          ),
                        )
                      ],
                    ),
                    ExpandableText(
                      'Constructed with high-quality silicone material, the Loop Silicone Strong Magnetic Watch ensures a comfortable and secure fit on your wrist. The soft and flexible silicone is gentle on the skin, making it ideal for extended wear. Its lightweight design allows for a seamless blend of comfort and durability.\n\nOne of the standout features of this watch band is its strong magnetic closure. The powerful magnets embedded within the band provide a secure and reliable connection, ensuring that your smartwatch stays firmly in place throughout the day. Say goodbye to worries about accidental detachment or slippage - the magnetic closure offers a peace of mind for active individuals on the go.\n\nThe Loop Silicone Strong Magnetic Watch Band is highly versatile, compatible with a wide range of smartwatch models. Its adjustable strap length allows for a customizable fit, catering to various wrist sizes. Whether you are engaging in intense workouts or attending formal occasions, this watch band effortlessly adapts to your style and activity level.',
                      expandText: 'Read more',
                      collapseText: 'Read less',
                      maxLines: 4, // Initial number of lines to display
                      style: TextStyle(
                        color: Color(0xFF6F7384),
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w400,
                        height: 1.11,
                        letterSpacing: 0.07,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 50,
                      child: Text(
                        'Color',
                        style: TextStyle(
                          color: Color(0xFF1B1A1A),
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w600,
                          height: 0,
                          letterSpacing: 0.06,
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                        height: 40.0,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              // Define different colors for each circle
                              List<Color> circleColors = [
                                Colors.red,
                                Colors.blue,
                                Colors.green,
                                Colors.orange,
                                Colors.purple,
                              ];

                              return Container(
                                margin: EdgeInsets.only(right: 10.0),
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: circleColors[index],
                                ),
                              );
                            })),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 50,
                      child: Text(
                        'Size',
                        style: TextStyle(
                          color: Color(0xFF1B1A1A),
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w600,
                          height: 0,
                          letterSpacing: 0.06,
                        ),
                      ),
                    ),
          Container(
            height: 40.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 10.0),
                  width: 40.0,
                  height: 40.0,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      circleTexts[index],
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
                    SizedBox(height: 15,),
                    Text(
                      'Quantity',
                      style: TextStyle(
                        color: Color(0xFF1B1A1A),
                        fontSize: 12,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: 0.06,
                      ),
                    ),
                    Row(
                      children: [

                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            // Implement decrement logic
                          },
                        ),
                        Text(
                          quantity.toString(),
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF1B1A1A),
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.04,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            // Implement increment logic
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle the first button press
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white, // White background
                                onPrimary: Colors.black, // Black text
                                side: BorderSide(width: 1, color: Colors.grey), // 1-width border
                              ),
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                  color: Color(0xFF1C1B1B),
                                  fontSize: 14,
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              )
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            margin: EdgeInsets.all(10.0),
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle the button press
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black, // Black background
                                onPrimary: Colors.white, // White text
                                side: BorderSide(width: 1, color: Colors.black), // 1-width border
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Add To Cart',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                              SizedBox(width: 8),
                                  Image.asset(
                                    'images/shopping-cart.png', // Replace with your custom image path
                                    width: 24, // Adjust the width as needed
                                    height: 24, // Adjust the height as needed
                                  ),
                                  // Add some spacing between the image and text

                                ],
                              ),
                            ),
                          ),
                          ),

                      ],
                    )



                  ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
