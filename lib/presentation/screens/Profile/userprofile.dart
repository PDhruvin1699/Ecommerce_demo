
import 'package:flutter/material.dart';

void main() => runApp(ProfileScreen());

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<Map<String, dynamic>> sections = [
    {
      'title': 'Personal Information',
      'items': [
        {'image': 'images/box11.png', 'text': 'Shipping Address'},
        {'image': 'images/card-tick.png', 'text': 'Payment Method'},
        {'image': 'images/receipt-edit.png', 'text': 'Receipts'},
      ],
    },
    {
      'title': 'Support & Information',

      'items': [
        {'image': 'images/shield-tick.png', 'text': 'Privacy Polices'},
        {'image': 'images/document-text.png', 'text': 'Terms & Conditions'},
        {'image': 'images/message-question.png', 'text': 'FAQs'},
      ],
    },
    {
      'title': 'Account Management',

      'items': [
        {'image': 'images/lock.png', 'text': 'Change Password'},

      ],
    },

    // Add more sections here as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            backgroundColor: Color(0xFF21D4B4),
            title: null,
            flexibleSpace: Container(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/pngwing.png'), // Provide your image path here
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dhruvin Patel',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'xyz@gmail.com',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: GestureDetector(
                  onTap: () {
                   Navigator.pushNamed(context, '/login');
                    print('Logout button tapped');
                  },
                  child: Image.asset('images/logout.png', width: 40, height: 30),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: sections
                .map((section) => _buildSection(section['title'], section['items']))
                .expand((widget) => [widget, _buildDivider()]) // Add dividers between sections
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Map<String, dynamic>> items) {
    List<Widget> itemWidgets = [];
    for (var i = 0; i < items.length; i++) {
      itemWidgets.add(_buildListItem(items[i]['image'], items[i]['text']));
      if (i < items.length - 1) {
        // Add a divider if it's not the last item
        itemWidgets.add(_buildDivider());
      }
    }

    return Column(
      children: [
        ListTile(
          title: Text(
            title,
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
        ...itemWidgets,
      ],
    );
  }

  Widget _buildListItem(String imagePath, String text) {
    return ListTile(

      leading: Image.asset(imagePath, width: 30, height: 40),
      title: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFF6F7384),
            fontSize: 14,
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.w500,
            height: 0.11,
            letterSpacing: 0.07,
          ),
        ),
      ),
      trailing: GestureDetector(
        onTap: () {
          // Add conditions for different items
          if (text == 'Shipping Address') {
            // Navigate to the Shipping Address screen
            Navigator.pushNamed(context, '/shipping');
          } else if (text == 'Payment Method') {
            // Navigate to the Payment Method screen
            Navigator.pushNamed(context, '/payment');
          } else {
            // Handle other cases if needed
          }
        },
        child: Image.asset('images/Vector.png', width: 20, height: 15),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      width: double.infinity,
      height: 1,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFC0C0C0))), // Set the color of the line
      ),
    );
  }
}
