import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewPwScreen(),
    );
  }
}

class NewPwScreen extends StatefulWidget {
  @override
  _NewPwScreenState createState() => _NewPwScreenState();
}

class _NewPwScreenState extends State<NewPwScreen> {
  bool _showPassword = false;
  TextEditingController _otpController = TextEditingController();
  List<TextEditingController> _otpControllers = List.generate(6, (index) => TextEditingController());
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            // Handle back button press
          },
        ),
        title:Text(
        'Create Password',
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
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'New Password',
              style: TextStyle(
                color: Color(0xFF1B1A1A),
                fontSize: 24,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w700,
                height: 0.05,
              ),
            )
            ,

            SizedBox(height: 20,),
            SizedBox(
              width: 328,
               child: Text(
              'Enter your new password and remember it.',
              style: TextStyle(
                color: Color(0xFF6F7384),
                fontSize: 14,
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.w400,
                height: 0.11,
                letterSpacing: 0.07,
              ),
            ),
            ),


            SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 370,
                  height: 60,
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 16,
                    right: 12,
                    bottom: 16,
                  ),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: TextFormField(
                    obscureText: !_showPassword,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your password',
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                        child: Icon(
                          _showPassword ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 370,
                  height: 60,
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 16,
                    right: 12,
                    bottom: 16,
                  ),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFF4F5FD)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: TextFormField(
                    obscureText: !_showPassword,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your password',
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                        child: Icon(
                          _showPassword ? Icons.visibility : Icons.visibility_off,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
                children:[Container(
                  width: double.infinity,
                  // Make the container take up the full width
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button click
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Color(0xFF1B1A1A), width: 14),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      child: Text(
                        'Proceed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                )
                ]),
          ],
        ),
      ),
    );
  }


  }

