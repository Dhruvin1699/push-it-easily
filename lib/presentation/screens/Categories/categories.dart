import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<String> categoryNames = [
    'Electronics',
    'Fashion',
    'Furniture',
    'Industrial'
        'Home Decor',
    'Health',
    'Construction & Real State',
    'Fabrication Service',
    'Electrical Equipment',
  ];

  final List<String> categoryImages = [
    'images/📱.png',

    'images/📱 (7).png',
    'images/📱 (8).png',
    'images/📱 (9).png',

    'images/📱 (1).png',
    'images/📱 (2).png',
    'images/📱 (3).png',
    'images/📱 (4).png',
    'images/📱 (5).png',
    'images/📱 (6).png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Categories',
          style: TextStyle(
            color: Color(0xFF1B1A1A),
            fontSize: 18,
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.w500,
            height: 1.11,
            letterSpacing: 0.07,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 8.0, // Horizontal spacing
          mainAxisSpacing: 8.0, // Vertical spacing
        ),
        itemCount: categoryNames.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 160,
            height: 100, // Adjust the width and height of the container as needed
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
            margin: EdgeInsets.all(5),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  categoryImages[index], // Use the corresponding image for this category
                  width: 100, // Adjust the image size as needed
                  height: 50,
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {
                    // Handle gesture onTap action here
                    print("Image tapped");
                  },
                  child: SizedBox(
                    width: 70,
                    child: Text(
                      categoryNames[index], // Use the corresponding text for this category
                      textAlign: TextAlign.center,
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
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CategoriesScreen(),
  ));
}

