import 'package:flutter/material.dart';

class OtpVerificationPage extends StatefulWidget {
  final String phoneNumber;

  OtpVerificationPage({required this.phoneNumber});

  @override
  _OtpVerificationPageState createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  String enteredOtp = '';

  void verifyOtp() {
    // Verify the entered OTP here
    // You can compare the enteredOtp with the OTP generated in the previous page
    // and perform necessary actions based on the verification result
  }
  void resendOtp() {
    // Resend OTP logic here
    // Implement the logic to resend the OTP to the phone number
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter OTP sent to ${widget.phoneNumber}',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              keyboardType: TextInputType.number,
              maxLength: 6,
              onChanged: (value) {
                setState(() {
                  enteredOtp = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'OTP',
              ),
            ),
          const  SizedBox(height: 16.0),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive code? ",
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                GestureDetector(
                  onTap: resendOtp,
                  child: Text(
                    'Resend OTP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
           
            ElevatedButton(
              onPressed: verifyOtp,
              child: Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}
