import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductListingPage(),
    );
  }
}

class ProductListingPage extends StatefulWidget {
  @override
  State<ProductListingPage> createState() => _ProductListingPageState();
}

class _ProductListingPageState extends State<ProductListingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            // Add code to navigate back to the previous page here.
          },
        ),
        title:SizedBox(
          width: 196,
          child: Text(
            'Smart Watches',
            style: TextStyle(
              color: Color(0xFF1B1A1A),
              fontSize: 15,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w700,
              height: 1.11,
              letterSpacing: 0.07,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // Add code to handle the search action here.
              print('Search tapped');
            },
            child:Image.asset('images/setting-4.png',width: 40,height: 40,),
          ),
          SizedBox(width: 10,),
          GestureDetector(
            onTap: () {
              // Add code to handle the filter action here.
              print('Filter tapped');
            },
            child:Image.asset('images/search-normal (1).png',width: 30,height: 40,),
          ),
        ],
      ),
      body: SingleChildScrollView(child:

      GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 00,
          mainAxisSpacing: 8.0,
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

          return Padding(
            padding: const EdgeInsets.only(left: 8,right: 10),
            child: Container(
              width: 30,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white
                  ,
                  width: 0.0,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
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
                          child: Image.asset('images/wishlist.png',width: 24,),
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
                            color: rowColors[(colorIndex + i) % rowColors.length],
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
            ),
          );
        },
      )

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
    imagePath: 'images/Rectangle 9 (13).png',
    name: 'Loop silicone strong magnetic',
    price: 210.99,
    offerPrice: 199.99, // Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (14).png',
    name: 'K800 Ultra smart watch',
    price: 29.99,
    offerPrice: 19.99, // Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (15).png',
    name: 'Waterproof sport M4 touch',
    price: 29.99,
    offerPrice: 19.99, // Provide a valid offer price
  ),
  Item(
    imagePath: 'images/smart watch.png',
    name: 'M6 Smart watch IP67 waterproof',
    price: 29.99,
    offerPrice: 19.99, // Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (16).png',
    name: 'Item 2',
    price: 29.99,
    offerPrice: 19.99, // Provide a valid offer price
  ),
  Item(
    imagePath: 'images/Rectangle 9 (17).png',
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