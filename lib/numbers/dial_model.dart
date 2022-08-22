

class MyButtons{

  final String MyLetters;
  final String MyNumber;

  MyButtons({required this.MyNumber, required this.MyLetters});

  static String selectedNum = "";

  static List<MyButtons> button = [
      MyButtons(MyNumber: "1", MyLetters: ""),
      MyButtons(MyNumber: "2", MyLetters: "ABC"),
      MyButtons(MyNumber: "3", MyLetters: "DEF"),
      MyButtons(MyNumber: "4", MyLetters: "GHI"),
      MyButtons(MyNumber: "5", MyLetters: "JKL"),
      MyButtons(MyNumber: "6", MyLetters: "MNO"),
      MyButtons(MyNumber: "7", MyLetters: "PQRS"),
      MyButtons(MyNumber: "8", MyLetters: "TUV"),
      MyButtons(MyNumber: "9", MyLetters: "WXYZ"),
      MyButtons(MyNumber: "*", MyLetters: ""),
      MyButtons(MyNumber: "0", MyLetters: "+"),
      MyButtons(MyNumber: "#", MyLetters: ""),
  ];
}