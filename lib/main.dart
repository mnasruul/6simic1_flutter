import 'package:aplikasi_6simic1_f3/gambar.dart';
import 'package:aplikasi_6simic1_f3/volume.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_6simic1_f3/luas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aplikasi 6SIMIC1',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          // '/': (ctx) => CarouselDemoHome(),
          '/basic': (ctx) => BasicDemo(),
          '/nocenter': (ctx) => NoCenterDemo(),
          '/image': (ctx) => ImageSliderDemo(),
          '/complicated': (ctx) => ComplicatedImageDemo(),
          '/enlarge': (ctx) => EnlargeStrategyDemo(),
          '/manual': (ctx) => ManuallyControlledSlider(),
          '/noloop': (ctx) => NoonLoopingDemo(),
          '/vertical': (ctx) => VerticalSliderDemo(),
          '/fullscreen': (ctx) => FullscreenSliderDemo(),
          '/ondemand': (ctx) => OnDemandCarouselDemo(),
          '/indicator': (ctx) => CarouselWithIndicatorDemo(),
          '/prefetch': (ctx) => PrefetchImageDemo(),
          '/reason': (ctx) => CarouselChangeReasonDemo(),
          '/position': (ctx) => KeepPageviewPositionDemo(),
          '/multiple': (ctx) => MultipleItemDemo(),
          '/zoom': (ctx) => EnlargeStrategyZoomDemo(),
        },
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        home: const MyDashboard());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MyDashboard extends StatelessWidget {
  const MyDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Beranda")),
      body: Column(
        children: [
          const Center(
              child: Text(
            "Hello Word",
            style: TextStyle(
              fontFamily: 'DancingScript',
            ),
          )),
          Image.asset(
            '../images/d.png',
            height: 250,
            width: 500,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.call,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.history)),
            const SizedBox(
              width: 20,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person))
          ],
        ),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  "Nasrul",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                  ),
                ),
              )),
          ListTile(
            title: const Text("Hitung Luas PxL"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyLuas()),
              );
            },
          ),
          ListTile(
            title: const Text("Hitung Volume PxLxT"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyVolume()),
              );
            },
          ),
          ListTile(
            title: const Text("Gambar"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyGambar()),
              );
            },
          ),
          ListTile(
            title: const Text("CarouselDemoHome"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CarouselDemoHome()),
              );
            },
          ),
        ],
      )),
    );
  }
}
