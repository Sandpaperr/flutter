import 'package:destini/story.dart';
import 'package:flutter/material.dart';
import 'story_brain.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}
  StoryBrain brain = StoryBrain();

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
          ),

        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Builder(
                    builder: (context) {
                      String story = brain.getStory();
                      return Text(
                        story,
                        style: const TextStyle(
                          fontSize: 25.0,
                        ),
                      );
                    }
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      //Choice 1 made by user.
                      brain.nextStory(1);
                    });
                  },
                  //color: Colors.red,
                  child: Builder(
                    builder: (context) {
                      String choice1 = brain.getChoice1();
                      return Text(
                        choice1,
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      );
                    }
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: brain.buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        //Choice 2 made by user.
                        brain.nextStory(2);
                      });
                    },
                    //color: Colors.blue,
                    child: Builder(
                      builder: (context) {
                        String choice2 = brain.getChoice2();
                        return Text(
                          choice2,
                          style: const TextStyle(
                            fontSize: 20.0,
                          ),
                        );
                      }
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/