import 'package:bitpanda_price_ticker/bitpanda_price_ticker.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';

// This test makes a real HTTP request to the Bitpanda Price ticker API.

void main() {
  group('"fetchAsMap" function', () {
    Map<String, Map<String, String>> map;

    setUpAll(() async {
      map = await fetch(client: Client());
    });

    test('parses response to Map', () {
      expect(map, isA<Map<String, Map<String, String>>>());
    });

    test('has BTC values in various currencies', () {
      expect(map['BTC'], isA<Map<String, String>>());
    });

    test('BTC-USD exchange rate is parseable into double', () {
      expect(() {
        double.parse(map['BTC']['USD']);
      }, returnsNormally);
    });
  });

  group('Bitpanda Price Ticker API and Dart package synchronization', () {
    Map<String, Map<String, String>> map;

    setUpAll(() async {
      map = await fetch(client: Client());
    });

    test('supported cryptocurrency lists matching', () {
      expect(
        map.keys.toList()..sort(),
        equals(supportedCryptocurrencies),
      );
    });

    test('supported currency lists matching', () {
      expect(
        map['BTC'].keys.toList()..sort(),
        equals(supportedCurrencies),
      );
    });
  });
}
