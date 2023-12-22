import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key, this.Name, this.MobileNumber})
      : super(key: key);

  final String? Name;
  final String? MobileNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Screen',
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Name.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize:20,
              ),
            ),
            Text(
              MobileNumber.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            /*ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Return Back"),
              ),*/
          ],
        ),
      )),
    );
  }
}
