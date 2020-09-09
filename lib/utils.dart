

bool isNumeric(String str) {
  if(str == null) {
    return false;
  }
  return double.tryParse(str) != null;
}

bool hasOperator(String inp){
  for(int i = 0; i < inp.length; i++) {
    if (!isNumeric(inp[i]) && inp[i] != '.') {
      return true;
    }
  }
  return false;
}

bool checkPoint(String inp){
  for(int i = inp.length - 1; i >= 0; i--){
    if(inp[i] == '+' || inp[i] == '-' || inp[i] == '*' || inp[i] == '/'){
      return true;
    }
    if(inp[i] == '.'){
      return false;
    }
  }
  return true;
}

dynamic evaluate(String inp){
  dynamic n1;
  dynamic n2;
  for(int i = 0; i < inp.length; i++){
    if(!isNumeric(inp[i]) && inp[i] != '.'){
      if(inp[i] == '*'){
        n1 = int.tryParse(inp.substring(0, i)) ?? double.tryParse(inp.substring(0, i)) ?? '0';
        n2 = int.tryParse(inp.substring(i + 1, inp.length)) ?? double.tryParse(inp.substring(i + 1, inp.length)) ?? '0';
        if(n1 == '0' || n2 == '0'){
          return inp;
        }
        return (n1 * n2).toDouble();
      }
      else if(inp[i] == '/'){
        n1 = int.tryParse(inp.substring(0, i)) ?? double.tryParse(inp.substring(0, i)) ?? '0';
        n2 = int.tryParse(inp.substring(i + 1, inp.length)) ?? double.tryParse(inp.substring(i + 1, inp.length)) ?? '0';
        if(n1 == '0' || n2 == '0'){
          return inp;
        }
        return (n1 / n2).toDouble();
      }
      else if(inp[i] == '+'){
        n1 = int.tryParse(inp.substring(0, i)) ?? double.tryParse(inp.substring(0, i)) ?? '0';
        n2 = int.tryParse(inp.substring(i + 1, inp.length)) ?? double.tryParse(inp.substring(i + 1, inp.length)) ?? '0';
        if(n1 == '0' || n2 == '0'){
          return inp;
        }
        return (n1 + n2).toDouble();
      }
      else if(inp[i] == '-'){
        n1 = int.tryParse(inp.substring(0, i)) ?? double.tryParse(inp.substring(0, i)) ?? '0';
        n2 = int.tryParse(inp.substring(i + 1, inp.length)) ?? double.tryParse(inp.substring(i + 1, inp.length)) ?? '0';
        if(n1 == '0' || n2 == '0'){
          return inp;
        }
        return (n1 - n2).toDouble();
      }
      break;
    }
  }
  return inp;
}

double convert(String val, String inOption, String outOption){
  if(val == ''){
    val = '0';
  }
  if(inOption == outOption){
    return double.parse(val);
  }
  else if(inOption == 'Milli' && outOption == 'Centi'){
    return double.parse(val) / 10.0;
  }
  else if(inOption == 'Milli' && outOption == 'Meter'){
    return double.parse(val) / 1000.0;
  }
  else if(inOption == 'Milli' && outOption == 'Kilo'){
    return double.parse(val) / 1000000.0;
  }
  else if(inOption == 'Centi' && outOption == 'Milli'){
    return double.parse(val) * 10.0;
  }
  else if(inOption == 'Centi' && outOption == 'Meter'){
    return double.parse(val) / 100.0;
  }
  else if(inOption == 'Centi' && outOption == 'Kilo'){
    return double.parse(val) / 100000.0;
  }
  else if(inOption == 'Meter' && outOption == 'Milli'){
    return double.parse(val) * 1000.0;
  }
  else if(inOption == 'Meter' && outOption == 'Centi') {
    return double.parse(val) * 100.0;
  }
  else if(inOption == 'Meter' && outOption == 'Kilo') {
    return double.parse(val) / 1000.0;
  }
  else if(inOption == 'Kilo' && outOption == 'Milli') {
    return double.parse(val) * 1000000.0;
  }
  else if(inOption == 'Kilo' && outOption == 'Centi') {
    return double.parse(val) * 100000.0;
  }
  else if(inOption == 'Kilo' && outOption == 'Meter') {
    return double.parse(val) * 1000.0;
  }
  return double.parse(val);
}

String checkInput(String inp){
  if(inp == 'Infinity'){
    inp = '';
  }else if(inp == 'null'){
    inp = '';
  }
  return inp;
}