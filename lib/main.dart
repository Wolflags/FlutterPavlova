import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DecideHome(),
    );
  }
}


class DecideHome extends StatelessWidget {
  const DecideHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return const HomePage();
          } else {
            return const MobileDesign();
          }
        },
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2.0),
                      color: const Color.fromARGB(255, 164, 241, 255),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Strawberry Pavlova',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2.0),
                        color: const Color.fromARGB(255, 164, 241, 255),
                      ),
                      child: const Text(
                      'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova featues a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                      textAlign: TextAlign.justify,
                    ),
                    ),
                    const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2.0),
                      color: const Color.fromARGB(255, 164, 241, 255),
                    ),
                    child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      SizedBox(width: 10),
                      Text('170 Reviews'),
                    ],
                  ),
                  ),
                  
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2.0),
                      color: const Color.fromARGB(255, 164, 241, 255),
                    ),
                    child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.kitchen_rounded,
                            color: Colors.green,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('PREP:'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('25 min'),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            color: Colors.green,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('COOK:'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('1 hr'),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.restaurant_outlined,
                            color: Colors.green,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('FEEDS:'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('4-6'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  ),
                  
                ],
              ),
              ),
              
            ),
            const Expanded(
              child: Image(
                image: AssetImage('assets/images/strawberry.png'),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class MobileDesign extends StatelessWidget {
    const MobileDesign({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image(
                image: AssetImage('assets/images/strawberry.png'),
                fit: BoxFit.fill,
              ),
              ),
              
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2.0),
                      color: const Color.fromARGB(255, 164, 241, 255),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Strawberry Pavlova',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2.0),
                        color: const Color.fromARGB(255, 164, 241, 255),
                      ),
                      child: const Text(
                      'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova featues a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                      textAlign: TextAlign.justify,
                    ),
                    ),
                    const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2.0),
                      color: const Color.fromARGB(255, 164, 241, 255),
                    ),
                    child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      SizedBox(width: 10),
                      Text('170 Reviews'),
                    ],
                  ),
                  ),
                  
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2.0),
                      color: const Color.fromARGB(255, 164, 241, 255),
                    ),
                    child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.kitchen_rounded,
                            color: Colors.green,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('PREP:'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('25 min'),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            color: Colors.green,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('COOK:'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('1 hr'),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.restaurant_outlined,
                            color: Colors.green,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('FEEDS:'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('4-6'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  ),
                  
                ],
              ),
              ),
              
            ),
          ],
        ),
      ),
      );
    }

}


