import 'package:flutter/material.dart';
import 'package:simple_cal/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String PreVCalations = " ";
  List<String> PrevData = [];

  int count_pixel = 0;

  String txtvalue = " ";
  List<String> storeData = [];
  num lastvalue = 0;
  int count = 0;
  String? operationStore = "";

  storevalues_and_cal(String data) {
    if (data == "=") {
      if (operationStore == "+") {
        summation();
        txtvalue = txtvalue.toString();
        storeData.clear();
      } else if (operationStore == "-") {
        substraction();
        txtvalue = txtvalue.toString();
        storeData.clear();
      } else if (operationStore == "x") {
        multiplication();
        txtvalue = txtvalue.toString();
        storeData.clear();
      } else if (operationStore == "/") {
        divition();
        txtvalue = txtvalue.toString();
        storeData.clear();
      } else if (operationStore == "%") {
        modulas();
        txtvalue = txtvalue.toString();
        storeData.clear();
      }
    } else if (data == "%" ||
        data == "/" ||
        data == "x" ||
        data == "-" ||
        data == "+") {
      if (data == "+") {
        //------------------------------
        String LastValue = PrevData.last;
        if (LastValue == "+" ||
            LastValue == "-" ||
            LastValue == "/" ||
            LastValue == "x" ||
            LastValue == "%") {
          PrevData.last = "+";
          PreVCalations = PrevData.join();
          setState(() {
            PreVCalations;
          });
        } else {
          PrevData.add("+");
          PreVCalations = PrevData.join();
          setState(() {
            PreVCalations;
          });
        }
        //------------------------------

        if (operationStore == "-") {
          substraction();
        } else if (operationStore == "x") {
          multiplication();
        } else if (operationStore == "/") {
          divition();
        } else if (operationStore == "%") {
          modulas();
        } else {
          operationStore = "+";
          summation();
        }
        operationStore = "+";

        //test values check
        print("txtvalue: " + txtvalue);
        print("lastvalue: " + lastvalue.toString());
        storeData.clear();
      } else if (data == "-") {
        //--------------------------------
        String LastValue = PrevData.last;
        if (LastValue == "+" ||
            LastValue == "-" ||
            LastValue == "/" ||
            LastValue == "x" ||
            LastValue == "%") {
          PrevData.last = "-";
          PreVCalations = PrevData.join();
          setState(() {
            PreVCalations;
          });
        } else {
          PrevData.add("-");
          PreVCalations = PrevData.join();
          setState(() {
            PreVCalations;
          });
        }
        //--------------------------------

        if (operationStore == "+") {
          summation();
        } else if (operationStore == "x") {
          multiplication();
        } else if (operationStore == "/") {
          divition();
        } else if (operationStore == "%") {
          modulas();
        } else {
          operationStore = "-";
          substraction();
        }
        operationStore = "-";

        //test values check
        print("txtvalue: " + txtvalue);
        print("lastvalue: " + lastvalue.toString());
        storeData.clear();
      } else if (data == "/") {
        //--------------------------------
        String LastValue = PrevData.last;
        if (LastValue == "+" ||
            LastValue == "-" ||
            LastValue == "/" ||
            LastValue == "x" ||
            LastValue == "%") {
          PrevData.last = "/";
          PreVCalations = PrevData.join();
          setState(() {
            PreVCalations;
          });
        } else {
          PrevData.add("/");
          PreVCalations = PrevData.join();
          setState(() {
            PreVCalations;
          });
        }
        //--------------------------------

        if (operationStore == "+") {
          summation();
        } else if (operationStore == "x") {
          multiplication();
        } else if (operationStore == "-") {
          substraction();
        } else if (operationStore == "%") {
          modulas();
        } else {
          operationStore = "/";
          divition();
        }
        operationStore = "/";
        //test values check
        print("txtvalue: " + txtvalue);
        print("lastvalue: " + lastvalue.toString());
        storeData.clear();
      } else if (data == "x") {
        //-------------------------------
        String LastValue = PrevData.last;
        if (LastValue == "+" ||
            LastValue == "-" ||
            LastValue == "/" ||
            LastValue == "x" ||
            LastValue == "%") {
          PrevData.last = "x";
          PreVCalations = PrevData.join();
          setState(() {
            PreVCalations;
          });
        } else {
          PrevData.add("x");
          PreVCalations = PrevData.join();
          setState(() {
            PreVCalations;
          });
        }
        //-------------------------------

        if (operationStore == "+") {
          summation();
        } else if (operationStore == "-") {
          substraction();
        } else if (operationStore == "/") {
          divition();
        } else if (operationStore == "%") {
          modulas();
        } else {
          operationStore = "x";
          multiplication();
        }
        operationStore = "x";

        //test values check
        print("txtvalue: " + txtvalue);
        print("lastvalue: " + lastvalue.toString());
        storeData.clear();
      } else if (data == "%") {
        //------------------------------
        String LastValue = PrevData.last;
        if (LastValue == "+" ||
            LastValue == "-" ||
            LastValue == "/" ||
            LastValue == "x" ||
            LastValue == "%") {
          PrevData.last = "%";
          PreVCalations = PrevData.join();
          setState(() {
            PreVCalations;
          });
        } else {
          PrevData.add("%");
          PreVCalations = PrevData.join();
          setState(() {
            PreVCalations;
          });
        }
        //------------------------------

        if (operationStore == "+") {
          summation();
        } else if (operationStore == "x") {
          multiplication();
        } else if (operationStore == "/") {
          divition();
        } else if (operationStore == "-") {
          substraction();
        } else {
          operationStore = "%";
          modulas();
        }
        operationStore = "%";

        //test values check
        print("txtvalue: " + txtvalue);
        print("lastvalue: " + lastvalue.toString());
        storeData.clear();
      }
    } else {
      if (storeData.length < 15 && PrevData.length < 20) {
        storeData.add(data);
        txtvalue = storeData.join();
        setState(() {
          txtvalue;
        });
        PrevData.add(data);
        PreVCalations = PrevData.join();
        setState(() {
          PreVCalations;
        });
      }
    }
  }

  summation() {
    if (count != 0) {
      txtvalue = txtvalue;
      String StringList = storeData.join();
      num Int_List = double.parse(StringList);
      lastvalue = lastvalue + Int_List;
      txtvalue = lastvalue.toString();
      count++;
    } else {
      String StringList = storeData.join();
      num Int_List = double.parse(StringList);
      lastvalue = lastvalue + Int_List;
      count++;
    }
  }

  substraction() {
    if (count != 0) {
      String StringList = storeData.join();
      num Int_List = double.parse(StringList);
      lastvalue = lastvalue - (Int_List);
      txtvalue = lastvalue.toString();
      count++;
    } else {
      String StringList = storeData.join();
      num Int_List = double.parse(StringList);
      lastvalue = Int_List;
      count++;
    }
  }

  divition() {
    if (count != 0) {
      String StringList = storeData.join();
      num Int_List = double.parse(StringList);
      lastvalue = lastvalue / (Int_List);
      txtvalue = lastvalue.toString();
      count++;
    } else {
      String StringList = storeData.join();
      num Int_List = double.parse(StringList);
      lastvalue = Int_List;
      count++;
    }
  }

  multiplication() {
    if (count != 0) {
      String StringList = storeData.join();
      num Int_List = double.parse(StringList);
      lastvalue = lastvalue * (Int_List);
      txtvalue = lastvalue.toString();
      count++;
    } else {
      String StringList = storeData.join();
      num Int_List = double.parse(StringList);
      lastvalue = Int_List;
      count++;
    }
  }

  modulas() {
    if (count != 0) {
      String StringList = storeData.join();
      num Int_List = double.parse(StringList);
      lastvalue = lastvalue % (Int_List);
      txtvalue = lastvalue.toString();
      count++;
    } else {
      String StringList = storeData.join();
      num Int_List = double.parse(StringList);
      lastvalue = Int_List;
      count++;
    }
  }

  Widget calbutton(String btntxt, Color btncolor, Color btntxtcolor) {
    return TextButton(
      onPressed: () {
        storevalues_and_cal(btntxt);

        setState(() {
          btntxt;
        });

        //Data in Storedata
        print(storeData);
      },
      child: Center(
        child: Text(
          btntxt,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
        ),
      ),
      style: TextButton.styleFrom(
        foregroundColor: btntxtcolor,
        backgroundColor: btncolor,
        shape: const CircleBorder(),
        minimumSize: Size(85, 85),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 28, 34),
      appBar: AppBar(
        title: const Text(
          "Calculator",
          style: TextStyle(
            color: Color.fromARGB(255, 232, 232, 232),
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 48, 47, 47),
      ),

      //body--------------------------
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    PreVCalations,
                    style: TextStyle(
                        color: Colors.white, fontSize: 30, fontFamily: 'Carre'),
                  ),
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    txtvalue,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 40, fontFamily: 'Carre'),
                  ),
                )
              ],
            ),

            //First Row---------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    storeData.clear();
                    PrevData.clear();
                    setState(() {
                      PreVCalations = PrevData.join();
                    });
                    setState(() {
                      txtvalue = storeData.join("");
                    });
                    count = 0;
                    lastvalue = 0;
                  },
                  child: Text(
                    "AC",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 196, 211, 238),
                    backgroundColor: const Color.fromARGB(255, 43, 91, 158),
                    shape: const CircleBorder(),
                    minimumSize: Size(85, 85),
                  ),
                ),
                Container(
                    width: 83,
                    height: 83,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 43, 91, 158), //
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () {
                          storeData.removeLast();
                          PrevData.removeLast();
                          setState(() {
                            PreVCalations = PrevData.join();
                          });
                          setState(() {
                            txtvalue = storeData.join("");
                          });
                          count = 0;
                          lastvalue = 0;
                        },
                        icon: Icon(
                          Icons.backspace_rounded,
                          size: 40,
                          color: Color.fromARGB(255, 185, 179, 158),
                        ))),
                calbutton('%', const Color.fromARGB(255, 99, 60, 112),
                    const Color.fromARGB(255, 232, 188, 238)),
                calbutton('/', const Color.fromARGB(255, 99, 60, 113),
                    const Color.fromARGB(255, 232, 188, 238)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            //Second Row------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                calbutton('7', const Color.fromARGB(255, 35, 35, 35),
                    const Color.fromARGB(255, 187, 179, 179)),
                calbutton('8', const Color.fromARGB(255, 35, 35, 35),
                    const Color.fromARGB(255, 187, 179, 179)),
                calbutton('9', const Color.fromARGB(255, 35, 35, 35),
                    const Color.fromARGB(255, 187, 179, 179)),
                calbutton(
                  'x',
                  const Color.fromARGB(255, 99, 60, 113),
                  const Color.fromARGB(255, 187, 179, 179),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            //Third Row------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                calbutton('4', const Color.fromARGB(255, 35, 35, 35),
                    const Color.fromARGB(255, 187, 179, 179)),
                calbutton('5', const Color.fromARGB(255, 35, 35, 35),
                    const Color.fromARGB(255, 187, 179, 179)),
                calbutton('6', const Color.fromARGB(255, 35, 35, 35),
                    const Color.fromARGB(255, 187, 179, 179)),
                calbutton('-', const Color.fromARGB(255, 99, 60, 112),
                    const Color.fromARGB(255, 232, 188, 238)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            //Fourth Row------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                calbutton('1', const Color.fromARGB(255, 35, 35, 35),
                    const Color.fromARGB(255, 187, 179, 179)),
                calbutton('2', const Color.fromARGB(255, 35, 35, 34),
                    const Color.fromARGB(255, 187, 179, 179)),
                calbutton('3', const Color.fromARGB(255, 35, 35, 35),
                    const Color.fromARGB(255, 187, 179, 179)),
                calbutton('+', const Color.fromARGB(255, 99, 60, 112),
                    const Color.fromARGB(255, 232, 188, 238)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            //Fifth Row--------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    storevalues_and_cal("0");
                    //test values check
                    print(storeData);
                  },
                  child: Text(
                    "0",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 187, 179, 179),
                    backgroundColor: const Color.fromARGB(255, 35, 35, 35),
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.fromLTRB(
                      83,
                      14,
                      83,
                      14,
                    ),
                  ),
                ),
                calbutton('.', const Color.fromARGB(255, 35, 35, 35),
                    const Color.fromARGB(255, 187, 179, 179)),
                calbutton('=', const Color.fromARGB(255, 71, 110, 62),
                    const Color.fromARGB(255, 206, 223, 194)),
              ],
            ),

            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
