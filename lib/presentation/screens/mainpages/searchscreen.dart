import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        return SingleChildScrollView( // Wrap with SingleChildScrollView
          child: Container(
            height: 350, // You can adjust the height or use MediaQuery to make it responsive
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30), // Adjust the radius for the top corners
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
                    borderRadius: BorderRadius.circular(10),
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
                        primary: Colors.black, // Background color
                      ),
                      child: Text(
                        'Apply Filters',
                        style: TextStyle(
                          color: Colors.white, // Text color
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
      String text, bool? value, ValueChanged<bool?> onChanged) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          checkColor: Colors.white,
          activeColor: Colors.transparent,
        ),
        SizedBox(width: 10),
        Text(text),
      ],
    );
  }

// Rest of your code remains the same

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 100,
            maxHeight: 60,
          ),
          child: Image.asset(
              'images/quickmart (1).png'), // Replace with your image path
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // Handle the close icon tap action
              Navigator.pop(context); // Navigate back to the previous screen
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Container(
              width: 370,
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
              Text(
                'RECENT SEARCH',
                style: TextStyle(
                  color: Color(0xFF1B1A1A),
                  fontSize: 12,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 0.06,
                ),
              )
            ],
          ),
          SizedBox(
              height:
                  10), // Adjust the spacing between the header and search results
          // Static search results with different text and custom icons
          buildSearchResult("Smart Watches", 'images/send.png'),
          buildSearchResult("Laptops", 'images/send.png'),
          buildSearchResult("Women Bags", 'images/send.png'),
          buildSearchResult("Headphones", 'images/send.png'),
          buildSearchResult("Mobiles", 'images/send.png'),
          buildSearchResult("Mobilecase", 'images/send.png'),
        ],
      ),
    );
  }

  Widget buildSearchResult(String text, String iconPath) {
    return Column(
      children: [
        ListTile(
          leading: Text(
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
          trailing: Image.asset(
            iconPath,
            width: 24,
            height: 24,
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
