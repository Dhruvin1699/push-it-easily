
import 'package:flutter/material.dart';

class OnboardingPage3 extends StatefulWidget {
  @override
  State<OnboardingPage3> createState() => _OnboardingPage3State();
}

class _OnboardingPage3State extends State<OnboardingPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 30,right: 20),
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
                                  Text(
                                    'Skip for now',
                                    style: TextStyle(
                                      color: Color(0xFF21D4B4),
                                      fontSize: 14,
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w500,
                                      height: 0.11,
                                      letterSpacing: 0.07,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 46),
                            Container(
                              width: 240,
                              height: 240,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/01 Online Shopping 4.png"),
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
                          'Safe and secure payments',
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
                      const SizedBox(height: 25),
                      SizedBox(
                        width: 328,
                        child: Text(
                          ' QuickMart employs industry-leading encryption and trusted payment gateways to safeguard your financial information.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF6F7384),
                            fontSize: 14,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w400,
                            height: 1.11,
                            letterSpacing: 0.07,
                          ),
                        ),
                      )
                      // SizedBox(height: 20),

                    ],
                  ),
                ),
                SizedBox(height: 25),
                Row(
                    children:[ElevatedButton(
                      onPressed: () {
                        // Handle button click
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // Button background color
                        onPrimary: Colors.white, // Button text color
                        elevation: 4, // Button elevation
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.white, width: 0), // Button border
                        ),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 49, vertical: 20),
                          child: Text(
                            'Login',
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
                      SizedBox(width: 20,),

                      ElevatedButton(
                        onPressed: () {
                          // Handle button click
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // Button background color
                          onPrimary: Colors.white, // Button text color
                          elevation: 4, // Button elevation
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Color(0xFF1B1A1A), width: 5), // Button border
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward, // Use the right arrow icon
                              size: 20, // Set the icon size
                            ),
                          ],
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
