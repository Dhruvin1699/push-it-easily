
import 'package:figmaappnew/presentation/screens/onboardScreen3.dart';
import 'package:flutter/material.dart';

class OnboardingPage2 extends StatefulWidget {
  @override
  State<OnboardingPage2> createState() => _OnboardingPage2State();
}

class _OnboardingPage2State extends State<OnboardingPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Container(
                  width: 328,
                  height: 408,
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF4FCFA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 104,
                                    height: 32,
                                    child: Stack(children: [
                                      Icon(
                                        Icons.arrow_back, // Use the back arrow icon
                                        color: Color(0xFF1C1B1B), // Set the icon color
                                        size: 32, // Set the icon size
                                      ),
                                    ]),
                                  ),
                                  const SizedBox(width: 104),
                                  TextButton(
                                    onPressed: () {
                                      // Handle button click
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
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 46),
                            Container(
                              width: 240,
                              height: 240,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/01 Online Shopping 5.png"),
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
                      // SizedBox(height: 20),

                    ],
                  ),
                ),
                SizedBox(height: 20),
                Column(
                    children:[Container(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle button click
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // Button background color
                          onPrimary: Colors.white, // Button text color
                          elevation: 4, // Button elevation
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Color(0xFF1B1A1A), width: 14), // Button border
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 20),
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
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingPage3(),
    );
  }
}