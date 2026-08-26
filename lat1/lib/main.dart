import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:const Color.fromARGB(255, 0, 236, 236),
          title: const Text("Belajar Flutter Nanda",
          style: TextStyle(color:Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //container 1 
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //gambar 1
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/jarwo.jpg",
                          width: 250,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 15),
                      //icon 1
                      const Icon(
                        Icons.school,
                        size: 65,
                        color: Colors.yellow,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Welcome To My Flutter",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                //container 2 
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/sopo.jpg",
                          width: 250,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 15),
                      //icon 2
                      const Icon(
                        Icons.star,
                        size: 65,
                        color: Colors.yellow,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Ananda Rachmatu",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    
  }
}