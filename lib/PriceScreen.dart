import 'package:flutter/material.dart';


class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {

  String selectedCurrency = 'USD';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0,10.0,18.0,0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),

              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(

                  '1BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,

                  ),
                ),
              ),

            ),
          ),

          Container(
            height: 150,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 10.0),
            color: Colors.blueAccent,
            child: DropdownButton<String>(
                value: selectedCurrency,
                items: [
                DropdownMenuItem(
                child: Text('USD'),
                value: 'USD',
              ),
                  DropdownMenuItem(
                    child: Text('EUR'),
                    value: 'EUR',
                  )

            ],onChanged: (value)
            {
              setState(() {
                selectedCurrency = value;
                print(selectedCurrency);
              });

            }),
          )

        ],
      ),
    );
  }
}
