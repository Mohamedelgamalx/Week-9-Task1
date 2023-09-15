import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({super.key});
   List url = [
     'assets/img1.jpg','assets/img2.jpg','assets/img3.jpg',
     'assets/img1.jpg','assets/img2.jpg','assets/img3.jpg',
     'assets/img1.jpg','assets/img2.jpg'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Gallary",style: TextStyle(color: Colors.black54),),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Container(
          margin: const EdgeInsets.all(20),
          child: GridView.count(
            crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20,
            childAspectRatio: 0.9,
            children:  List.generate(8, (index) {
                return ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('${url[index]}',
                      fit: BoxFit.cover,),
                );
              })
          ),
        )
        ),
    );
  }
}