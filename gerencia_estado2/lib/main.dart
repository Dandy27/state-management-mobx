import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gerencia_estado2/counter.dart';
import 'package:mobx/mobx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final controle = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(builder: (context){
              return Text(
              '${controle.value}',
              style: Theme.of(context).textTheme.headline4,
            );
            } )
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controle.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
