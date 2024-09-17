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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 246, 182, 145)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello World App",
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 205, 246, 189),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Flutter"),
                        content: const Text("Hello World"),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); // for dismissing the dialogue
                            },
                          ),
                          TextButton(
                            child: const Text('Hii'),
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); // for dismissing the dialogue
                            },
                          ),
                        ],
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 205, 246, 189),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0))),
              child: const Text(
                "Click me",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0)),
              )),
        ),
      ),
    );
  }
}
