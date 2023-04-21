import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 113, 249, 138),
      
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 70, 8),
    
        title: const Text("Counter",
        style: TextStyle(color: Color.fromARGB(255, 143, 234, 146)),
        ),
      ),
       body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("10", style: TextStyle(fontSize: 160, fontWeight:FontWeight.w100,color: Color.fromARGB(255, 6, 70, 8) ),),
            Text("Clicks",style: TextStyle(fontSize: 89, fontWeight:FontWeight.w100, color: Color.fromARGB(255, 6, 70, 8)),),
          ],
        )
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 6, 70, 8),
          onPressed:(){},
          child: const Icon(Icons.plus_one,color: Color.fromARGB(255, 143, 234, 146),
          
           ),)
      );
  }
}