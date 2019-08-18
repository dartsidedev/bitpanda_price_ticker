## 0.1.3

🔧 Fix documentation URL and improve READMEs

## 0.1.2

🔧 Fix unpublished `g.dart` files.

## 0.1.1

🚀 Add initial implementation of the package.

* convert response to `Map<String, Map<String, String>>` using the **`fetchAsMap`** function, so that result can be used as: `result['BTC']['USD]` (better for iteration, new values are "automatically supported")
* convert response to instance of built class using the **`fetch`** function, so that result can be used as: `result.btc.usd` (easier discoverability and type safety)
* unit and integration tests
* documentation for contributors (and for future me): how to use `built_value`, `dartfmt`, `dartanalyzer`, `coverage` for development.

## 0.1.0

😆 Initial release, a beautiful empty package!