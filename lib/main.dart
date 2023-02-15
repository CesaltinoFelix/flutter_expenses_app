import 'package:flutter/material.dart';
import './models/transaction.dart';
import 'package:intl/intl.dart';

main() {
  runApp(ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  final _transactions = [
    Transaction(
        id: 't1',
        title: 'Novo tenis de corrida',
        value: 310.75,
        date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Conta de luz', value: 250.5, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Despesas Pessoais')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Card(
              child: Text('Grafico'),
              elevation: 5,
              color: Colors.blue,
            ),
          ),
          Column(
              children: _transactions.map((tr) {
            return Card(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    )),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Kz ${tr.value!.toStringAsFixed(2)}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tr.title.toString(),
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        DateFormat('d MMM y').format(tr.date!),
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              elevation: 5,
            );
          }).toList()),
          Card(
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Titulo'),
                    controller: titleController,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Valor (Kz)',
                    ),
                    controller: valueController,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Text('Nova Transacao'),
                        textColor: Colors.purple,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
