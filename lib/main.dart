import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carrista',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        splashFactory: NoSplash.splashFactory,
        // fontFamily: Asset.iranSans,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Carrista Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF363642),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(26.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Carrista',
                    style: TextStyle(fontSize: 50),
                  ),
                  Text('Search and buy spare parts.'),
                ],
              ),
            ),
            Container(
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Asset.carImage),
                  colorFilter: const ColorFilter.mode(
                      Color.fromARGB(255, 23, 30, 66), BlendMode.lighten),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: OutlinedButton(
                  onPressed: () => (),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    child: Text(
                      'استعلام قیمت',
                      textScaleFactor: 1.2,
                    ),
                  ),
                )),
            Text(
              'یا',
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
            TextButton(
                onPressed: () => (),
                child: const Text('مشاهده استعلام‌های قبلی'))
          ],
        ),
      ),
    );
  }
}
