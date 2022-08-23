class NumberData {
  final String label;
  final String sublabel;

  NumberData({required this.label, required this.sublabel});

  static List<NumberData> buttons = [
    NumberData(label: "1", sublabel: ""),
    NumberData(label: "2", sublabel: "ABC"),
    NumberData(label: "3", sublabel: "DEF"),
    NumberData(label: "4", sublabel: "GHI"),
    NumberData(label: "5", sublabel: "JKL"),
    NumberData(label: "6", sublabel: "MNO"),
    NumberData(label: "7", sublabel: "PGRS"),
    NumberData(label: "8", sublabel: "TUV"),
    NumberData(label: "9", sublabel: "WXYZ"),
    NumberData(label: "*", sublabel: ""),
    NumberData(label: "0", sublabel: "+"),
    NumberData(label: "#", sublabel: ""),
  ];
}
