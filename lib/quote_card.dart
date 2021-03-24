import 'package:flutter/material.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {

  Quote quote;
  Function delete;

  QuoteCard(this.quote, this.delete);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              quote.text,
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              quote.author,
              style: TextStyle(color: Colors.grey[900]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton.icon(
                  onPressed: delete,
                  label: Text("Delete",style: TextStyle(color: Colors.red),),
                  icon: Icon(Icons.delete,color: Colors.red,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
