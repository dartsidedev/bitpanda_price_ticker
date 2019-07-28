import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exchange_rate.g.dart';

/// Class for encapsulating currency values for a cryptocurrency.
///
/// You can look up how much CHF, EUR, GBP or USD a cryptocurrency's worth.
abstract class ExchangeRate
    implements Built<ExchangeRate, ExchangeRateBuilder> {
  factory ExchangeRate([void Function(ExchangeRateBuilder) updates]) =
      _$ExchangeRate;

  ExchangeRate._();

  static Serializer<ExchangeRate> get serializer => _$exchangeRateSerializer;

  /// List of supported currencies by the [ExchangeRate] data structure.
  static List<String> supportedCurrencies = <String>[
    'CHF',
    'EUR',
    'GBP',
    'USD',
  ];

  @BuiltValueField(wireName: 'CHF')
  String get chf;

  @BuiltValueField(wireName: 'EUR')
  String get eur;

  @BuiltValueField(wireName: 'GBP')
  String get gbp;

  @BuiltValueField(wireName: 'USD')
  String get usd;
}
