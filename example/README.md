# `bitpanda_price_ticker` Examples

A Dart client to wrap Bitpanda's price ticker API.

You can read more about Bitpanda's public APIs [in the docs](https://support.bitpanda.com/hc/en-us/articles/360000727459-Bitpanda-API-Key-and-price-ticker-API), or see the API this library gives access to [in action, directly in your browser](https://api.bitpanda.com/v1/ticker)

This is not an official Bitpanda plugin.

## Examples

### Dart from the command line

You can see a simple Dart script in the [`example/server`](https://github.com/dartsidedev/bitpanda_price_ticker/tree/master/example/server) folder.

```
$ cd example/server
$ dart main.dart
Supported cryptocurrencies: [ADA, ATOM, BAT, BCH, BEST, BTC, DASH, EOS, ETC, ETH, KMD, LINK, LSK, LTC, MIOTA, NEO, OMG, PAN, REP, TRX, USDC, USDT, WAVES, XAG, XAU, XEM, XLM, XRP, XTZ, ZEC, ZRX]
2 BTC is worth 19125.94 USD
```

### Simple Flutter app

![Screenshot of example app: list of cryptocurrencies with their latest price in USD](https://github.com/dartsidedev/bitpanda_price_ticker/raw/master/example/flutter/screenshot.png)