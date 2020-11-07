class Calculate {
  final String str;

  Calculate({this.str});

  void findOp(String opCode) {}

  double plus() {
    return 0;
  }

  double calc() {
    //use RegExp split
    //ex) 248/245 => [248,245]

    List<String> sArr = str.split(new RegExp(r"[-+/]"));

    String op = str[sArr[0].length];

    print(op);

    double num1 = double.parse(sArr[0]);
    double num2 = double.parse(sArr[1]);
    switch (op) {
      case "+":
        return num1 + num2;
        break;
      case "-":
        return num1 - num2;
        break;
      case "/":
        return num1 / num2;
        break;
      default:
    }

    return 0;
  }
}
