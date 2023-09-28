//
// import 'package:flutter/material.dart';
// class CartScreen extends StatefulWidget {
//   @override
//   _CartScreenState createState() => _CartScreenState();
// }
//
// class _CartScreenState extends State<CartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//
//         // Add a leading widget (back arrow)
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.black,),
//           onPressed: () {
//             // Navigate back when the back arrow is pressed
//             Navigator.pop(context);
//           },
//         ),
//         title: Text(
//           'My Cart',
//           style: TextStyle(
//             color: Color(0xFF1B1A1A),
//             fontSize: 16,
//             fontFamily: 'Plus Jakarta Sans',
//             fontWeight: FontWeight.w500,
//             height: 1.11,
//             letterSpacing: 0.07,
//           ),
//         ), // Title of the AppBar
//         actions: [
//           GestureDetector(
//             // GestureDetector for custom action
//             onTap: () {
//               // Handle the action when it's tapped
//               // You can replace this with your desired action
//               print('Action Tapped');
//             },
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
//               child: Text(
//                 'Voucher Code',
//                 textAlign: TextAlign.right,
//                 style: TextStyle(
//                   color: Color(0xFF21D4B4),
//                   fontSize: 14,
//                   fontFamily: 'Plus Jakarta Sans',
//                   fontWeight: FontWeight.w500,
//                   height: 1.11,
//                   letterSpacing: 0.07,
//                 ),
//               ), // Replace 'some_icon' with your desired icon
//             ),
//           ),
//         ],
//       ),
//         body: Center(
//           child: Column(
//             children: [
//               // Shopping cart item
//               Container(
//                 margin: EdgeInsets.all(0.0),
//                 padding: EdgeInsets.all(10.0),
//                 child: Row(
//                   children: [
//                     // Left side - Image
//                     Container(
//                       width: 100.0,
//                       height: 100.0,
//                       color: Colors.transparent,
//                       child: Image.asset(
//                         'images/Rectangle 9 (13).png',
//                         width: double.maxFinite,
//                         fit: BoxFit.cover,
//                       ), // Replace with your image widget here
//                     ),
//                     SizedBox(width: 16.0), // Add some spacing between image and text
//
//                     // Right side - Text and Checkbox
//                     Expanded(
//                       child: Container(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Loop Silicone Strong Magnetic Watch',
//                               style: TextStyle(
//                                 color: Color(0xFF1B1A1A),
//                                 fontSize: 14,
//                                 fontFamily: 'Plus Jakarta Sans',
//                                 fontWeight: FontWeight.w500,
//                                 height: 1.11,
//                                 letterSpacing: 0.07,
//                               ),
//                               maxLines: 2, // Set the maximum number of lines
//                               overflow: TextOverflow.ellipsis, // Handle text overflow with ellipsis (...) if needed
//                             ),
//                             Text(
//                               '\$15.25',
//                               style: TextStyle(
//                                 color: Color(0xFF1B1A1A),
//                                 fontSize: 12,
//                                 fontFamily: 'Plus Jakarta Sans',
//                                 fontWeight: FontWeight.w600,
//                                 height: 0,
//                                 letterSpacing: 0.06,
//                               ),
//                             ),
//                             Text(
//                               '\$20.00',
//                               style: TextStyle(
//                                 color: Color(0xFF6F7384),
//                                 fontSize: 10,
//                                 fontFamily: 'Plus Jakarta Sans',
//                                 fontWeight: FontWeight.w400,
//                                 decoration: TextDecoration.lineThrough,
//                                 height: 0,
//                                 letterSpacing: 0.15,
//                               ),
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.start, // Align children horizontally
//                               children: [
//                                 IconButton(
//                                   icon: Icon(Icons.remove),
//                                   onPressed: () {
//                                     // Handle decrement logic here
//                                   },
//                                 ),
//                                 Text(
//                                   '1', // Replace with your cart item count
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 IconButton(
//                                   icon: Icon(Icons.add),
//                                   onPressed: () {
//                                     // Handle increment logic here
//                                   },
//                                 ),
//                               ],
//                             ),
//
//
//
//                           ],
//                         ),
//                       ),
//                     ),
//
//                   ],
//                 ),
//               ),
//               // Add more shopping cart items as needed...
//             ],
//           ),
//         )
//
//
//
//     );
//   }
// }
//
// void main() {
//   MaterialApp(
//     home: CartScreen(),
//   );
// }

import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'My Cart',
          style: TextStyle(
            color: Color(0xFF1B1A1A),
            fontSize: 16,
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.w500,
            height: 1.11,
            letterSpacing: 0.07,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print('Action Tapped');
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
              child: Text(
                'Voucher Code',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF21D4B4),
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w500,
                  height: 1.11,
                  letterSpacing: 0.07,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Left side - Image
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          color: Colors.transparent,
                          child: Image.asset(
                            'images/Rectangle 9 (13).png',
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: Text(
                                    'Loop Silicone Strong Magnetic Watch',
                                    style: TextStyle(
                                      color: Color(0xFF1B1A1A),
                                      fontSize: 14,
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w500,
                                      height: 1.11,
                                      letterSpacing: 0.07,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                              ],
                            ),
                            SizedBox(height: 10,
                            ),
                            Text(
                              '\$15.25',
                              style: TextStyle(
                                color: Color(0xFF1B1A1A),
                                fontSize: 12,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: 0.06,
                              ),
                            ),
                            SizedBox(height: 10,
                            ),
                            Text(
                              '\$20.00',
                              style: TextStyle(
                                color: Color(0xFF6F7384),
                                fontSize: 10,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.lineThrough,
                                height: 0,
                                letterSpacing: 0.15,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  // Handle decrement logic here
                                },
                                child: Container(
                                  width: 120,
                                  height: 40,
                                  // : Colors.blue,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                      ),
                                      SizedBox(width: 8,),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(width:8),
                                      Icon(
                                        Icons.add,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 0,left:10),
                      child: Checkbox(
                        value: true,
                        onChanged: (newValue) {
                          // Handle checkbox state change
                          // You can implement your logic here
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: GestureDetector(
                        onTap: () {
                          // Handle delete logic here
                        },
                        child: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),



            Container(
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Left side - Image
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          color: Colors.transparent,
                          child: Image.asset(
                            'images/Rectangle 9 (13).png',
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: Text(
                                    'Loop Silicone Strong Magnetic Watch',
                                    style: TextStyle(
                                      color: Color(0xFF1B1A1A),
                                      fontSize: 14,
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w500,
                                      height: 1.11,
                                      letterSpacing: 0.07,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                              ],
                            ),
                            SizedBox(height: 10,
                            ),
                            Text(
                              '\$15.25',
                              style: TextStyle(
                                color: Color(0xFF1B1A1A),
                                fontSize: 12,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: 0.06,
                              ),
                            ),
                            SizedBox(height: 10,
                            ),
                            Text(
                              '\$20.00',
                              style: TextStyle(
                                color: Color(0xFF6F7384),
                                fontSize: 10,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.lineThrough,
                                height: 0,
                                letterSpacing: 0.15,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  // Handle decrement logic here
                                },
                                child: Container(
                                  width: 120,
                                  height: 40,
                                  // : Colors.blue,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                      ),
                                      SizedBox(width: 8,),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(width:8),
                                      Icon(
                                        Icons.add,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom:70),
                      child: Checkbox(
                        value: true,
                        onChanged: (newValue) {
                          // Handle checkbox state change
                          // You can implement your logic here
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top:70.0),
                      child: GestureDetector(
                        onTap: () {
                          // Handle delete logic here
                        },
                        child: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 150,),


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
                  SizedBox(height: 8.0), // Add spacing between lines

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
                  SizedBox(height: 18.0),
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
                  SizedBox(height: 60,),
                  Center(
                    child: Container(
                      width: double.maxFinite,
                      height: 60,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: ShapeDecoration(
                        color: Color(0xFF1C1B1B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle button press
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,),
                            child: Text(
                          'Checkout (2)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )
                      ),
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CartScreen(),
  ));
}
