import 'package:bitpanda_price_ticker/bitpanda_price_ticker.dart';
import 'package:test/test.dart';

const String jsonExample =
    '{"BTC":{"EUR":"8480.30","USD":"9443.54","CHF":"9383.29","GBP":"7626.18"},"PAN":{"EUR":"0.0431","USD":"0.0480","CHF":"0.0477","GBP":"0.0388"},"LINK":{"EUR":"2.0100","USD":"2.2383","CHF":"2.2240","GBP":"1.8076"},"ETH":{"EUR":"187.27","USD":"208.55","CHF":"207.22","GBP":"168.41"},"BEST":{"EUR":"0.1000","USD":"0.1114","CHF":"0.1106","GBP":"0.0899"},"XRP":{"EUR":"0.2790","USD":"0.3107","CHF":"0.3087","GBP":"0.2509"},"LTC":{"EUR":"79.53","USD":"88.56","CHF":"88.00","GBP":"71.52"},"MIOTA":{"EUR":"0.2573","USD":"0.2866","CHF":"0.2847","GBP":"0.2314"},"USDT":{"EUR":"0.9021","USD":"1.0046","CHF":"0.9982","GBP":"0.8113"},"ADA":{"EUR":"0.0530","USD":"0.0590","CHF":"0.0586","GBP":"0.0476"},"BCH":{"EUR":"272.90","USD":"303.90","CHF":"301.96","GBP":"245.41"},"NEO":{"EUR":"10.1149","USD":"11.2639","CHF":"11.1920","GBP":"9.0962"},"KMD":{"EUR":"1.0096","USD":"1.1243","CHF":"1.1171","GBP":"0.9079"},"EOS":{"EUR":"3.82","USD":"4.25","CHF":"4.22","GBP":"3.43"},"XAU":{"EUR":"40.95","USD":"45.61","CHF":"45.32","GBP":"36.83"},"TRX":{"EUR":"0.0198","USD":"0.0220","CHF":"0.0219","GBP":"0.0178"},"XTZ":{"EUR":"0.8908","USD":"0.9919","CHF":"0.9856","GBP":"0.8010"},"XLM":{"EUR":"0.0753","USD":"0.0838","CHF":"0.0833","GBP":"0.0677"},"USDC":{"EUR":"0.9032","USD":"1.0058","CHF":"0.9994","GBP":"0.8122"},"DASH":{"EUR":"99.32","USD":"110.60","CHF":"109.89","GBP":"89.31"},"ZEC":{"EUR":"62.06","USD":"69.11","CHF":"68.67","GBP":"55.81"},"BAT":{"EUR":"0.2390","USD":"0.2662","CHF":"0.2645","GBP":"0.2150"},"ATOM":{"EUR":"3.26","USD":"3.63","CHF":"3.60","GBP":"2.93"},"XEM":{"EUR":"0.0573","USD":"0.0638","CHF":"0.0634","GBP":"0.0515"},"OMG":{"EUR":"1.41","USD":"1.58","CHF":"1.57","GBP":"1.27"},"WAVES":{"EUR":"1.21","USD":"1.35","CHF":"1.34","GBP":"1.09"},"REP":{"EUR":"9.9462","USD":"11.0760","CHF":"11.0053","GBP":"8.9445"},"XAG":{"EUR":"0.4731","USD":"0.5268","CHF":"0.5235","GBP":"0.4255"},"ZRX":{"EUR":"0.1998","USD":"0.2225","CHF":"0.2211","GBP":"0.1797"},"LSK":{"EUR":"1.32","USD":"1.47","CHF":"1.46","GBP":"1.19"},"ETC":{"EUR":"5.5370","USD":"6.1660","CHF":"6.1266","GBP":"4.9793"}}';

void main() {
  group('$ExchangeRatesMap', () {
    test('"fromJson" parses JSON string into podo (Dart object)', () {
      final ExchangeRatesMap exchangeRatesMap =
          ExchangeRatesMap.fromJson(jsonExample);
      expect(exchangeRatesMap.btc.eur, '8480.30');
      expect(exchangeRatesMap.btc.usd, '9443.54');
      // From last item.
      expect(exchangeRatesMap.etc.gbp, '4.9793');
    });
  });
}
