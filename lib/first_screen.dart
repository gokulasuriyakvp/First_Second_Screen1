import 'package:flutter/material.dart';
import 'package:flutter_first_second_screen/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final _enterNameTxtCnt = TextEditingController();
  final _enterMobileNumberTxtCnt = TextEditingController();

  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return SecondScreen(
          Name: _enterNameTxtCnt.text,
          MobileNumber: _enterMobileNumberTxtCnt.text);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Screen',
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: _enterNameTxtCnt,
                  decoration: InputDecoration(labelText: ' Enter Name'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: _enterMobileNumberTxtCnt,
                  decoration:
                      InputDecoration(labelText: ' Enter Mobile Number'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    navigateNextPage(context);
                  },
                  child: Text(
                    'Send Data >>',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
