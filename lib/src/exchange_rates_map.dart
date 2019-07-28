import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import './exchange_rate.dart';
import './serializers.dart';

part 'exchange_rates_map.g.dart';

/// Class for encapsulating all cryptocurrencies' exchange rates.
///
/// You can look up all the supported cryptocurrencies by Bitpanda, and
/// then use the [ExchangeRate] class to figure out how much CHF, EUR, GBP or
/// USD a cryptocurrency's worth.
abstract class ExchangeRatesMap
    implements Built<ExchangeRatesMap, ExchangeRatesMapBuilder> {
  factory ExchangeRatesMap([void Function(ExchangeRatesMapBuilder) updates]) =
      _$ExchangeRatesMap;

  ExchangeRatesMap._();

  factory ExchangeRatesMap.fromMap(Map<String, dynamic> map) =>
      jsonSerializers.deserializeWith(serializer, map);

  factory ExchangeRatesMap.fromJson(String s) =>
      ExchangeRatesMap.fromMap(jsonDecode(s));

  /// List of supported cryptocurrencies by the [ExchangeRatesMap] data structure.
  static List<String> supportedCryptocurrencies = <String>[
    'ADA',
    'ATOM',
    'BAT',
    'BCH',
    'BEST',
    'BTC',
    'DASH',
    'EOS',
    'ETC',
    'ETH',
    'KMD',
    'LINK',
    'LSK',
    'LTC',
    'MIOTA',
    'NEO',
    'OMG',
    'PAN',
    'REP',
    'TRX',
    'USDC',
    'USDT',
    'WAVES',
    'XAG',
    'XAU',
    'XEM',
    'XLM',
    'XRP',
    'XTZ',
    'ZEC',
    'ZRX',
  ];

  static Serializer<ExchangeRatesMap> get serializer =>
      _$exchangeRatesMapSerializer;

  // To generate an up2date list, replace these members with the output
  // of the following JavaScript script:
  // const x = 'the response body';
  // Object.keys(x).sort().map(c => `@BuiltValueField(wireName: '${c}')\nExchangeRate get ${c.toLowerCase()};\n`).join('\n')
  // TODO(vince): script could automatically generate documentation, too.

  @BuiltValueField(wireName: 'ADA')
  ExchangeRate get ada;

  @BuiltValueField(wireName: 'ATOM')
  ExchangeRate get atom;

  @BuiltValueField(wireName: 'BAT')
  ExchangeRate get bat;

  @BuiltValueField(wireName: 'BCH')
  ExchangeRate get bch;

  @BuiltValueField(wireName: 'BEST')
  ExchangeRate get best;

  @BuiltValueField(wireName: 'BTC')
  ExchangeRate get btc;

  @BuiltValueField(wireName: 'DASH')
  ExchangeRate get dash;

  @BuiltValueField(wireName: 'EOS')
  ExchangeRate get eos;

  @BuiltValueField(wireName: 'ETC')
  ExchangeRate get etc;

  @BuiltValueField(wireName: 'ETH')
  ExchangeRate get eth;

  @BuiltValueField(wireName: 'KMD')
  ExchangeRate get kmd;

  @BuiltValueField(wireName: 'LINK')
  ExchangeRate get link;

  @BuiltValueField(wireName: 'LSK')
  ExchangeRate get lsk;

  @BuiltValueField(wireName: 'LTC')
  ExchangeRate get ltc;

  @BuiltValueField(wireName: 'MIOTA')
  ExchangeRate get miota;

  @BuiltValueField(wireName: 'NEO')
  ExchangeRate get neo;

  @BuiltValueField(wireName: 'OMG')
  ExchangeRate get omg;

  @BuiltValueField(wireName: 'PAN')
  ExchangeRate get pan;

  @BuiltValueField(wireName: 'REP')
  ExchangeRate get rep;

  @BuiltValueField(wireName: 'TRX')
  ExchangeRate get trx;

  @BuiltValueField(wireName: 'USDC')
  ExchangeRate get usdc;

  @BuiltValueField(wireName: 'USDT')
  ExchangeRate get usdt;

  @BuiltValueField(wireName: 'WAVES')
  ExchangeRate get waves;

  @BuiltValueField(wireName: 'XAG')
  ExchangeRate get xag;

  @BuiltValueField(wireName: 'XAU')
  ExchangeRate get xau;

  @BuiltValueField(wireName: 'XEM')
  ExchangeRate get xem;

  @BuiltValueField(wireName: 'XLM')
  ExchangeRate get xlm;

  @BuiltValueField(wireName: 'XRP')
  ExchangeRate get xrp;

  @BuiltValueField(wireName: 'XTZ')
  ExchangeRate get xtz;

  @BuiltValueField(wireName: 'ZEC')
  ExchangeRate get zec;

  @BuiltValueField(wireName: 'ZRX')
  ExchangeRate get zrx;
}
