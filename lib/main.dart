// import 'package:flutter/material.dart';
// import 'package:grpc/grpc.dart';
// import 'package:test_app/src/generated/course.pbgrpc.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     _testGRPC();
//     setState(() {
//       _counter++;
//     });
//   }
//
//   void _testGRPC() async {
//     final channel = ClientChannel('46.249.100.159',
//         port: 50051,
//         options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
//
//     // Create a gRPC client for your service
//     final client = GetCoursesServiceClient(channel);
//
//     // Make a gRPC call to the getCourses method
//     final response = await client.getCourses(
//         GetCoursesRequest(),
//         options: CallOptions(timeout: Duration(seconds: 30)));
//
//     // Print the response from the server
//     print('Response from server: ${response.courses.toString()}');
//
//
//
//     // Close the gRPC channel
//     await channel.shutdown();
//   }
//
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



import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() {
  // Defer the execution of runApp until the button is clicked
  // ui.platformViewRegistry.registerViewFactory(
  //   'startApp',
  //       (int viewId) => runApp(MyApp()),
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Web App'),
        ),
        body: Center(
          child: Text(
            'Welcome to Flutter Web App!',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}


