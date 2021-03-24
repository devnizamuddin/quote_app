import 'package:flutter/material.dart';
import 'package:quote_app/Quote.dart';
import 'package:quote_app/quote_card.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text:
            "The greatest glory in living lies not in never falling, but in rising every time we fall",
        author: "Nelson Mandela"),
    Quote(
        text: "The way to get started is to quit talking and begin doing.",
        author: "Walt Disney"),
    Quote(
        text:
            "If life were predictable it would cease to be life, and be without flavor.",
        author: "Eleanor Roosevelt"),
    Quote(
        text: "Life is what happens when you're busy making other plans",
        author: "John Lennon"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Beautiful Quote"),
        centerTitle: true,
      ),
      body: Column(
          children: quotes.map((quote) => QuoteCard(quote, () {
            setState(() {
              quotes.remove(quote);
            });
          })).toList()),
    );
  }
}
