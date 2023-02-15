import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  TransactionForm();
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
