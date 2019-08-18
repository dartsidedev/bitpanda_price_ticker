import 'package:bitpanda_price_ticker/bitpanda_price_ticker.dart';
import 'package:http/http.dart';

Future<void> main() async {
  final map = await fetchAsMap(client: Client());
  final supportedCryptos = map.keys.toList()..sort();
  print('Supported cryptocurrencies: $supportedCryptos');
  final btc2usd = double.parse(map['BTC']['USD']);
  print('2 BTC is worth ${2 * btc2usd} USD');
}
