import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {
  final String title;
  final String description;
  final String name;
  final String image;
  final int price;
  const MyHomePage({Key? key, required this.title,
    required this.description,
    required this.name,
    required this.image,
    required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          height: 300,
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(

                child: Container(
                  height: 200,
                  width: 200,
                  child: Center(
                    child: Text(
                      image,
                      style: const TextStyle(fontSize: 16, color: Colors.blue, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),

               const SizedBox(
                width: 12,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      child: Container(
                        height: 50,
                        width: 100,
                        child: Text(
                          name

                        ),
                      ),

                    ),
                    SizedBox(height: 8.0,),
                    Card(
                        child: Container(
                          height: 50,
                          width: 100,
                          child: Text(
                              description

                          ),
                        )

                    ),
                    SizedBox(height: 8.0,),
                    Card(
                        child: Container(
                          height: 50,
                          width: 100,
                          child: Center(
                            child: Text(
                                price.toString(),

                            ),
                          ),
                        )

                    ),

                  ],

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
