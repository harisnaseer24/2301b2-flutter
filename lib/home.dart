import 'package:flutter/material.dart';
import 'package:intro/second.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
    leading: Icon(Icons.menu),
    title: Text("HN Store"),
    backgroundColor: Color.fromARGB(255, 158, 102, 29),
    foregroundColor: Colors.white,
    centerTitle: true
    ,
    actions: [
      GestureDetector(
        child: 
        Icon(Icons.shop),
         onTap: (){
            print("Hello from gesture detector");
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Shop()));
          },
      )
        
        ,Icon(Icons.verified_user),
    ],
),
body: Padding(
  padding: const EdgeInsets.only(
    top: 20,
    left: 40,
    right: 40,
    bottom: 20,
  ),
  child: Container(
  decoration: BoxDecoration(
    color: const Color(0xff7c94b6),
    image: const DecorationImage(
      image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
      fit: BoxFit.cover,
    ),
    border: Border.all(
      width: 8,
    ),
    borderRadius: BorderRadius.circular(18),
  ),
),
//   child: Container(
//       height: 400,
//       width: 400,
     
//       color: Colors.black87,
//       child: Padding(
//         padding: const EdgeInsets.all(10),
//         child: Text("We provide High Quality furniture."
//         ,style: TextStyle(
//           color: Colors.white,
//           fontSize: 32,
//           fontFamily: "Arial",
//           fontWeight: FontWeight.bold,
//           fontStyle:FontStyle.italic,
          


          
//         ),
//         ),
//       )
  
//   ),

),

    );
  }
}