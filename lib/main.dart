import 'package:flutter/material.dart';
import 'package:object_box/data/objectbox.g.dart';
import 'package:object_box/utils/dio_singleton.dart';

//late ObjectBox objectbox;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
    //objectbox = await ObjectBox.create();
  
 DioSingleton.createDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late Store _store;

  @override
  void initState() async {


    super.initState();
  }


  @override
  void dispose() {
    _store.close();
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
     
        title: Text(widget.title),
      ),
      body: const Text('cargando')               
    );
  }
}
