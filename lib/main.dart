import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
  }

  class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Groceries',
      amount: 143.86,
      date: DateTime.now(),
    ),

  ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.blue,
                  child: Container(
                    width: double.infinity,
                    child: Text('Chart'),),
                  elevation: 5,
                ),
              ),
            ),
          ),
          Column(children: transactions.map((tx) {
            return Card(
              child: Row(
                children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: 10,
                  horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(tx.amount.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple,

                    ),
                ),
                ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(tx.title,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                      Text(tx.date.toString(),
                        style: TextStyle(color: Colors.grey[800],
                        ),
                      ),
                    ],),
                  ],
                )
            );
          }).toList(),
          ),
          ],
        ),
      );
    }
  }
