import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(decoration: InputDecoration(labelText: 'Enter Title'),
              controller: titleController,
              //onChanged: (value) => titleController = value;,
            ),
            TextField(decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              //onChanged: (value) => amountInput = value,
            ),
            FlatButton(

              child: Text('Add Transaction'),
              onPressed: () {
                addTx(titleController.text, double.parse(amountController.text),
                );
              },
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
