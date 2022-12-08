import 'package:dart_first/dart_first.dart' as dart_first;
import 'dart:math';
import 'dart:io';

void main() async{

  double ran = await getPrice(); //Use the 'getPrice' method to get the random price
  showPrices(ran); //Display the price using 'showPrices'
  showPrices(double.parse(ran.toStringAsFixed(2))); //Bonus: show only 2 decimal places
//Use dart documentation to figure it out

  //Get a Stream of random price
  getPricesStream().listen((data) => {
    showPrices(double.parse(data.toStringAsFixed(2)))
  });
  // final subscription = myStream.listen((price) => {
  //   print('$price')});
  // final val = double.parse(subscription.toStringAsFixed(2));
}

//async*: give multiple data instead 1 response
Stream<double> getPricesStream() async* {
  final int numberOfResults = 10;
  for (var i=0; i < numberOfResults; i++){
    final price = await getPrice();
    //yield: add data to screen
    yield price;
  }
}

//DO NOT MODIFY THE BELOW FUNCTIONS
//Get a random price
  Future<double>getPrice() {
    final random = Random();
    var sec = random.nextInt(5) + 1;
    print('$sec seconds');
    return Future.delayed(
      Duration(seconds: sec),
          () => random.nextDouble() * 1000,
    );
  }

  //Print price passed in
  void showPrices(double price) {
    print(price);
  }



//ASYNC PROGRAMMING
// void main() async {
//   //await needs to finish this first then after
//  await printSomething(2, "after 2 seconds");
//   printSomething(1, "after 1 second");
// }
//
// Future<void>printSomething(int seconds, String message) async{
//   //Dummy async operation
//   await Future.delayed(Duration(seconds: seconds), () {
//     print(message);
//   });
//   print("test");
// }



// void main(List<String> arguments) {

  //TASK GUESSED NUMBER
  // var r = new Random();
  // var randomNo = r.nextInt(10) + 1;
  // // print (randomNo);
  // int intNum;
  // // if (number != null) {
  // //   int intNum = int.parse(number);
  //   // print(intNum);
  //   do {
  //     print("Guess the number");
  //     intNum = int.parse(stdin.readLineSync()!);
  //     if (intNum > randomNo) {
  //       print('Oops! The number is lower');
  //     } else if (intNum < randomNo) {
  //       print('Oops! The number is higher');
  //     }
  //
  //   } while (intNum != randomNo);
  //
  // print('Great! You guessed it right');
  // }



  //CLOSER
// }
  // print('Hello world  hehehehe: ${dart_first.myName()}!');

  //this is my name and age
  // final String name ="Ikaa";
  // const int age = 22;
  //
  // //Print Array
  // List<String> names = ["Name1", "Name2", "Name3"];
  // List<int> ages = [1, 2, 3];
  // print(names);
  // print(ages);
  // Map<String, int> people = {"Name1":1, "Name2":2, "Name3":3};
  // print(people);
  //
  // //If-Else Flow
  // int number = 10;
  // void Flow() {
  //   if (number % 2 == 0) {
  //     print('$number Even');
  //   } else {
  //     print('$number Odd');
  //   }
  // }
  //
  // //If-Else Flow
  // int number2 = 20;
  // void Flow2() {
  //   if (number2 > 0) {
  //     print('$number2 is positive');
  //   } else if (number2 < 0) {
  //     print('$number2 is negative');
  //   } else {
  //   print('$number2 is neither positive nor negative');
  //   }
  // }
  //
  // //Switch Case Flow
  // int num = 1;
  // switch(num) {
  //   case 0:
  //   print('zero!');
  //   break;
  //   case 1:
  //   print('one!');
  //   break;
  //   case 2:
  //   print('two!');
  //   break;
  //   default:
  //   print('choose a different number!');
  // }
  //
  // //Standard for Loop
  // for (var i=0; i<5; i++){
  //   print(i);
  // }

  //for-in Loop
  // var pets = ['Cat', 'Dog', 'Rabbit']
  // for (var pet in pets) {
  //   print(pet);
  // }

  //foreach
  // pets.forEach((pet) => print(pet));

  //while
  // while (someConditionIsTrue) {
    //do some things
  // }

  //do-while

  /*
  This is how I print my data
   */
  // print('${dart_first.myName()} $name . $age years old');
  // print('Area : ${dart_first.calcArea()}');
  // print('Area < 5 : ${dart_first.checkArea()}');


  //Functional Paramater
  //Variable 'name' is a positional parameter.
  //
//
//   helloTo(name, age);
//   //Optional Param
//   helloToOptional(name);
//   helloToOptional();
//   //Positional Param
//   helloToPositional('Positional');
//   helloToPositional();
//   //NamedParam
//   helloToNamed(name:'Named');
//   helloToNamed();
//
//   Flow();
//   Flow2();
//
// }
//
// //Positional parameter
// helloTo(String name, int age) {
//   print("Hello i'm $name , $age years old");
// }
//
// //Optional parameter. Take parameter below "test, 0" by default if no data passed
// helloToOptional([String name = "test", int age=0]) {
//   print("Hello i'm $name , $age years old");
// }
//
// //Positional Parameter
// helloToPositional([String? name]) {
//   print('Hello i\'m $name');
// }
//
// //Named Parameter optional String(?)
// helloToNamed({String? name = 'Unknown'}) {
//   print('Hello i\'m $name');
// }
//
//Named Parameter required String
// helloToNamed({String? name = 'Unknown'}) {
//   print('Hello i\'m $name');
// }
