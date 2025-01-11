import 'package:flutter/material.dart';

void main() {
  var car = Car(4);
  car.carType();
  car.wheelsNum();

  var plane = Plane(3);
  plane.planeType();
  plane.wheelsNum();
  // print("hello world");
  // runApp(const MyApp());
}

abstract class Vehicle {
  Vehicle(this.wheels);
  int wheels;
  void wheelsNum();
}

class Car extends Vehicle {
  Car(super.wheels);
  void carType() {
    print("BMW");
  }

  @override
  void wheelsNum() {
    print("the car's wheels number is $wheels");
  }
}

class Plane extends Vehicle {
  Plane(super.wheels);
  void planeType() {
    print("Airbus");
  }

  @override
  void wheelsNum() {
    print("the plane's wheels number is $wheels");
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
