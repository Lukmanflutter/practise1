int mustGreaterThanZero(int? val ) {
  if (val! <= 0) {
    throw Exception("value must be greater than zero");
  }
  return val;
}

void letVerifyTheValue(int? val ) {
  int? valueVerification;
  try {
    valueVerification = mustGreaterThanZero(val!);
  } catch (e) {
    print(e);
  } finally {
    if (valueVerification == null) {
      print("value is not accepeted");
    } else {
      print("value verifed:$valueVerification");
    }
  }
}

void main() {
  letVerifyTheValue(70);
  letVerifyTheValue(30);
}
