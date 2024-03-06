import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Segundo App em Flutter'),
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
    double larguraDaTela = MediaQuery.of(context).size.width;
    //double alturaDaTela = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title,
        style: const TextStyle(
          color: Colors.white
         )
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              
                Image.network('https://i.pinimg.com/564x/84/70/53/847053626a0d7bea0fe32073534d6a2c.jpg',
                 width: larguraDaTela, // Largura da tela
                 height: 703, // Altura da tela
                 fit: BoxFit.cover, 
                ),

              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0.0), // Ajuste conforme necessário
              child: Container(
                alignment: Alignment.bottomCenter,
                color: Colors.red,
                width: 400,
                height: 50,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
                  },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    
  );
  }
}