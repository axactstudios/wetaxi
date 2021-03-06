import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetaxi/Screens/home_screen.dart';

class PaymentSuccessfulScreen extends StatefulWidget {
  @override
  _PaymentSuccessfulScreenState createState() =>
      _PaymentSuccessfulScreenState();
}

class _PaymentSuccessfulScreenState extends State<PaymentSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    double pHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset('assets/mini.png'),
            Text('Comfort'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$',
                  style: GoogleFonts.montserrat(
                    fontSize: pHeight * 0.025,
                  ),
                ),
                Text(
                  ' 21.4',
                  style: GoogleFonts.montserrat(
                    fontSize: pHeight * 0.04,
                  ),
                ),
              ],
            ),
            Text('(inclusive of Tax)'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/circle.png",
                  color: Colors.green,
                  scale: 0.8,
                ),
                Image.asset(
                  "assets/rightmark.png",
                  color: Colors.green,
                  scale: 0.9,
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Text(
              'Paid Successfully',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: pHeight * 0.02,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Text(
              'Thank you for chossing us !',
              style: GoogleFonts.montserrat(
                fontSize: pHeight * 0.02,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 65.0,
                    right: 65.0,
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  child: Text(
                    'Close',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
