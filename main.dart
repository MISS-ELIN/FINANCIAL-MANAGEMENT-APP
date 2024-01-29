import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financial Services',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/loans': (context) => LoansPage(),
        '/savings': (context) => SavingsPage(),
        '/tips': (context) => AgricultureTipsPage(),
        '/support': (context) => CustomerSupportPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Financial Services'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Welcome to our Financial Services',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(20),
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: <Widget>[
                Card(
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, '/loans'),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        SizedBox(height: 10),
                        Text('Loans'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, '/savings'),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.account_balance_wallet),
                        SizedBox(height: 10),
                        Text('Savings'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, '/tips'),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.lightbulb_outline),
                        SizedBox(height: 10),
                        Text('Agriculture Tips'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, '/support'),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.help_outline),
                        SizedBox(height: 10),
                        Text('Customer Support'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoansPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loans'),
      ),
      body: Center(
        child: Text('This page is under construction.'),
      ),
    );
  }
}

class SavingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Savings'),
      ),
      body: Center(
        child: Text('This page is under construction.'),
      ),
    );
  }
}

class AgricultureTipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agriculture Tips'),
      ),
      body: Center(
        child: Text('This page is under construction.'),
      ),
    );
  }
}

class CustomerSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Support'),
      ),
      body: Center(
        child: Text('This page is under construction.'),
      ),
    );
  }
}