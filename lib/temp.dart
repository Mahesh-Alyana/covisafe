import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' as JSON;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MaterialColor> _colors = [Colors.blue, Colors.indigo, Colors.red];

  @override
  void initState() {
    super.initState();
    syncmethodasync();
  }

   List currency=[];
  void syncmethodasync() async {
    currency = await getcurrency();
  }

  Future<List> getcurrency() async {
    var uri = Uri(
      scheme: 'https',
      host: 'sandbox-api.coinmarketcap.com',
      path: '/v1/cryptocurrency/listings/latest',
      fragment: 'baz',
      queryParameters: {'start': '1', 'limit': '5000', 'convert': 'USD'},
    );

    var response = await http.get(uri, headers: {
      'Accepts': 'application/json',
      'X-CMC_PRO_API_KEY': 'b54bcf4d-1bca-4e8e-9a24-22ff2c3d462c',
    });
    // print(response.body);
    return JSON.jsonDecode(response.body);
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("crypto App"),
      ),
      body: _crypto_widget(),
    );
  }

  Widget _crypto_widget() {
    return new Container(
      child: new Flexible(
          child: new ListView.builder(
        itemCount: currency.length,
        itemBuilder: (BuildContext context, int index) {
          final Map curren = currency[index];
          final MaterialColor color = _colors[index % _colors.length];
          return _getListView(curren, color);
        },
      )),
    );
  }

  ListTile _getListView(Map currency, MaterialColor color) {
    return new ListTile(
      leading: new CircleAvatar(
        backgroundColor: color,
        child: new Text(currency['name'][0]),
      ),
      title: new Text(
        currency['name'],
        style: new TextStyle(fontWeight: FontWeight.bold),
      ),
      // subtitle: ,
    );
  }
}
