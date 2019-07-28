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


## Usage

```dart
import 'package:bitpanda_price_ticker/bitpanda_price_ticker.dart';
import 'package:http/http.dart';

Future<void> main() {
  final map = await fetchAsMap(client: Client());
  final supportedCryptos = map.keys.toList()..sort());
  print('Supported cryptocurrencies: $supportedCryptos');
  // Values are strings as the API returns them.
  // Strings are convenient for displaying results, but don't
  // forget to convert them to numbers if you need to
  // perform some calculation.
  final btc2usd = double.parse(map['BTC']['USD']);
  print('2 BTC is worth ${2 * btc2usd} USD');
}
```


## Contribute

If you'd like to contribute to this package, see the [Contributions guidelines](https://github.com/dartsidedev/bitpanda_price_ticker/blob/master/CONTRIBUTING.md).
