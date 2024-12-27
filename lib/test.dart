import 'package:flutter/material.dart';
import 'package:intro/home.dart';

class MyTest extends StatefulWidget {
  const MyTest({super.key});

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),
body: Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.red,
          border: Border.all(width: 1, color: const Color.fromARGB(73, 0, 0, 0)),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(223, 255, 243, 133),
              offset: Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        height: 80,
        width: 80,
    
        child: Center(child:Icon(Icons.favorite,color:Colors.white,size: 40,)),
      ),
      GestureDetector(
        onTap: () => {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MyHome()))
        },
        child: Container(
          height: 80,
          width: 80,
          color: Colors.green,
              child: Center(child:Image.asset("assets/images/logo.png",height: 80,width: 80,)),
        ),
      ),
      Container(
       height: 80,
        width: 80,
        color: Colors.blue,
            child: Center(child:Image.network("data:image/jpeg;base64,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",height: 80,width: 80,)),
      ),
    ],
  ),
)


    );
  }
}