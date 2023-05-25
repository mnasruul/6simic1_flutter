import 'package:aplikasi_6simic1_f3/gambar.dart';
import 'package:aplikasi_6simic1_f3/volume.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_6simic1_f3/luas.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  final List<String> images = [
    // 'http://127.0.0.1:8080/images/1.avif',
    // 'http://127.0.0.1:8080/images/2.avif',
    // 'http://127.0.0.1:8080/images/3.avif',
    // 'http://127.0.0.1:8080/images/4.avif',
    // 'http://127.0.0.1:8080/images/5.avif',
    // 'http://127.0.0.1:8080/images/6.avif',
    // 'http://127.0.0.1:8080/images/7.avif',
     'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'

  ];

class MyDashboard extends StatelessWidget {
  const MyDashboard({super.key});
 Widget menuIcon({
    required Size deviceSize,
    required String text,
    required IconData icon,
  }) {
    return Container(
      height: 60.0,
      width: deviceSize.width / 5,
      padding: const EdgeInsets.all(2.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Icon(
              icon,
              color: Colors.grey[100],
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.grey[100],
            ),
          ),
        ],
      ),
    );
  }

  Widget mainMenuIcon({
    required Size deviceSize,
    required String text,
    required String src,
  }) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: <Widget>[
          Container(
            child: CircleAvatar(
              child: Image.asset(src),
              foregroundColor: Colors.red,
              backgroundColor: Colors.white,
            ),
            width: 80.0,
            height: 80.0,
            padding: EdgeInsets.all(2.0), // borde width
            decoration: BoxDecoration(
              color: Colors.grey[200], // border color
              shape: BoxShape.circle,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
      Size deviceSize = MediaQuery.of(context).size;
    double  width = MediaQuery.of(context).size.width;
    // const halfWidth = width/2;
    double height = MediaQuery. of(context).size.height;
    // const sizedBox = SizedBox(
    //             width: halfWidth,
    //             height: 100,
    //             child: Center(child: Text('Filled Card')),
    //           );
    return Scaffold(
      appBar: AppBar(title: const Text("Beranda")),
      body:SingleChildScrollView(child:  Column(
        children: [
      CarouselSlider.builder(
        itemCount: images.length,
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        itemBuilder: (context, index, realIdx) {
          return  Container(
            child: Center(
                child: Image.network(images[index],
                    fit: BoxFit.cover)),
          );
        },
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Container(
        child:const Card( child: SizedBox(
            height: 10,
          ),) ,
        height: height * 0.1,
        width: width * 0.5,
      ),
        Container(
        // color: Colors.blue,
        height: height * 0.1,
        width: width * 0.5,
        child: const Card(
          child:  SizedBox(
            height: 10,
          ),
      ),
      ),
        ],
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            mainMenuIcon(
              deviceSize: deviceSize,
              src: "../res/images/listrik.png",
              text: "PLN",
            ),
            mainMenuIcon(
              deviceSize: deviceSize,
              src: "../res/images/pulsa.png",
              text: "Pulsa",
            ),
            mainMenuIcon(
              deviceSize: deviceSize,
              src: "../res/images/paket_data.png",
              text: "Paket Data",
            ),
            mainMenuIcon(
              deviceSize: deviceSize,
              src: "../res/images/pasca_bayar.png",
              text: "Pasca Bayar",
            ),
            mainMenuIcon(
                          deviceSize: deviceSize,
                          src: "../res/images/bpjs.png",
                          text: "BPJS",
                        ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            mainMenuIcon(
              deviceSize: deviceSize,
              src: "../res/images/tv_kabel.png",
              text: "TV Kabel",
            ),
            mainMenuIcon(
              deviceSize: deviceSize,
              src: "../res/images/asuransi.png",
              text: "Asuransi",
            ),
            mainMenuIcon(
              deviceSize: deviceSize,
              src: "../res/images/lihat_semua.png",
              text: "Lihat Semua",
            ),
            mainMenuIcon(
              deviceSize: deviceSize,
              src: "../res/images/asuransi.png",
              text: "Asuransi",
            ),
            mainMenuIcon(
              deviceSize: deviceSize,
              src: "../res/images/lihat_semua.png",
              text: "Lihat Semua",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            mainMenuIcon(
              deviceSize: deviceSize,
              src: "../res/images/tv_kabel.png",
              text: "TV Kabel",
            ),
            mainMenuIcon(
              deviceSize: deviceSize,
              src: "../res/images/asuransi.png",
              text: "Asuransi",
            ),
            mainMenuIcon(
              deviceSize: deviceSize,
              src: "../res/images/lihat_semua.png",
              text: "Lihat Semua",
            ),
            mainMenuIcon(
              deviceSize: deviceSize,
              src: "../res/images/asuransi.png",
              text: "Asuransi",
            ),
            mainMenuIcon(
              deviceSize: deviceSize,
              src: "../res/images/lihat_semua.png",
              text: "Lihat Semua",
            ),
          ],
        ),
        ],
         
      ),
      
      ),floatingActionButton: FloatingActionButton(
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
