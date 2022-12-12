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

  test("search numbers", () {
    final numSearch = SearchNumbersInLine();

    expect(numSearch.findNumbers("1 2 line 5"), [1, 2, 5]);
    expect(numSearch.findNumbers("3 10 111 exit 210"), [3, 10, 111, 210]);
  });

  test("count words in line", () {
    final line = Line();

    expect(line.countWords("world world world"), {"world": 3});
    expect(line.countWords("line boom boom line"), {"line": 2, "boom": 2});
  });

  test("translate str to int", () {
    final line = Line();

    expect(line.convertToInt("one, two, zero, zero"), [1, 2, 0]);
    expect(line.convertToInt("one, two, three, cat, dog"), [1, 2, 3]);
  });

  test("distance between point", () {
    final point = Point(5, 10, 12);

    expect(point.distanceTo(20, 10, 45), 36.25);
    expect(point.distanceTo(60, 5, 13), 55.24);
  });

  test("find square triangle", () {
    final point = Point(5, 10, 12);

    expect(point.triangleArea(1, 2, 3, 2, 3, 1, 3, 2, 1), 1.73);
    expect(point.triangleArea(7, 10, 15, 4, 7, 14, 20, 10, 15), 20.55);
  });
}
