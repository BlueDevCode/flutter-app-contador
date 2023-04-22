import 'package:flutter/material.dart';

class CounterFuntionsScreen extends StatefulWidget {
  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}
  int clickCounter = 0;
class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {
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
       body: Padding(
         padding: const EdgeInsets.all(100.0),
         child: Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              Text( "$clickCounter" , style: const TextStyle(fontSize: 150, fontWeight:FontWeight.w100,color: Color.fromARGB(255, 6, 70, 8) ),),
              Text("Click${clickCounter == 1 ? "" : "s"}",style: const TextStyle(fontSize: 65, fontWeight:FontWeight.w300, color: Color.fromARGB(255, 6, 70, 8)),),
            ],
          )
          ),
       ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 6, 70, 8),
              onPressed:(){
                setState(() {
                  clickCounter++;
                });
              },
              child: const Icon(Icons.plus_one,color: Color.fromARGB(255, 143, 234, 146),
              ),),
              SizedBox(height: 10,),

              FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 6, 70, 8),
              onPressed:(){
                setState(() {
                  clickCounter--;
                });
              },
              child: const Icon(Icons.exposure_minus_1_outlined,color: Color.fromARGB(255, 143, 234, 146),
              ),),
              SizedBox(height: 10,),

              FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 6, 70, 8),
              onPressed:(){
                setState(() {
                  clickCounter=0;
                });
              },
              child: const Icon(Icons.refresh_outlined,color: Color.fromARGB(255, 143, 234, 146),
              ),),
          ],
        )
      );
  }
}