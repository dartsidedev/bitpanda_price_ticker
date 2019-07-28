// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExchangeRate> _$exchangeRateSerializer =
    new _$ExchangeRateSerializer();

class _$ExchangeRateSerializer implements StructuredSerializer<ExchangeRate> {
  @override
  final Iterable<Type> types = const [ExchangeRate, _$ExchangeRate];
  @override
  final String wireName = 'ExchangeRate';

  @override
  Iterable<Object> serialize(Serializers serializers, ExchangeRate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'CHF',
      serializers.serialize(object.chf, specifiedType: const FullType(String)),
      'EUR',
      serializers.serialize(object.eur, specifiedType: const FullType(String)),
      'GBP',
      serializers.serialize(object.gbp, specifiedType: const FullType(String)),
      'USD',
      serializers.serialize(object.usd, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ExchangeRate deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExchangeRateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'CHF':
          result.chf = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'EUR':
          result.eur = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'GBP':
          result.gbp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'USD':
          result.usd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ExchangeRate extends ExchangeRate {
  @override
  final String chf;
  @override
  final String eur;
  @override
  final String gbp;
  @override
  final String usd;

  factory _$ExchangeRate([void Function(ExchangeRateBuilder) updates]) =>
      (new ExchangeRateBuilder()..update(updates)).build();

  _$ExchangeRate._({this.chf, this.eur, this.gbp, this.usd}) : super._() {
    if (chf == null) {
      throw new BuiltValueNullFieldError('ExchangeRate', 'chf');
    }
    if (eur == null) {
      throw new BuiltValueNullFieldError('ExchangeRate', 'eur');
    }
    if (gbp == null) {
      throw new BuiltValueNullFieldError('ExchangeRate', 'gbp');
    }
    if (usd == null) {
      throw new BuiltValueNullFieldError('ExchangeRate', 'usd');
    }
  }

  @override
  ExchangeRate rebuild(void Function(ExchangeRateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExchangeRateBuilder toBuilder() => new ExchangeRateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExchangeRate &&
        chf == other.chf &&
        eur == other.eur &&
        gbp == other.gbp &&
        usd == other.usd;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, chf.hashCode), eur.hashCode), gbp.hashCode),
        usd.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExchangeRate')
          ..add('chf', chf)
          ..add('eur', eur)
          ..add('gbp', gbp)
          ..add('usd', usd))
        .toString();
  }
}

class ExchangeRateBuilder
    implements Builder<ExchangeRate, ExchangeRateBuilder> {
  _$ExchangeRate _$v;

  String _chf;
  String get chf => _$this._chf;
  set chf(String chf) => _$this._chf = chf;

  String _eur;
  String get eur => _$this._eur;
  set eur(String eur) => _$this._eur = eur;

  String _gbp;
  String get gbp => _$this._gbp;
  set gbp(String gbp) => _$this._gbp = gbp;

  String _usd;
  String get usd => _$this._usd;
  set usd(String usd) => _$this._usd = usd;

  ExchangeRateBuilder();

  ExchangeRateBuilder get _$this {
    if (_$v != null) {
      _chf = _$v.chf;
      _eur = _$v.eur;
      _gbp = _$v.gbp;
      _usd = _$v.usd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExchangeRate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExchangeRate;
  }

  @override
  void update(void Function(ExchangeRateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExchangeRate build() {
    final _$result =
        _$v ?? new _$ExchangeRate._(chf: chf, eur: eur, gbp: gbp, usd: usd);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
