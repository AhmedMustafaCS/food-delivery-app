import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('Foodak'),
          backgroundColor: Colors.grey[100],
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
        ),
        drawer: const Drawer(
            child: Center(
              child: const Text('I am in the drawer!'),
            ),
            backgroundColor: Colors.white),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                'assets/images/classic_burger.jpg',
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(children:const [
                          Placeholder(
                            fallbackHeight: 100,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Burger',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              )),
                          SizedBox(
                            height: 4,
                          ),
                          Text('5 \$',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color:Colors.deepOrange,
                        
                              )),
                        ]),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(children:const [
                          Placeholder(
                            fallbackHeight: 100,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Burger',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              )),
                          SizedBox(
                            height: 4,
                          ),
                          Text('5 \$',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color:Colors.deepOrange,
                        
                              )),
                        ]),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(children:const [
                          Placeholder(
                            fallbackHeight: 100,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Burger',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              )),
                          SizedBox(
                            height: 4,
                          ),
                          Text('5 \$',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color:Colors.deepOrange,
                        
                              )),
                        ]),
                      ),
                    ),
                   
                  ]),
            )
          ]),
        ));
  }
}
