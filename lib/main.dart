import 'package:flutter/material.dart';

void main(){
  return runApp(
    MaterialApp(
      title: "ASYNC",
      home: TestAsync(),

    )
  );
}
clickMeFun(){
  print("Test1");
  Test2();
  print("Test3");

}

Test2() async{
 await  Future.delayed(Duration(seconds: 5),(){
    print("Test 5");
  });
  print("Test 2");
}

class TestAsync extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Async"),),
     body: Center(
       child: Container(
         child: ElevatedButton(
           child: Text("Clicked Me"),
           onPressed: (){
                clickMeFun();
           }
         ),
       ),
     ),
   );
  }

}

