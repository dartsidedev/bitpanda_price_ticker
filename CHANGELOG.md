## 0.2.1

💣 Remove docs link to API Reference.

The analysis monster gives -10 points for missing link and it appears that they cannot access the API reference link (Maybe redirects?).

## 0.2.0

🚀 Simplify interfaces.

This version also includes:

* various improvements to READMEs, docs
* clean examples
* better unit tests
* travis CI automated checks

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