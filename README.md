# `bitpanda_price_ticker`

A Dart client to wrap Bitpanda's price ticker API.

You can read more about Bitpanda's public APIs [in the docs](https://support.bitpanda.com/hc/en-us/articles/360000727459-Bitpanda-API-Key-and-price-ticker-API), or see the API this library gives access to [in action, directly in your browser](https://api.bitpanda.com/v1/ticker)

This is not an official Bitpanda plugin.


## Important links

* [**Package info**](https://pub.dev/packages/bitpanda_price_ticker)
* [**Source code**](https://github.com/dartsidedev/bitpanda_price_ticker)
* [**Issues**](https://github.com/dartsidedev/bitpanda_price_ticker)
* [**Docs**](https://pub.dev/documentation/bitpanda_price_ticker/latest/)
* [**Examples**](https://github.com/dartsidedev/bitpanda_price_ticker/tree/master/example)
* [**CI**](https://travis-ci.com/dartsidedev/bitpanda_price_ticker)

[![Build Status](https://travis-ci.com/dartsidedev/bitpanda_price_ticker.svg?branch=master)](https://travis-ci.com/dartsidedev/bitpanda_price_ticker)

## Usage

```dart
import 'package:bitpanda_price_ticker/bitpanda_price_ticker.dart';
import 'package:http/http.dart';

Future<void> main() async {
  // Provide a (http) Client to the fetch function
  final Map<String, Map<String, String>> map = await fetch(client: Client());
  final List<String> responseKeys = map.keys.toList()..sort();
  print('Bitpanda API supports ${responseKeys.length} cryptocurrencies.');
  print('This dart package supports ${supportedCryptocurrencies.length} crypocurrencies');

  // You can use the map values directly with strings
  // This map will include all cryptocurrencies returned from the
  // Bitpanda price ticker API
  final double btc2usd = double.parse(map['BTC']['USD']);
  print('BTC is worth approximately $btc2usd USD.');

  // You can use the readEntry convenience function in case you don't
  // know every supported cryptocurrency and currency.
  final double best2eur = double.parse(readEntry(map, Cryptocurrency.BEST, Currency.EUR));
  final double pan2eur = double.parse(readEntry(map, Cryptocurrency.PAN, Currency.EUR));
  final double walletValue = 8800 * best2eur + 16e3 * pan2eur;
  print('My wallet\'s current value is $walletValue EUR.');
}
```


## Contribute

If you'd like to contribute to this package, see the [Contributions guidelines](https://github.com/dartsidedev/bitpanda_price_ticker/blob/master/CONTRIBUTING.md).
