// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rates_map.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExchangeRatesMap> _$exchangeRatesMapSerializer =
    new _$ExchangeRatesMapSerializer();

class _$ExchangeRatesMapSerializer
    implements StructuredSerializer<ExchangeRatesMap> {
  @override
  final Iterable<Type> types = const [ExchangeRatesMap, _$ExchangeRatesMap];
  @override
  final String wireName = 'ExchangeRatesMap';

  @override
  Iterable<Object> serialize(Serializers serializers, ExchangeRatesMap object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'ADA',
      serializers.serialize(object.ada,
          specifiedType: const FullType(ExchangeRate)),
      'ATOM',
      serializers.serialize(object.atom,
          specifiedType: const FullType(ExchangeRate)),
      'BAT',
      serializers.serialize(object.bat,
          specifiedType: const FullType(ExchangeRate)),
      'BCH',
      serializers.serialize(object.bch,
          specifiedType: const FullType(ExchangeRate)),
      'BEST',
      serializers.serialize(object.best,
          specifiedType: const FullType(ExchangeRate)),
      'BTC',
      serializers.serialize(object.btc,
          specifiedType: const FullType(ExchangeRate)),
      'DASH',
      serializers.serialize(object.dash,
          specifiedType: const FullType(ExchangeRate)),
      'EOS',
      serializers.serialize(object.eos,
          specifiedType: const FullType(ExchangeRate)),
      'ETC',
      serializers.serialize(object.etc,
          specifiedType: const FullType(ExchangeRate)),
      'ETH',
      serializers.serialize(object.eth,
          specifiedType: const FullType(ExchangeRate)),
      'KMD',
      serializers.serialize(object.kmd,
          specifiedType: const FullType(ExchangeRate)),
      'LINK',
      serializers.serialize(object.link,
          specifiedType: const FullType(ExchangeRate)),
      'LSK',
      serializers.serialize(object.lsk,
          specifiedType: const FullType(ExchangeRate)),
      'LTC',
      serializers.serialize(object.ltc,
          specifiedType: const FullType(ExchangeRate)),
      'MIOTA',
      serializers.serialize(object.miota,
          specifiedType: const FullType(ExchangeRate)),
      'NEO',
      serializers.serialize(object.neo,
          specifiedType: const FullType(ExchangeRate)),
      'OMG',
      serializers.serialize(object.omg,
          specifiedType: const FullType(ExchangeRate)),
      'PAN',
      serializers.serialize(object.pan,
          specifiedType: const FullType(ExchangeRate)),
      'REP',
      serializers.serialize(object.rep,
          specifiedType: const FullType(ExchangeRate)),
      'TRX',
      serializers.serialize(object.trx,
          specifiedType: const FullType(ExchangeRate)),
      'USDC',
      serializers.serialize(object.usdc,
          specifiedType: const FullType(ExchangeRate)),
      'USDT',
      serializers.serialize(object.usdt,
          specifiedType: const FullType(ExchangeRate)),
      'WAVES',
      serializers.serialize(object.waves,
          specifiedType: const FullType(ExchangeRate)),
      'XAG',
      serializers.serialize(object.xag,
          specifiedType: const FullType(ExchangeRate)),
      'XAU',
      serializers.serialize(object.xau,
          specifiedType: const FullType(ExchangeRate)),
      'XEM',
      serializers.serialize(object.xem,
          specifiedType: const FullType(ExchangeRate)),
      'XLM',
      serializers.serialize(object.xlm,
          specifiedType: const FullType(ExchangeRate)),
      'XRP',
      serializers.serialize(object.xrp,
          specifiedType: const FullType(ExchangeRate)),
      'XTZ',
      serializers.serialize(object.xtz,
          specifiedType: const FullType(ExchangeRate)),
      'ZEC',
      serializers.serialize(object.zec,
          specifiedType: const FullType(ExchangeRate)),
      'ZRX',
      serializers.serialize(object.zrx,
          specifiedType: const FullType(ExchangeRate)),
    ];

    return result;
  }

  @override
  ExchangeRatesMap deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExchangeRatesMapBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ADA':
          result.ada.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'ATOM':
          result.atom.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'BAT':
          result.bat.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'BCH':
          result.bch.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'BEST':
          result.best.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'BTC':
          result.btc.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'DASH':
          result.dash.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'EOS':
          result.eos.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'ETC':
          result.etc.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'ETH':
          result.eth.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'KMD':
          result.kmd.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'LINK':
          result.link.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'LSK':
          result.lsk.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'LTC':
          result.ltc.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'MIOTA':
          result.miota.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'NEO':
          result.neo.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'OMG':
          result.omg.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'PAN':
          result.pan.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'REP':
          result.rep.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'TRX':
          result.trx.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'USDC':
          result.usdc.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'USDT':
          result.usdt.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'WAVES':
          result.waves.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'XAG':
          result.xag.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'XAU':
          result.xau.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'XEM':
          result.xem.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'XLM':
          result.xlm.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'XRP':
          result.xrp.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'XTZ':
          result.xtz.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'ZEC':
          result.zec.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
        case 'ZRX':
          result.zrx.replace(serializers.deserialize(value,
              specifiedType: const FullType(ExchangeRate)) as ExchangeRate);
          break;
      }
    }

    return result.build();
  }
}

class _$ExchangeRatesMap extends ExchangeRatesMap {
  @override
  final ExchangeRate ada;
  @override
  final ExchangeRate atom;
  @override
  final ExchangeRate bat;
  @override
  final ExchangeRate bch;
  @override
  final ExchangeRate best;
  @override
  final ExchangeRate btc;
  @override
  final ExchangeRate dash;
  @override
  final ExchangeRate eos;
  @override
  final ExchangeRate etc;
  @override
  final ExchangeRate eth;
  @override
  final ExchangeRate kmd;
  @override
  final ExchangeRate link;
  @override
  final ExchangeRate lsk;
  @override
  final ExchangeRate ltc;
  @override
  final ExchangeRate miota;
  @override
  final ExchangeRate neo;
  @override
  final ExchangeRate omg;
  @override
  final ExchangeRate pan;
  @override
  final ExchangeRate rep;
  @override
  final ExchangeRate trx;
  @override
  final ExchangeRate usdc;
  @override
  final ExchangeRate usdt;
  @override
  final ExchangeRate waves;
  @override
  final ExchangeRate xag;
  @override
  final ExchangeRate xau;
  @override
  final ExchangeRate xem;
  @override
  final ExchangeRate xlm;
  @override
  final ExchangeRate xrp;
  @override
  final ExchangeRate xtz;
  @override
  final ExchangeRate zec;
  @override
  final ExchangeRate zrx;

  factory _$ExchangeRatesMap(
          [void Function(ExchangeRatesMapBuilder) updates]) =>
      (new ExchangeRatesMapBuilder()..update(updates)).build();

  _$ExchangeRatesMap._(
      {this.ada,
      this.atom,
      this.bat,
      this.bch,
      this.best,
      this.btc,
      this.dash,
      this.eos,
      this.etc,
      this.eth,
      this.kmd,
      this.link,
      this.lsk,
      this.ltc,
      this.miota,
      this.neo,
      this.omg,
      this.pan,
      this.rep,
      this.trx,
      this.usdc,
      this.usdt,
      this.waves,
      this.xag,
      this.xau,
      this.xem,
      this.xlm,
      this.xrp,
      this.xtz,
      this.zec,
      this.zrx})
      : super._() {
    if (ada == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'ada');
    }
    if (atom == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'atom');
    }
    if (bat == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'bat');
    }
    if (bch == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'bch');
    }
    if (best == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'best');
    }
    if (btc == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'btc');
    }
    if (dash == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'dash');
    }
    if (eos == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'eos');
    }
    if (etc == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'etc');
    }
    if (eth == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'eth');
    }
    if (kmd == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'kmd');
    }
    if (link == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'link');
    }
    if (lsk == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'lsk');
    }
    if (ltc == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'ltc');
    }
    if (miota == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'miota');
    }
    if (neo == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'neo');
    }
    if (omg == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'omg');
    }
    if (pan == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'pan');
    }
    if (rep == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'rep');
    }
    if (trx == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'trx');
    }
    if (usdc == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'usdc');
    }
    if (usdt == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'usdt');
    }
    if (waves == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'waves');
    }
    if (xag == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'xag');
    }
    if (xau == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'xau');
    }
    if (xem == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'xem');
    }
    if (xlm == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'xlm');
    }
    if (xrp == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'xrp');
    }
    if (xtz == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'xtz');
    }
    if (zec == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'zec');
    }
    if (zrx == null) {
      throw new BuiltValueNullFieldError('ExchangeRatesMap', 'zrx');
    }
  }

  @override
  ExchangeRatesMap rebuild(void Function(ExchangeRatesMapBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExchangeRatesMapBuilder toBuilder() =>
      new ExchangeRatesMapBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExchangeRatesMap &&
        ada == other.ada &&
        atom == other.atom &&
        bat == other.bat &&
        bch == other.bch &&
        best == other.best &&
        btc == other.btc &&
        dash == other.dash &&
        eos == other.eos &&
        etc == other.etc &&
        eth == other.eth &&
        kmd == other.kmd &&
        link == other.link &&
        lsk == other.lsk &&
        ltc == other.ltc &&
        miota == other.miota &&
        neo == other.neo &&
        omg == other.omg &&
        pan == other.pan &&
        rep == other.rep &&
        trx == other.trx &&
        usdc == other.usdc &&
        usdt == other.usdt &&
        waves == other.waves &&
        xag == other.xag &&
        xau == other.xau &&
        xem == other.xem &&
        xlm == other.xlm &&
        xrp == other.xrp &&
        xtz == other.xtz &&
        zec == other.zec &&
        zrx == other.zrx;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, ada.hashCode), atom.hashCode), bat.hashCode), bch.hashCode), best.hashCode), btc.hashCode), dash.hashCode), eos.hashCode), etc.hashCode), eth.hashCode), kmd.hashCode), link.hashCode),
                                                                                lsk.hashCode),
                                                                            ltc.hashCode),
                                                                        miota.hashCode),
                                                                    neo.hashCode),
                                                                omg.hashCode),
                                                            pan.hashCode),
                                                        rep.hashCode),
                                                    trx.hashCode),
                                                usdc.hashCode),
                                            usdt.hashCode),
                                        waves.hashCode),
                                    xag.hashCode),
                                xau.hashCode),
                            xem.hashCode),
                        xlm.hashCode),
                    xrp.hashCode),
                xtz.hashCode),
            zec.hashCode),
        zrx.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExchangeRatesMap')
          ..add('ada', ada)
          ..add('atom', atom)
          ..add('bat', bat)
          ..add('bch', bch)
          ..add('best', best)
          ..add('btc', btc)
          ..add('dash', dash)
          ..add('eos', eos)
          ..add('etc', etc)
          ..add('eth', eth)
          ..add('kmd', kmd)
          ..add('link', link)
          ..add('lsk', lsk)
          ..add('ltc', ltc)
          ..add('miota', miota)
          ..add('neo', neo)
          ..add('omg', omg)
          ..add('pan', pan)
          ..add('rep', rep)
          ..add('trx', trx)
          ..add('usdc', usdc)
          ..add('usdt', usdt)
          ..add('waves', waves)
          ..add('xag', xag)
          ..add('xau', xau)
          ..add('xem', xem)
          ..add('xlm', xlm)
          ..add('xrp', xrp)
          ..add('xtz', xtz)
          ..add('zec', zec)
          ..add('zrx', zrx))
        .toString();
  }
}

class ExchangeRatesMapBuilder
    implements Builder<ExchangeRatesMap, ExchangeRatesMapBuilder> {
  _$ExchangeRatesMap _$v;

  ExchangeRateBuilder _ada;
  ExchangeRateBuilder get ada => _$this._ada ??= new ExchangeRateBuilder();
  set ada(ExchangeRateBuilder ada) => _$this._ada = ada;

  ExchangeRateBuilder _atom;
  ExchangeRateBuilder get atom => _$this._atom ??= new ExchangeRateBuilder();
  set atom(ExchangeRateBuilder atom) => _$this._atom = atom;

  ExchangeRateBuilder _bat;
  ExchangeRateBuilder get bat => _$this._bat ??= new ExchangeRateBuilder();
  set bat(ExchangeRateBuilder bat) => _$this._bat = bat;

  ExchangeRateBuilder _bch;
  ExchangeRateBuilder get bch => _$this._bch ??= new ExchangeRateBuilder();
  set bch(ExchangeRateBuilder bch) => _$this._bch = bch;

  ExchangeRateBuilder _best;
  ExchangeRateBuilder get best => _$this._best ??= new ExchangeRateBuilder();
  set best(ExchangeRateBuilder best) => _$this._best = best;

  ExchangeRateBuilder _btc;
  ExchangeRateBuilder get btc => _$this._btc ??= new ExchangeRateBuilder();
  set btc(ExchangeRateBuilder btc) => _$this._btc = btc;

  ExchangeRateBuilder _dash;
  ExchangeRateBuilder get dash => _$this._dash ??= new ExchangeRateBuilder();
  set dash(ExchangeRateBuilder dash) => _$this._dash = dash;

  ExchangeRateBuilder _eos;
  ExchangeRateBuilder get eos => _$this._eos ??= new ExchangeRateBuilder();
  set eos(ExchangeRateBuilder eos) => _$this._eos = eos;

  ExchangeRateBuilder _etc;
  ExchangeRateBuilder get etc => _$this._etc ??= new ExchangeRateBuilder();
  set etc(ExchangeRateBuilder etc) => _$this._etc = etc;

  ExchangeRateBuilder _eth;
  ExchangeRateBuilder get eth => _$this._eth ??= new ExchangeRateBuilder();
  set eth(ExchangeRateBuilder eth) => _$this._eth = eth;

  ExchangeRateBuilder _kmd;
  ExchangeRateBuilder get kmd => _$this._kmd ??= new ExchangeRateBuilder();
  set kmd(ExchangeRateBuilder kmd) => _$this._kmd = kmd;

  ExchangeRateBuilder _link;
  ExchangeRateBuilder get link => _$this._link ??= new ExchangeRateBuilder();
  set link(ExchangeRateBuilder link) => _$this._link = link;

  ExchangeRateBuilder _lsk;
  ExchangeRateBuilder get lsk => _$this._lsk ??= new ExchangeRateBuilder();
  set lsk(ExchangeRateBuilder lsk) => _$this._lsk = lsk;

  ExchangeRateBuilder _ltc;
  ExchangeRateBuilder get ltc => _$this._ltc ??= new ExchangeRateBuilder();
  set ltc(ExchangeRateBuilder ltc) => _$this._ltc = ltc;

  ExchangeRateBuilder _miota;
  ExchangeRateBuilder get miota => _$this._miota ??= new ExchangeRateBuilder();
  set miota(ExchangeRateBuilder miota) => _$this._miota = miota;

  ExchangeRateBuilder _neo;
  ExchangeRateBuilder get neo => _$this._neo ??= new ExchangeRateBuilder();
  set neo(ExchangeRateBuilder neo) => _$this._neo = neo;

  ExchangeRateBuilder _omg;
  ExchangeRateBuilder get omg => _$this._omg ??= new ExchangeRateBuilder();
  set omg(ExchangeRateBuilder omg) => _$this._omg = omg;

  ExchangeRateBuilder _pan;
  ExchangeRateBuilder get pan => _$this._pan ??= new ExchangeRateBuilder();
  set pan(ExchangeRateBuilder pan) => _$this._pan = pan;

  ExchangeRateBuilder _rep;
  ExchangeRateBuilder get rep => _$this._rep ??= new ExchangeRateBuilder();
  set rep(ExchangeRateBuilder rep) => _$this._rep = rep;

  ExchangeRateBuilder _trx;
  ExchangeRateBuilder get trx => _$this._trx ??= new ExchangeRateBuilder();
  set trx(ExchangeRateBuilder trx) => _$this._trx = trx;

  ExchangeRateBuilder _usdc;
  ExchangeRateBuilder get usdc => _$this._usdc ??= new ExchangeRateBuilder();
  set usdc(ExchangeRateBuilder usdc) => _$this._usdc = usdc;

  ExchangeRateBuilder _usdt;
  ExchangeRateBuilder get usdt => _$this._usdt ??= new ExchangeRateBuilder();
  set usdt(ExchangeRateBuilder usdt) => _$this._usdt = usdt;

  ExchangeRateBuilder _waves;
  ExchangeRateBuilder get waves => _$this._waves ??= new ExchangeRateBuilder();
  set waves(ExchangeRateBuilder waves) => _$this._waves = waves;

  ExchangeRateBuilder _xag;
  ExchangeRateBuilder get xag => _$this._xag ??= new ExchangeRateBuilder();
  set xag(ExchangeRateBuilder xag) => _$this._xag = xag;

  ExchangeRateBuilder _xau;
  ExchangeRateBuilder get xau => _$this._xau ??= new ExchangeRateBuilder();
  set xau(ExchangeRateBuilder xau) => _$this._xau = xau;

  ExchangeRateBuilder _xem;
  ExchangeRateBuilder get xem => _$this._xem ??= new ExchangeRateBuilder();
  set xem(ExchangeRateBuilder xem) => _$this._xem = xem;

  ExchangeRateBuilder _xlm;
  ExchangeRateBuilder get xlm => _$this._xlm ??= new ExchangeRateBuilder();
  set xlm(ExchangeRateBuilder xlm) => _$this._xlm = xlm;

  ExchangeRateBuilder _xrp;
  ExchangeRateBuilder get xrp => _$this._xrp ??= new ExchangeRateBuilder();
  set xrp(ExchangeRateBuilder xrp) => _$this._xrp = xrp;

  ExchangeRateBuilder _xtz;
  ExchangeRateBuilder get xtz => _$this._xtz ??= new ExchangeRateBuilder();
  set xtz(ExchangeRateBuilder xtz) => _$this._xtz = xtz;

  ExchangeRateBuilder _zec;
  ExchangeRateBuilder get zec => _$this._zec ??= new ExchangeRateBuilder();
  set zec(ExchangeRateBuilder zec) => _$this._zec = zec;

  ExchangeRateBuilder _zrx;
  ExchangeRateBuilder get zrx => _$this._zrx ??= new ExchangeRateBuilder();
  set zrx(ExchangeRateBuilder zrx) => _$this._zrx = zrx;

  ExchangeRatesMapBuilder();

  ExchangeRatesMapBuilder get _$this {
    if (_$v != null) {
      _ada = _$v.ada?.toBuilder();
      _atom = _$v.atom?.toBuilder();
      _bat = _$v.bat?.toBuilder();
      _bch = _$v.bch?.toBuilder();
      _best = _$v.best?.toBuilder();
      _btc = _$v.btc?.toBuilder();
      _dash = _$v.dash?.toBuilder();
      _eos = _$v.eos?.toBuilder();
      _etc = _$v.etc?.toBuilder();
      _eth = _$v.eth?.toBuilder();
      _kmd = _$v.kmd?.toBuilder();
      _link = _$v.link?.toBuilder();
      _lsk = _$v.lsk?.toBuilder();
      _ltc = _$v.ltc?.toBuilder();
      _miota = _$v.miota?.toBuilder();
      _neo = _$v.neo?.toBuilder();
      _omg = _$v.omg?.toBuilder();
      _pan = _$v.pan?.toBuilder();
      _rep = _$v.rep?.toBuilder();
      _trx = _$v.trx?.toBuilder();
      _usdc = _$v.usdc?.toBuilder();
      _usdt = _$v.usdt?.toBuilder();
      _waves = _$v.waves?.toBuilder();
      _xag = _$v.xag?.toBuilder();
      _xau = _$v.xau?.toBuilder();
      _xem = _$v.xem?.toBuilder();
      _xlm = _$v.xlm?.toBuilder();
      _xrp = _$v.xrp?.toBuilder();
      _xtz = _$v.xtz?.toBuilder();
      _zec = _$v.zec?.toBuilder();
      _zrx = _$v.zrx?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExchangeRatesMap other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExchangeRatesMap;
  }

  @override
  void update(void Function(ExchangeRatesMapBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExchangeRatesMap build() {
    _$ExchangeRatesMap _$result;
    try {
      _$result = _$v ??
          new _$ExchangeRatesMap._(
              ada: ada.build(),
              atom: atom.build(),
              bat: bat.build(),
              bch: bch.build(),
              best: best.build(),
              btc: btc.build(),
              dash: dash.build(),
              eos: eos.build(),
              etc: etc.build(),
              eth: eth.build(),
              kmd: kmd.build(),
              link: link.build(),
              lsk: lsk.build(),
              ltc: ltc.build(),
              miota: miota.build(),
              neo: neo.build(),
              omg: omg.build(),
              pan: pan.build(),
              rep: rep.build(),
              trx: trx.build(),
              usdc: usdc.build(),
              usdt: usdt.build(),
              waves: waves.build(),
              xag: xag.build(),
              xau: xau.build(),
              xem: xem.build(),
              xlm: xlm.build(),
              xrp: xrp.build(),
              xtz: xtz.build(),
              zec: zec.build(),
              zrx: zrx.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ada';
        ada.build();
        _$failedField = 'atom';
        atom.build();
        _$failedField = 'bat';
        bat.build();
        _$failedField = 'bch';
        bch.build();
        _$failedField = 'best';
        best.build();
        _$failedField = 'btc';
        btc.build();
        _$failedField = 'dash';
        dash.build();
        _$failedField = 'eos';
        eos.build();
        _$failedField = 'etc';
        etc.build();
        _$failedField = 'eth';
        eth.build();
        _$failedField = 'kmd';
        kmd.build();
        _$failedField = 'link';
        link.build();
        _$failedField = 'lsk';
        lsk.build();
        _$failedField = 'ltc';
        ltc.build();
        _$failedField = 'miota';
        miota.build();
        _$failedField = 'neo';
        neo.build();
        _$failedField = 'omg';
        omg.build();
        _$failedField = 'pan';
        pan.build();
        _$failedField = 'rep';
        rep.build();
        _$failedField = 'trx';
        trx.build();
        _$failedField = 'usdc';
        usdc.build();
        _$failedField = 'usdt';
        usdt.build();
        _$failedField = 'waves';
        waves.build();
        _$failedField = 'xag';
        xag.build();
        _$failedField = 'xau';
        xau.build();
        _$failedField = 'xem';
        xem.build();
        _$failedField = 'xlm';
        xlm.build();
        _$failedField = 'xrp';
        xrp.build();
        _$failedField = 'xtz';
        xtz.build();
        _$failedField = 'zec';
        zec.build();
        _$failedField = 'zrx';
        zrx.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExchangeRatesMap', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
