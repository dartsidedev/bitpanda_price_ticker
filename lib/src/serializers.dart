import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import './exchange_rate.dart';
import './exchange_rates_map.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[ExchangeRate, ExchangeRatesMap])
final Serializers serializers = _$serializers;
final Serializers jsonSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
