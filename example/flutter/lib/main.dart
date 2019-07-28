import 'package:bitpanda_price_ticker/bitpanda_price_ticker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prices in USD',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Prices in USD'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, Map<String, String>> prices = {};

  @override
  void initState() {
    super.initState();
    loadLatestPrices();
  }

  Future<void> loadLatestPrices() async {
    print('fetching prices...');
    final p = await fetchAsMap(client: Client());
    print('received info: $p');
    setState(() => prices = p);
  }

  Widget buildRow(Map<String, String> rowInfo) {
    const priceStyle = TextStyle(fontFamily: 'monospace');
    const currencyTitleStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    return ListTile(
      title: Text(rowInfo['crypto'], style: currencyTitleStyle),
      trailing: Text(rowInfo['usd'], style: priceStyle,),
    );
  }

  @override
  Widget build(BuildContext context) {
    // I'm sure this can be done nicer, but ain't nobody got time for that.
    final List<Map<String, String>> rowInfos = [];
    prices.forEach((String crypto, Map<String, String> rates) {
      rowInfos.add({
        'crypto': crypto,
        'usd': rates['USD'],
      });
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemCount: rowInfos.length,
          itemBuilder: (context, index) {
            return buildRow(rowInfos[index]);
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: loadLatestPrices,
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
