import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

const String _tickerUrl = 'https://api.bitpanda.com/v1/ticker';

/// Currency
///
/// See [readEntry] for more context.
enum Currency {
  CHF,
  EUR,
  GBP,
  USD,
}

/// Cryptocurrency
///
/// See [readEntry] for more context.
enum Cryptocurrency {
  ADA,
  ATOM,
  BAT,
  BCH,
  BEST,
  BTC,
  DASH,
  EOS,
  ETC,
  ETH,
  KMD,
  LINK,
  LSK,
  LTC,
  MIOTA,
  NEO,
  OMG,
  PAN,
  REP,
  TRX,
  USDC,
  USDT,
  WAVES,
  XAG,
  XAU,
  XEM,
  XLM,
  XRP,
  XTZ,
  ZEC,
  ZRX,
}

/// Make request to Bitpanda's Price Ticker API and parse response into map.
///
/// This method returns the original exchange rates map after json decoding.
///
/// This map can be used for iterating over cryptocurrencies and
/// their exchange rates.
///
/// This map will also contain new cryptocurrencies that the Bitpanda
/// team might add to the ticker API, so this map can be used after the
/// Bitpanda API is updated but before this Dart package reflects those
/// changes.
///
/// There are automated tests for spotting these updates, so every time we
/// release a new version of this Dart package, the packageis up to date with
/// the Bitpanda API's response.
///
/// For more information, go to:
/// * https://support.bitpanda.com/hc/en-us/articles/360000727459-Bitpanda-API-Key-and-price-ticker-API
/// * https://api.bitpanda.com/v1/ticker
Future<Map<String, Map<String, String>>> fetch({
  @required http.Client client,
}) async {
  final http.Response response = await client.get(_tickerUrl);
  // This is a bloody nightmare, I can't believe it's really like this.
  // Error with simply _map = m is:
  // type '_InternalLinkedHashMap<String, dynamic>' is not a subtype of
  // type 'Map<String, Map<String, String>>'
  // This also doesn't work. DISGUSTANG!
  // _map = Map.castFrom<String, dynamic, String, Map<String, String>>(map);
  final Map<String, Map<String, String>> map = <String, Map<String, String>>{};
  final Map<String, dynamic> body = jsonDecode(response.body);
  body.forEach((String key, dynamic value) {
    map[key] = Map.castFrom<String, dynamic, String, String>(body[key]);
  });
  return map;
}

/// Read an entry from the map that the [fetch] function returns.
///
/// Using this function is not necessary, it's provided to make discovering currency and cryptocurrency
/// options easier (for example in simple command line scripts).
String readEntry(Map<String, Map<String, String>> map,
    Cryptocurrency cryptocurrency, Currency currency) {
  return map[_cryptocurrencyToString(cryptocurrency)]
      [_currencyToString(currency)];
}

/// List of supported currencies by the Dart package.
///
/// This can be used for displaying users a dropdown of currency options,
/// and it also used in automated tests to ensure that the response from
/// the Bitpanda Price Ticker API has the same supported currencies as
/// this package does.
final List<String> supportedCurrencies =
    Currency.values.map(_currencyToString).toList();

/// List of supported cryptocurrencies by the Dart package.
///
/// This can be used for displaying users a dropdown of cryptocurrency options,
/// and it also used in automated tests to ensure that the response from
/// the Bitpanda Price Ticker API has the same supported cryptocurrencies as
/// this package does.
final List<String> supportedCryptocurrencies =
    Cryptocurrency.values.map(_cryptocurrencyToString).toList();

String _currencyToString(Currency currency) {
  return '$currency'.substring('$Currency.'.length);
}

String _cryptocurrencyToString(Cryptocurrency cryptocurrency) {
  return '$cryptocurrency'.substring('$Cryptocurrency.'.length);
}
