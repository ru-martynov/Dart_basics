import 'package:flutter_test/flutter_test.dart';

import 'package:first_ex/first_ex.dart';

void main() {
  test('find gcd', () {
    final mathematic = Math();

    expect(mathematic.gcd(60, 48), 12);
    expect(mathematic.gcd(30, 15), 15);
    expect(mathematic.gcd(9, 15), 3);
  });

  test("find lcd", () {
    final mathematic = Math();

    expect(mathematic.lcm(54, 24), 216);
    expect(mathematic.lcm(3, 7), 21);
    expect(mathematic.lcm(4, 13), 52);
  });

  test("find number factors", () {
    final mathematic = Math();

    expect(mathematic.pfa(10), "2, 5");
    expect(mathematic.pfa(20), "2, 4, 5, 10");
    expect(mathematic.pfa(15), "3, 5");
  });

  test("binarization number", () {
    final numTranslate = NumberTranslation();

    expect(numTranslate.binarization(5), 101);
    expect(numTranslate.binarization(20), 10100);
    expect(numTranslate.binarization(0), 0);
  });

  test("dicimalization", () {
    final numTranslate = NumberTranslation();

    expect(numTranslate.decimalization(101), 5);
    expect(numTranslate.decimalization(10100), 20);
    expect(numTranslate.decimalization(0), 0);
  });
}
