import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String? selectedCurrency = 'USD';

  //make it dynamic
  List<String> listCryptoValueInCurrency = ['?', '?', '?'];



  Future<void> getData() async{
    try {
      List<String> data = await CoinData().getListCoinData(selectedCurrency!);
      //13. We can't await in a setState(). So you have to separate it out into two steps.
      setState(() {
        listCryptoValueInCurrency  = data;
      });
    } catch (e) {
      print(e);
    }
  }


  DropdownButton<String> androidDropDownButton(){
    List<DropdownMenuItem<String>> dropdownItems = [];
    for(int i = 0; i < currenciesList.length; i++){
      String currency = currenciesList[i];
      var newItem = DropdownMenuItem(
        value: currency,
        child: Text(currency),
      );
      dropdownItems.add(newItem);
    }
    return DropdownButton(
        value: selectedCurrency,
        items: dropdownItems,
        onChanged: (value) async{
          setState(() {
            selectedCurrency = value;
          });
          await getData();
        }
    );
  }


  CupertinoPicker iOSPicker(){
    List<Widget> pickerItems = [];
    for(String currency in currenciesList){
      pickerItems.add(Text(currency));
    }
    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,

      onSelectedItemChanged: (selectedIndex) async{
        setState(() {
          selectedCurrency = currenciesList[selectedIndex];
        });
        await getData();


      },
      children: pickerItems,
    );
  }

  Column ColumnOfCryptoButtons(){
    List<CryptoCard> listButtons = [];

    for (int i = 0; i < cryptoList.length; i++){
      listButtons.add(
        CryptoCard(cryptoCurrency: cryptoList[i], selectedCurrency: selectedCurrency, value: listCryptoValueInCurrency[i],)
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: listButtons,);

  }


  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          ColumnOfCryptoButtons(),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iOSPicker() : androidDropDownButton(),
          ),

        ],
      ),
    );
  }
}


class CryptoCard extends StatelessWidget {
  //2: You'll need to able to pass the selectedCurrency, value and cryptoCurrency to the constructor of this CryptoCard Widget.
  const CryptoCard({
    this.value,
    this.selectedCurrency,
    this.cryptoCurrency,
  });

  final String? value;
  final String? selectedCurrency;
  final String? cryptoCurrency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $cryptoCurrency = $value $selectedCurrency',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}


