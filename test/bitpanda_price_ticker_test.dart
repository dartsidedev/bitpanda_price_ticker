import 'package:bitpanda_price_ticker/bitpanda_price_ticker.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:http/testing.dart';

const String json =
    '{"BTC":{"EUR":"8548.31","USD":"9529.25","CHF":"9468.45","GBP":"7696.63"},"PAN":{"EUR":"0.0426","USD":"0.0475","CHF":"0.0472","GBP":"0.0383"},"LINK":{"EUR":"2.0204","USD":"2.2523","CHF":"2.2379","GBP":"1.8191"},"ETH":{"EUR":"188.84","USD":"210.50","CHF":"209.16","GBP":"170.02"},"BEST":{"EUR":"0.1000","USD":"0.1115","CHF":"0.1108","GBP":"0.0900"},"XRP":{"EUR":"0.2794","USD":"0.3115","CHF":"0.3095","GBP":"0.2516"},"LTC":{"EUR":"80.41","USD":"89.63","CHF":"89.06","GBP":"72.40"},"MIOTA":{"EUR":"0.2591","USD":"0.2888","CHF":"0.2869","GBP":"0.2332"},"USDT":{"EUR":"0.9017","USD":"1.0052","CHF":"0.9988","GBP":"0.8119"},"ADA":{"EUR":"0.0533","USD":"0.0594","CHF":"0.0590","GBP":"0.0480"},"BCH":{"EUR":"274.63","USD":"306.14","CHF":"304.19","GBP":"247.26"},"NEO":{"EUR":"10.2663","USD":"11.4444","CHF":"11.3713","GBP":"9.2434"},"KMD":{"EUR":"1.0135","USD":"1.1298","CHF":"1.1226","GBP":"0.9126"},"EOS":{"EUR":"3.85","USD":"4.29","CHF":"4.26","GBP":"3.46"},"XAU":{"EUR":"40.92","USD":"45.62","CHF":"45.32","GBP":"36.84"},"TRX":{"EUR":"0.0203","USD":"0.0226","CHF":"0.0225","GBP":"0.0183"},"XTZ":{"EUR":"0.9048","USD":"1.0086","CHF":"1.0021","GBP":"0.8146"},"XLM":{"EUR":"0.0755","USD":"0.0842","CHF":"0.0836","GBP":"0.0680"},"USDC":{"EUR":"0.9035","USD":"1.0072","CHF":"1.0008","GBP":"0.8135"},"DASH":{"EUR":"99.98","USD":"111.46","CHF":"110.75","GBP":"90.02"},"ZEC":{"EUR":"62.12","USD":"69.25","CHF":"68.81","GBP":"55.94"},"BAT":{"EUR":"0.2350","USD":"0.2620","CHF":"0.2603","GBP":"0.2116"},"ATOM":{"EUR":"3.25","USD":"3.62","CHF":"3.60","GBP":"2.93"},"XEM":{"EUR":"0.0570","USD":"0.0635","CHF":"0.0631","GBP":"0.0513"},"OMG":{"EUR":"1.43","USD":"1.59","CHF":"1.58","GBP":"1.29"},"WAVES":{"EUR":"1.22","USD":"1.36","CHF":"1.35","GBP":"1.10"},"REP":{"EUR":"10.0064","USD":"11.1546","CHF":"11.0835","GBP":"9.0094"},"XAG":{"EUR":"0.4727","USD":"0.5269","CHF":"0.5236","GBP":"0.4256"},"ZRX":{"EUR":"0.2047","USD":"0.2282","CHF":"0.2267","GBP":"0.1843"},"LSK":{"EUR":"1.32","USD":"1.47","CHF":"1.46","GBP":"1.19"},"ETC":{"EUR":"5.6020","USD":"6.2449","CHF":"6.2050","GBP":"5.0439"}}';

const String jsonWithUnsupportedCrypto =
    '{"VINCENT":{"EUR":"8480.30","USD":"9443.54","CHF":"9383.29","GBP":"7626.18"},"BTC":{"EUR":"8480.30","USD":"9443.54","CHF":"9383.29","GBP":"7626.18"},"PAN":{"EUR":"0.0431","USD":"0.0480","CHF":"0.0477","GBP":"0.0388"},"LINK":{"EUR":"2.0100","USD":"2.2383","CHF":"2.2240","GBP":"1.8076"},"ETH":{"EUR":"187.27","USD":"208.55","CHF":"207.22","GBP":"168.41"},"BEST":{"EUR":"0.1000","USD":"0.1114","CHF":"0.1106","GBP":"0.0899"},"XRP":{"EUR":"0.2790","USD":"0.3107","CHF":"0.3087","GBP":"0.2509"},"LTC":{"EUR":"79.53","USD":"88.56","CHF":"88.00","GBP":"71.52"},"MIOTA":{"EUR":"0.2573","USD":"0.2866","CHF":"0.2847","GBP":"0.2314"},"USDT":{"EUR":"0.9021","USD":"1.0046","CHF":"0.9982","GBP":"0.8113"},"ADA":{"EUR":"0.0530","USD":"0.0590","CHF":"0.0586","GBP":"0.0476"},"BCH":{"EUR":"272.90","USD":"303.90","CHF":"301.96","GBP":"245.41"},"NEO":{"EUR":"10.1149","USD":"11.2639","CHF":"11.1920","GBP":"9.0962"},"KMD":{"EUR":"1.0096","USD":"1.1243","CHF":"1.1171","GBP":"0.9079"},"EOS":{"EUR":"3.82","USD":"4.25","CHF":"4.22","GBP":"3.43"},"XAU":{"EUR":"40.95","USD":"45.61","CHF":"45.32","GBP":"36.83"},"TRX":{"EUR":"0.0198","USD":"0.0220","CHF":"0.0219","GBP":"0.0178"},"XTZ":{"EUR":"0.8908","USD":"0.9919","CHF":"0.9856","GBP":"0.8010"},"XLM":{"EUR":"0.0753","USD":"0.0838","CHF":"0.0833","GBP":"0.0677"},"USDC":{"EUR":"0.9032","USD":"1.0058","CHF":"0.9994","GBP":"0.8122"},"DASH":{"EUR":"99.32","USD":"110.60","CHF":"109.89","GBP":"89.31"},"ZEC":{"EUR":"62.06","USD":"69.11","CHF":"68.67","GBP":"55.81"},"BAT":{"EUR":"0.2390","USD":"0.2662","CHF":"0.2645","GBP":"0.2150"},"ATOM":{"EUR":"3.26","USD":"3.63","CHF":"3.60","GBP":"2.93"},"XEM":{"EUR":"0.0573","USD":"0.0638","CHF":"0.0634","GBP":"0.0515"},"OMG":{"EUR":"1.41","USD":"1.58","CHF":"1.57","GBP":"1.27"},"WAVES":{"EUR":"1.21","USD":"1.35","CHF":"1.34","GBP":"1.09"},"REP":{"EUR":"9.9462","USD":"11.0760","CHF":"11.0053","GBP":"8.9445"},"XAG":{"EUR":"0.4731","USD":"0.5268","CHF":"0.5235","GBP":"0.4255"},"ZRX":{"EUR":"0.1998","USD":"0.2225","CHF":"0.2211","GBP":"0.1797"},"LSK":{"EUR":"1.32","USD":"1.47","CHF":"1.46","GBP":"1.19"},"ETC":{"EUR":"5.5370","USD":"6.1660","CHF":"6.1266","GBP":"4.9793"}}';

Client getMockClient(String body) {
  // We could split the expectations better...
  final MockClientHandler handler = (Request request) {
    expect(request.url.toString(), 'https://api.bitpanda.com/v1/ticker');
    expect(request.method, 'GET');
    return Future<Response>(() => Response(body, 200));
  };
  return MockClient(handler);
}

void main() {
  group('"fetch" function', () {
    test('parses response body into Map of String-Maps...', () async {
      final Map<String, Map<String, String>> map =
          await fetch(client: getMockClient(json));
      expect(map['BTC']['EUR'], '8548.31');
    });
    test('enables fetching yet unsupported cryptos', () async {
      final Map<String, Map<String, String>> map =
          await fetch(client: getMockClient(jsonWithUnsupportedCrypto));
      expect(map['VINCENT']['EUR'], '8480.30');
    });
  });
}
