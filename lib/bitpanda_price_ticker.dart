import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import 'package:bitpanda_price_ticker/src/exchange_rates_map.dart';

// TODO(vince): How to export only one class? show ClassExample doesn't work with export
export 'src/exchange_rate.dart';
export 'src/exchange_rates_map.dart';

const String _tickerUrl = 'https://api.bitpanda.com/v1/ticker';

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
/// release a new version of this Dart package, it should be up to date with
/// the Bitpanda API.
///
/// For more information, go to:
/// * https://support.bitpanda.com/hc/en-us/articles/360000727459-Bitpanda-API-Key-and-price-ticker-API
/// * https://api.bitpanda.com/v1/ticker
Future<Map<String, Map<String, String>>> fetchAsMap({
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

/// Make request to Bitpanda's Price Ticker API and parse response
/// into plan old Dart object.
///
/// This method provides better type-safety and easier discoverability
/// for developers, but makes iterations slightly more cumbersome.
///
/// For more information, go to:
/// * https://support.bitpanda.com/hc/en-us/articles/360000727459-Bitpanda-API-Key-and-price-ticker-API
/// * https://api.bitpanda.com/v1/ticker
Future<ExchangeRatesMap> fetch({
  @required http.Client client,
}) async {
  final http.Response response = await client.get(_tickerUrl);
  return ExchangeRatesMap.fromJson(response.body);
}
