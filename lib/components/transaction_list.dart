import 'package:flutter/material.dart';
import './../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  const TransactionList(this.transaction);
  final List<Transaction> transaction;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: transaction.map((tr) {
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
    }).toList());
  }
}
