import 'package:flutter/material.dart';
import 'package:flutter_provider_1/screen/counter/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class counter extends StatefulWidget {
  const counter({Key? key}) : super(key: key);

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("counter"),
        ),
        body: Center(
          child: Consumer<CounterProvider>(
            builder: (context, value, child) => Text(
              "${value.i}",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                Provider.of<CounterProvider>(context,listen: false).increment();
              },
              child: Text(
                "+",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                Provider.of<CounterProvider>(context,listen: false).decrement();

              },
              child: Text(
                "-",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                Provider.of<CounterProvider>(context,listen: false).twox();

              },
              child: Text(
                "2x",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                Provider.of<CounterProvider>(context,listen: false).fourx();

              },
              child: Text(
                "4x",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                Provider.of<CounterProvider>(context,listen: false).sixx();

              },
              child: Text(
                "6x",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
