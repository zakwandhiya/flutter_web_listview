import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home:  MyHomePage(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (choose the "Toggle Debug Paint" action
//           // from the Flutter Inspector in Android Studio, or the "Toggle Debug
//           // Paint" command in Visual Studio Code) to see the wireframe for each
//           // widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Hello, World!',
//             ),
//           ],
//         ),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imageUrl = [
    "https://cdn.vuetifyjs.com/images/cards/sunshine.jpg",
    "https://cdn.vuetifyjs.com/images/cards/docks.jpg",
    "https://cdn.vuetifyjs.com/images/cards/desert.jpg",
    "https://vuetifyjs.com/themes/parallax-starter/assets/hero.jpeg",
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple ListView"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: imageUrl.length,
          itemBuilder: (context, position) {
            return CustomCard(imageUrl: this.imageUrl[position]);
          },
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({@required this.imageUrl}); 
  //flag required digunakan untuk meruah opsional named parameter menjadi required named parameter


  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 200.0 ,vertical: 10.0),
      child: Image.network( //Image.network digunakan untuk mengambil gambar dari internet
        imageUrl ,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}