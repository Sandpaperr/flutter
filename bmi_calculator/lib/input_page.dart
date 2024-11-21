import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  // 1 = male and 2 = female
  void updateCardColour(int gender){
    if (gender == 1){
      if (maleCardColor == inactiveCardColor){
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      }
    } else{
      if (femaleCardColor == inactiveCardColor){
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: activeCardColor,
        centerTitle: true,
        title: Text('BMI CALCULATOR', style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateCardColour(1);
                      });
                    },
                    child: ReusableCard(colour: maleCardColor,
                      cardChild: iconContent(icon: FontAwesomeIcons.mars,
                          title: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateCardColour(2);
                      });
                    },
                    child: ReusableCard(colour: femaleCardColor, cardChild:
                      iconContent(
                        icon: FontAwesomeIcons.venus,
                        title: 'FEMALE',
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            flex: 1,
            child:  ReusableCard(colour: activeCardColor, ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activeCardColor,),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor, cardChild: Text('ciao bella'),),
                ),

              ],
            ),
          ),
          Container(color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0) ,
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      )
    );
  }
}
