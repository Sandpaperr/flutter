import 'package:bitcoin_ticker/networking.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

String apiKey = dotenv.env['COIN_API_KEY']!;
const baseUrl = 'https://rest.coinapi.io/v1/exchangerate';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];


class CoinData {
  Future<List<String>> getListCoinData( String currency) async{
    List<String> listCryptoValues = [];
    for (String crypto in cryptoList){
      var url = '$baseUrl/$crypto/$currency?apikey=$apiKey';
      NetworkHelper networkHelper = NetworkHelper(url);
      var coinData = await networkHelper.getData();
      if (coinData == null){
        listCryptoValues.add('?');
      } else{listCryptoValues.add(coinData['rate'].toStringAsFixed(0));}
    }

    return listCryptoValues;
  }
}
