class Converter {
  int returnBinary(String s) {
    return int.tryParse(s, radix: 2);
  }

  int returnDecimal(String s) {
    return int.tryParse(s, radix: 10);
  }

  int binToDec(String s) {
    if (s.length != 0) {
      int binary = returnBinary(s);
      return returnDecimal(binary.toRadixString(10));
    } else {
      return 0;
    }
  }
}
