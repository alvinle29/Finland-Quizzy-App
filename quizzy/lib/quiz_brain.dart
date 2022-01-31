import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Generally, in Finland they don\'t shake hands.', false),
    Question('In Finland meals and education is free for kids.', true),
    Question('Moomins are kept in a zoo.', false),
    Question('Generally, Finns don\'t talk to strangers except in sauna.', true),
    Question('Finland had won World Ice Hockey championship.', true),
    Question('Tampere is the capital of Finland.', false),
    Question('Finland became independent in 1918.', false),
    Question('Finland has the most lakes in the world.', false),
    Question('The average Finn consumes 12kg of coffee every year.', true),
    Question('Before making cell phones, Nokia made toilet paper.', true),
    Question('Lapland is a fictional place based on Northern Finland', false),
    Question('Finland share border with Estonia.', false),
    Question('Turku was the capital of Finland.', true),
    Question('Shops in Finland open 24/7.', false),
    Question('You call 911 when having emergency.', false),
    Question('In Finland, female has the same social status as male.', true),
    Question('In Finland, Christmas is the most crowded day of the year.', false),
    Question('Finns tends to be quiet and unemotional in public.', true),
    Question('December 6th is Finland\'s Independence Day.', true),
    Question('"Our beautiful land" is the translation of Finland\'s National Anthem.', false),
    Question('Kantele is Finnish national instrument.', true),
    Question('Ice hockey is the national sport in Finland.', false),
    Question('There are 50,000 lakes in Finland', false),
    Question('Angry Birds was created by Finns.', true),
    Question('Reindeer is the national animal of Finland', false),
    Question('Moomins was created by a Finn artist name Tove Jansson.', true),
    Question('Santa Claus lives in Finland.', false),
    Question('Finland is the promised land of heavy-metal music', true),
    Question('Finland’s currency before Euro is called Markka.', true),
    Question('A president\'s term in Finland lasts 5 years.', false),
    Question('In Finland, we have more saunas than cars.', true),
    Question('A Burger King in Helsinki has its own sauna.', true),
    Question('Finland is the most happiness country in the world.', true),
    Question('Russian is an official language in Finland.', false),
    Question('Finland joined EU in 1997', false),
    Question('Vodhka is a Finnish beverage.', false),
    Question('Finland shares border with Sweden in the east.', false),
    Question('In 1939-1940, Finland fought the Winter War with Russia .', false),
    Question('Finland is bigger than Vietnam in term of size.', true),
    Question('There are 19 regions in Finland.', true),
    Question('Turku is the oldest city in Finland.', true),
    Question('Finns learn Swedish at secondary school.', true),
    Question('Finnish children have two birthday parties.', true),
    Question('74% of the country is forested.', true),
    Question('You can see northern lights in Finland.', true),
    Question('In Finland, most of lost wallets and mobile phones get returned to their rightful owner.', true),
    Question('Moomin Museum is in Helsinki.', false),
    Question('Finland was the first country in Europe to give all women the right to vote.', true),
    Question('The coldest temperature measured was -51.5 degrees Celsius.', true),
    Question('Santa Claus village is in Otaniemi.', false),
    Question('In June and July, the sun doesn\'t drop below the horizon.', true),
    Question('You can call the Finnish tax office and ask for someone\'s salary.', true),
    Question('In Finland, a traffic ticket will be according to your monthly salary..', false),
    Question('Finland has an Annual Day for Failure in September.', false),
    Question('Tipping for service is not required in Finland.', true),
    Question('Finns loves black licorice.', true),
    Question('In Finland the skiing season can last for over 6 months.', true),
    Question('Finnish has the longest palindromic word in the world.', true),
    Question('One of Finland national sayings is ‘Silence is gold, talking is silver’.', true),
    Question('Finland football team have joined World Cup in the past.', false),
  ];

  List<Question> _questionToUse = [];

  void getUsedQuestion(){
    _questionToUse.clear();
    var list = List.generate(_questionBank.length-1, (index) => index + 1)..shuffle();
    print(list);
    for (int i = 0; i< 10; i++){
      _questionToUse.add(_questionBank[list[i]]);
    }
  }

  void nextQuestion() {
    if (_questionNumber < _questionToUse.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionToUse[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionToUse[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionToUse.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}