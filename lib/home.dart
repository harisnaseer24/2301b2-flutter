import 'package:flutter/material.dart';
import 'package:intro/second.dart';
import 'package:intro/test.dart';

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
        ,GestureDetector(
        child: 
        Icon(Icons.currency_bitcoin),
         onTap: (){
            print("Hello from gesture detector");
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyTest()));
          },
      )
        
     
        ,Icon(Icons.verified_user),
    ],
),
body:
 Center(
child:
//1-1-2025 start
// ListView.builder(itemBuilder: (context,index){
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: 
// Container(
//       height: 200,
//       width: 200,
//       color: Colors.red,
//       child: Center(
//         child: Text("$index",
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 32,
//           fontWeight: FontWeight.bold
//         ),
//         ),
        
//       ),
//     ),
//   );

// },itemCount: 10,)

// Grid View builder
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    childAspectRatio: 2/3,
  ),
  itemBuilder: (context,index){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // height: 200,
        // width: 200,
        color: Colors.red,
        child: Center(
          child: Text("$index",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold
          ),
          ),
          
        ),
      ),
    );
  },
  itemCount: 10,
)
//1-1-2025 end




// 30-12-2024 start
// Stack(
//   alignment: Alignment.bottomLeft,
//   children: [
//     Container(
//       height: 200,
//       width: 200,
//       color: Colors.red,
//     ),
//     Container(
//       height: 180,
//       width: 180,
//       color: Colors.green,
//     ),
//     Container(
//       height: 160,
//       width: 160,
//       color: Colors.blue,
//     ),
//     Container(
//       height: 140,
//       width: 140,
//       color: Colors.yellow,
//     ),
//     Container(
//       height: 120,
//       width: 120,
//       color: Colors.purple,
//     ),
//     Container(
//       height: 100,
//       width: 100,
//       color: Colors.orange,
//     ),
//     Container(
//       height: 80,
//       width: 80,
//       color: Colors.pink,
//     ),
//     Container(
//       height: 60,
//       width: 60,
//       color: Colors.teal,
//     ),
//     Container(
//       height: 40,
//       width: 40,
//       color: Colors.brown,
//     ),
//     Container(
//       height: 20,
//       width: 20,
//       color: Colors.grey,
//     ),
//   ],
// )
//  ListView(
//   children: [
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 200,
//         // width: 200,
//         color: Colors.red,
//         child: Center(
//           child: Text("Hello",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 32,
//             fontWeight: FontWeight.bold
//           ),
//           ),
          
//         ),
//       ),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 200,
//         width: 200,
//         color: Colors.green,
//         child: Center(
//           child: Text("Hello",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 32,
//             fontWeight: FontWeight.bold
//           ),
//           ),
//         ),
//       ),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 200,
//         width: 200,
//         color: Colors.blue,
//         child: Center(
//           child: Text("Hello",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 32,
//             fontWeight: FontWeight.bold
//           ),
//           ),
//         ),
//       ),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 200,
//         width: 200,
//         color: Colors.yellow,
//         child: Center(
//           child: Text("Hello",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 32,
//             fontWeight: FontWeight.bold
//           ),
//           ),
//         ),
//       ),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 200,
//         width: 200,
//         color: Colors.purple,
//         child: Center(
//           child: Text("Hello",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 32,
//             fontWeight: FontWeight.bold
//           ),
//           ),
//         ),
//       ),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 500,
//         width: 200,
//         color: Colors.orange,
//         child: Center(
//           child: Text("Hello",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 32,
//             fontWeight: FontWeight.bold
//           ),
//           ),
//         ),
//       ),
//     ),
   
//   ],
// ),
// 30-12-2024 end


 )
//  Padding(
//   padding: const EdgeInsets.only(
//     top: 20,
//     left: 40,
//     right: 40,
//     bottom: 20,
//   ),
//   child: Container(
//   decoration: BoxDecoration(
//     color: const Color(0xff7c94b6),
//     image: const DecorationImage(
//       image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
//       fit: BoxFit.cover,
//     ),
//     border: Border.all(
//       width: 8,
//     ),
//     borderRadius: BorderRadius.circular(18),
//   ),
// ),
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

// ),

    );
  }
}