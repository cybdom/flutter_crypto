import 'package:flutter/material.dart';
import 'package:flutter_crypto/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: Color(0xff20253d),
        textTheme: TextTheme(
          headlineSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          titleMedium: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w200,
            color: Color(0xff8c92a5),
          ),
          titleLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w100,
            color: Colors.white,
            letterSpacing: 1.3,
          ),
        ),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Color(0xffcdd2de)),
      ),
      home: Login(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: "Transaction",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              child: homePageContent(),
              top: 0,
              right: 0,
              left: 0,
            ),
            Positioned(
              top: 215,
              bottom: 0,
              left: 0,
              right: 0,
              child: ListView(
                children: <Widget>[
                  TokenCard(
                    cryptoAmount: "12.482",
                    cryptoCurrency: "ETH",
                    cryptoIconURL:
                        "https://cdn4.iconfinder.com/data/icons/cryptocoins/227/ETH-alt-512.png",
                    name: "Mainnet",
                    token: "2XddHTNMkAqFXclyy6nllWi9TPGzE8o6",
                    usdAmount: "51.97",
                  ),
                  TokenCard(
                    cryptoAmount: "326.12",
                    cryptoCurrency: "BTC",
                    cryptoIconURL:
                        "http://www.pngall.com/wp-content/uploads/1/Bitcoin-Free-PNG-Image.png",
                    name: "Bitcoin",
                    token: "2XddHTNMkAqFXclyy6nllWi9TPGzE8o6",
                    usdAmount: "2972887.01",
                  ),
                  TokenCard(
                    cryptoAmount: "12.482",
                    cryptoCurrency: "LTC",
                    cryptoIconURL:
                        "https://images.cointelegraph.com/images/240_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy9iZjc1NDFlMDlhNDU2YTNmYzYxMTNlYzljN2NkZjQwOC5wbmc=.png",
                    name: "LightCoin",
                    token: "2XddHTNMkAqFXclyy6nllWi9TPGzE8o6",
                    usdAmount: "51.97",
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 9.0, horizontal: 21.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.all(21),
                    child: Row(
                      children: <Widget>[
                        Material(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 21,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Add Token",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Bitcoin, CashCoin, Monero...",
                              style: Theme.of(context).textTheme.titleMedium,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class homePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 269,
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 21.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FittedBox(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                DropdownButton(
                  underline: Container(),
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "Ropten testnet",
                        style: TextStyle(color: Colors.orange, fontSize: 15.0),
                      ),
                    ),
                  ],
                  onChanged: (data) {},
                ),
                DropdownButton(
                  underline: Container(),
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "WfO9TNscPrLMHHwKfJhiCOeAkIiQZNqd",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                  onChanged: (data) {},
                ),
              ],
            ),
          ),
          Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Total Balance",
                  style: Theme.of(context).textTheme.titleMedium),
              SizedBox(height: 11),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "\$525.39",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  CustomButton(),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Your Tokens",
                      style: Theme.of(context).textTheme.titleLarge),
                  TextButton(
                    child: Text(
                      "Make Changes",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              Text(
                "Add Token",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TokenCard extends StatelessWidget {
  final String token,
      name,
      cryptoAmount,
      cryptoCurrency,
      usdAmount,
      cryptoIconURL;

  const TokenCard(
      {super.key,
      required this.token,
      required this.name,
      required this.cryptoAmount,
      required this.cryptoCurrency,
      required this.usdAmount,
      required this.cryptoIconURL});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 9.0, horizontal: 21.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: EdgeInsets.all(21),
      child: Container(
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Image.network(
                cryptoIconURL,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    token,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Text(
                    name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Text(
                    "$cryptoAmount $cryptoCurrency",
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Text(
                    "\$$usdAmount",
                    style: Theme.of(context).textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
