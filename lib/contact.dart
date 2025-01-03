import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  int number = 1;
  String email = "";
  String phone = "";
  String msg = "";
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          children: [
            Center(
                child: Text(
              "Contact Us",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                 onChanged: (value) => {setState(() {

                  email = value;
                })},
                decoration: InputDecoration(
                    hintText: "Enter your email",
                    labelText: "Email",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (value) => {setState(() {

                  phone = value;
                })},
                decoration: InputDecoration(
                    hintText: "Enter your contact number",
                    labelText: "Phone No.",
                    prefixIcon: Icon(Icons.call),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (value) => {setState(() {

                  msg = value;
                })},
                decoration: InputDecoration(
                    hintText: "Enter your msg",
                    labelText: "Message",
                    prefixIcon: Icon(Icons.message),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                child: Text("Contact Us $number")),

                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    child: Column(
                      children: [
                        Text("Email: $email"),
                        Text("Phone: $phone"),
                        Text("Message: $msg"),
                      ],
                    ),
                    color: Colors.grey,
                  ),
                ),
          ],
        )));
  }
}
