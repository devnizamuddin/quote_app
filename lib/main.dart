import 'package:flutter/material.dart';
import 'package:quote_app/Quote.dart';
import 'package:quote_app/quote_card.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: QuoteList(), //run a stateful widget
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  //list of quote of different person in the world
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
        brightness: Brightness.dark,
        //app bar shadow
        elevation: 0,
        title: Text("Beautiful Quote"),
        centerTitle: true,
      ),
      body: Column(
        //map quotes and get single quote and app in quoteCard
          children: quotes
              .map((quote) => QuoteCard(quote, () {
                    //passing function
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList()),
    );
  }
}
