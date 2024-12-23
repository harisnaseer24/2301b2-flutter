import 'package:flutter/material.dart';
import 'package:intro/home.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(),
    body: Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
           color: Colors.red,
          border: Border.all(width: 20, color: Colors.black)
        ),
        height: 350,
        width: 350,
        // child: ElevatedButton(onPressed: ()=>print("Button pressed..!"), child: Text("Click me",
        
        // ),),
        child: GestureDetector(
          child: Center(
            // child: Text("Hello"),
            child: Image.asset("assets/images/logo.png",
            height: 100,
            width: 100,
            fit: BoxFit.cover,),
          ),
          onTap: (){
            print("Hello from gesture detector");
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHome()));
          },
        ),
       
      ),
    ), 
    );
  }
}