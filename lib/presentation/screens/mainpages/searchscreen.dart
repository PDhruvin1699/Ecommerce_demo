import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool _filter1 = false;
  bool _filter2 = false;
  bool _filter3 = false;
  bool _filter4 = false;

  void _showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          // Wrap with SingleChildScrollView
          child: Container(
            height:
                350, // You can adjust the height or use MediaQuery to make it responsive
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(
                    30), // Adjust the radius for the top corners
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Filter',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                buildFilterRow('Price (Low to High)', _filter1, (value) {
                  setState(() {
                    _filter1 = value!;
                  });
                }),
                buildFilterRow('Price (High to Low)', _filter2, (value) {
                  setState(() {
                    _filter2 = value!;
                  });
                }),
                buildFilterRow('A-Z', _filter3, (value) {
                  setState(() {
                    _filter3 = value!;
                  });
                }),
                buildFilterRow('Z-A', _filter4, (value) {
                  setState(() {
                    _filter4 = value!;
                  });
                }),
                Divider(),
                Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(11.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Apply the selected filters and close the bottom sheet
                        Navigator.of(context).pop();
                        // You can use the filter values (_filter1, _filter2, etc.) here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white// Background color
                      ),
                      child: Text(
                        'Apply Filters',
                        style: TextStyle(
                          // color: Colors.white, // Text color
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  //
  Widget buildFilterRow(
      String text,
      bool? value,
      ValueChanged<bool?> onChanged,
      ) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: (newValue) {
            onChanged(newValue);
            // Update the value of the checkbox in the UI
            setState(() {
              value = newValue;
            });
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          checkColor: Colors.orange,
          activeColor: Colors.black,
        ),
        SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFF1B1A1A),
            fontSize: 14,
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.w500,
            height: 0.11,
            letterSpacing: 0.07,
          ),
        ),
      ],
    );
  }

// Rest of your code remains the same

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
              padding: const EdgeInsets.only(right: 15.0), // Adjust the padding as needed
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
                  // Handle the close icon tap action
                  Navigator.pop(
                      context); // Navigate back to the previous screen
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ),
            ], // Add any other actions if needed
          ),
        ),
      ),
      body: SingleChildScrollView(child:
      Column(
        children: [
          SizedBox(width: 30,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Container(
              width: 380,
              height: 50,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset('images/search-normal (1).png',
                        width: 24, height: 30),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search...',
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Show the filter bottom sheet when the icon is tapped
                      _showFilterBottomSheet(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Image.asset(
                        'images/setting-4.png',
                        width: 24,
                        height: 30,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.all(8.0),
                  //   child: Image.asset('images/setting-4.png',
                  //       width: 24, height: 30),
                  // ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'RECENT SEARCH',
                  style: TextStyle(
                    color: Color(0xFF1B1A1A),
                    fontSize: 12,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: 0.06,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:22.0),
            child: SizedBox(
                height:
                    15),
          ), // Adjust the spacing between the header and search results
          // Static search results with different text and custom icons
          buildSearchResult("Smart Watches", 'images/send.png'),
          buildSearchResult("Laptops", 'images/send.png'),
          buildSearchResult("Women Bags", 'images/send.png'),
          buildSearchResult("Headphones", 'images/send.png'),
          buildSearchResult("Mobiles", 'images/send.png'),
          buildSearchResult("Mobilecase", 'images/send.png'),
        ],
      ),),
    );
  }

  Widget buildSearchResult(String text, String iconPath) {
    return Column(
      children: [
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              text,
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
          trailing: Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Image.asset(
              iconPath,
              width: 24,
              height: 24,
            ),
          ), // Custom icon from image asset
          // Left side text
        ),
        Divider(), // Underline below the row
      ],
    );
  }
}

void main() {
  MaterialApp(
    home: SearchScreen(),
  );
}
