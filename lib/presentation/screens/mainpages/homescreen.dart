import 'package:figmaappnew/presentation/screens/mainpages/searchscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final PageController _pageController = PageController();
int currentPage = 0; // Initialize the current page to 0

@override
// void dispose() {
//   _pageController.dispose(); // Dispose of the PageController
//   super.dispose();
// }
class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageAssets = [
    'images/Banner.png',
    'images/2986531.jpg',
    'images/Professional E-Commerce Shoes Banner Design.jpg',
  ];
  final List<String> imagePaths =
      List.generate(20, (index) => 'assets/image_$index.png');

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
              automaticallyImplyLeading:
                  false, // Set the title spacing to 0 to move the title to the left corner
              title: Padding(
                padding: const EdgeInsets.only(
                    right: 12.0), // Adjust the padding as needed
                child: Container(
                  width: 100, // Set the desired width
                  height: 50, // Set the desired height
                  child: Image.asset(
                    'images/quickmart (1).png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchScreen()),
                    );
                    print("Search tapped");
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.asset(
                      'images/search-normal (1).png', // Replace with your custom search icon image path
                      width: 24, // Set the width as needed
                      height: 24, // Set the height as needed
                      color: Colors.black, // Set the icon color as needed
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle image picker action here
                    print("Image Picker tapped");
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Colors.white, // Change border color as needed
                          width: 1.0, // Change border width as needed
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                            'images/pngwing.png'), // Replace with your profile image path
                      ),
                    ),
                  ),
                ),
              ] // Add any other actions if needed
              ),
        ),
      ),
      body: SafeArea(
        child: ListView(children: [
          Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 170, // Adjust the height as needed
                        margin: EdgeInsets.symmetric(horizontal: 16.0),
                        child: PageView.builder(
                          controller: _pageController, // Use the PageController
                          onPageChanged: (int page) {
                            setState(() {
                              currentPage =
                                  page; // Update the currentPage when the page changes
                            });
                          },
                          itemCount: imageAssets.length,
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                imageAssets[index],
                                width: double
                                    .maxFinite, // Adjust width to fit the screen
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 70,
                    right: 45,
                    left: 0,
                    bottom: 0,
                    //
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 40,
                          height: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10), // Adjust the border radius as needed
                            color: Colors.grey[
                                200], // Adjust the box background color as needed
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 5), // Add padding to control box size
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, // Add space between indicators
                            children: [
                              for (int i = 0; i < imageAssets.length; i++)
                                Container(
                                  width: 7, // Adjust the dot size as needed
                                  height: 6, // Adjust the dot size as needed
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: i == currentPage
                                        ? Color(0xFF21D4B4)
                                        : Colors
                                            .grey, // Use different colors for selected and unselected dots
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  'Categories',
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
              TextButton(
                  onPressed: () {
                    // Add your button's onPressed functionality here
                  },
                  child: Text(
                    'SEE ALL',
                    style: TextStyle(
                      color: Color(0xFF21D4B4),
                      fontSize: 10,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: 0.15,
                    ),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  width: 80, // Adjust the width of the container as needed
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/📱.png', // Replace with your image path
                        width: 40, // Adjust the image size as needed
                        height: 30,
                      ),
                      SizedBox(height: 8),
                      GestureDetector(
                          onTap: () {
                            // Handle gesture onTap action here
                            print("Image tapped");
                          },
                          child: SizedBox(
                            width: 60,
                            child: Text(
                              'Electronics',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF1B1A1A),
                                fontSize: 10,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: 0.15,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 80, // Adjust the width of the container as needed
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),

                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/📱 12.png', // Replace with your image path
                        width: 40, // Adjust the image size as needed
                        height: 30,
                      ),
                      SizedBox(height: 8),
                      GestureDetector(
                          onTap: () {
                            // Handle gesture onTap action here
                            print("Image tapped");
                          },
                          child: SizedBox(
                            width: 60,
                            child: Text(
                              'Fashion',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF1B1A1A),
                                fontSize: 10,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: 0.15,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 80, // Adjust the width of the container as needed
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/📱 (1)2.png', // Replace with your image path
                        width: 40, // Adjust the image size as needed
                        height: 30,
                      ),
                      SizedBox(height: 8),
                      GestureDetector(
                          onTap: () {
                            // Handle gesture onTap action here
                            print("Image tapped");
                          },
                          child: SizedBox(
                            width: 60,
                            child: Text(
                              'Furniture',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF1B1A1A),
                                fontSize: 10,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: 0.15,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 80, // Adjust the width of the container as needed
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/📱 (2)1.png', // Replace with your image path
                        width: 40, // Adjust the image size as needed
                        height: 30,
                      ),
                      SizedBox(height: 8),
                      GestureDetector(
                          onTap: () {
                            // Handle gesture onTap action here
                            print("Image tapped");
                          },
                          child: SizedBox(
                            width: 60,
                            child: Text(
                              'Industrial',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF1B1A1A),
                                fontSize: 10,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: 0.15,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),

                // Add more rows or widgets as needed
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  'Latest Products',
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
              TextButton(
                  onPressed: () {
                    // Add your button's onPressed functionality here
                  },
                  child: Text(
                    'SEE ALL',
                    style: TextStyle(
                      color: Color(0xFF21D4B4),
                      fontSize: 10,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: 0.15,
                    ),
                  )),
            ],
          ),

          Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.8,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];

                  // Define a list of colors for the row containers

                  final List<Color> rowColors = [
                    Colors.blue,
                    Colors.green,
                    Colors.orange,
                    Colors.black,
                    Colors.yellow,
                  ];

                  // Get the color index for this grid item

                  final colorIndex = index % rowColors.length;

                  // return Padding(
                  //   padding: const EdgeInsets.only(left: 08, right: 10),
                  //   child: Container(
                  //     width: 20,
                  //     height: 150,
                  //     decoration: BoxDecoration(
                  //       border: Border.all(
                  //         color: Colors.white,
                  //         width: 0.0,
                  //       ),
                  //       borderRadius: BorderRadius.circular(8.0),
                  //     ),
    return Padding(
    padding: const EdgeInsets.only(left: 8, right: 10),
    child: LayoutBuilder(
    builder: (context, constraints) {
      double imageSize = constraints
          .maxWidth; // Use the available width for the image size
      double containerHeight = imageSize +
          160; // Adjusted based on your content height

      return Container(
        width: constraints.maxWidth,
        height: containerHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.asset(
                    item.imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 130,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle like button tap here

                    print("Like button tapped");
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Image.asset(
                      'images/wishlist.png',
                      width: 24,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                for (int i = 0; i < 3; i++)
                  Container(
                    width: 24,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: rowColors[
                      (colorIndex + i) % rowColors.length],
                    ),
                  ),
                SizedBox(width: 5),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'All 5 Colors',
                    style: TextStyle(
                      color: Color(0xFF1B1A1A),
                      fontSize: 10,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      height: 0,
                      letterSpacing: 0.15,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1),
            Text(
              item.name,
              style: TextStyle(
                color: Color(0xFF1B1A1A),
                fontSize: 14,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w500,
                height: 1.11,
                letterSpacing: 0.07,
              ),
            ),
            Text(
              " \$${item.price}",
              style: TextStyle(
                color: Color(0xFF1B1A1A),
                fontSize: 12,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: 0.06,
              ),
            ),
            Text(
              " \$${item.offerPrice}",
              style: TextStyle(
                color: Color(0xFFC0C0C0),
                fontSize: 10,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.lineThrough,
                height: 0,
                letterSpacing: 0.15,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      );
    }));
                },
              ),
            ],
          ),

          // Add other list items or widgets as needed
        ]),
      ),
    );
  }
}

class Item {
  final String imagePath;
  final String name;
  final double price;
  final double offerPrice; // Change property name from stock to offerPrice

  Item({
    required this.imagePath,
    required this.name,
    required this.price,
    required this.offerPrice, // Change parameter name from stock to offerPrice
  });
}

// Define your list of items with different data
List<Item> items = [
  Item(
    imagePath: 'images/Rectangle 9 (1).png',
    name: 'Nike air jordan retro fashion',
    price: 210.99,
    offerPrice: 199.99, // Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (2).png',
    name: 'Item 2',
    price: 29.99,
    offerPrice: 19.99, // Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (3).png',
    name: 'Item 2',
    price: 29.99,
    offerPrice: 19.99, // Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (4).png',
    name: 'Item 2',
    price: 29.99,
    offerPrice: 19.99, // Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (2).png',
    name: 'Item 2',
    price: 29.99,
    offerPrice: 19.99, // Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (2).png',
    name: 'Item 2',
    price: 29.99,
    offerPrice: 19.99, // Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (2).png',
    name: 'Item 2',
    price: 29.99,
    offerPrice: 19.99, // Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (2).png',
    name: 'Item 2',
    price: 29.99,
    offerPrice: 19.99, // Provide a valid offer price
  ),
  // Add more items with valid offer prices
];
