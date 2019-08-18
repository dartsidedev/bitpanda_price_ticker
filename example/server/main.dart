import 'package:bitpanda_price_ticker/bitpanda_price_ticker.dart';
import 'package:http/http.dart';

Future<void> main() async {
  // Provide a (http) Client to the fetch function
  final Map<String, Map<String, String>> map = await fetch(client: Client());
  final List<String> responseKeys = map.keys.toList()..sort();
  print('Bitpanda API supports ${responseKeys.length} cryptocurrencies.');
  print(
      'This dart package supports ${supportedCryptocurrencies.length} crypocurrencies');

  // You can use the map values directly with strings
  // This map will include all cryptocurrencies returned from the
  // Bitpanda price ticker API
  final double btc2usd = double.parse(map['BTC']['USD']);
  print('BTC is worth approximately $btc2usd USD.');

  // You can use the readEntry convenience function in case you don't
  // know every supported cryptocurrency and currency.
  final double best2eur =
      double.parse(readEntry(map, Cryptocurrency.BEST, Currency.EUR));
  final double pan2eur =
      double.parse(readEntry(map, Cryptocurrency.PAN, Currency.EUR));
  final double walletValue = 8800 * best2eur + 16e3 * pan2eur;
  print('My wallet\'s current value is $walletValue EUR.');
}
