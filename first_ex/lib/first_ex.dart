library first_ex;

import 'dart:ffi';
import 'dart:math';

/// Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод, который разбивает число на простые множители и возвращает их.
class Math {
  /// Наибольший общий делитель
  int gcd(int? a, int? b) {
    if (a != null && b != null) {
      if (b == 0) {
        return a;
      } else {
        return gcd(b, a % b);
      }
    } else {
      throw ("Numbers are null");
    }
  }

  /// Наименьшее общее кратное
  int lcm(int? a, int? b) {
    if (a != null && b != null) {
      return a ~/ gcd(a, b) * b;
    } else {
      throw ("Numbers are null");
    }
  }

  /// Вывод простых множителей и возвращает их
  String pfa(int? a) {
    if (a != null) {
      List<int> ans = [];
      for (int i = 2; i < a; i++) {
        if (a % i == 0) {
          ans.add(i);
        }
      }
      return ans.join(", ");
    } else {
      throw ("Number is null");
    }
  }
}

class NumberTranslation {
  /// Перевод числа в двочиную СИ
  int binarization(int? a) {
    if (a != null) {
      var binar = a.toRadixString(2);
      return int.parse(binar);
    } else {
      throw ("Number is null");
    }
  }

  /// Перевод из двоичной СИ в десятичную
  int decimalization(int? a) {
    if (a != null) {
      return int.parse(a.toString(), radix: 2);
    } else {
      throw ("Number is null");
    }
  }
}

class SearchNumbersInLine {
  /// Нахождение чисел в строке и добваление в лист
  List<int> findNumbers(String? line) {
    if (line != null) {
      List<int> ans = [];
      List<String> list = line.split(" ");
      for (int i = 0; i < list.length; i++) {
        if (int.tryParse(list[i]) != null) {
          ans.add(int.parse(list[i]));
        }
      }
      return ans;
    } else {
      throw ("Line is null");
    }
  }
}

class Line {
  /// Подсчет количества слов и добавление в map
  Map<String, int> countWords(String? line) {
    if (line != null) {
      Map<String, int> counted = {};
      List<String> words = line.split(" ");
      for (var i = 0; i < words.length; i++) {
        if (counted.containsKey(words[i])) {
          continue;
        } else {
          var count = 0;
          for (var b = 0; b < words.length; b++) {
            if (words[b] == words[i]) {
              count += 1;
            }
          }
          counted[words[i]] = count;
        }
      }
      return counted;
    } else {
      throw "Map is null";
    }
  }

  /// перевод слов в цифры, либо -1
  int returnNumber(String? strNumber) {
    if (strNumber != null) {
      var number = 0;
      switch (strNumber) {
        case "zero":
          return 0;
        case "one":
          return 1;
        case "two":
          return 2;
        case "three":
          return 3;
        case "four":
          return 4;
        case "five":
          return 5;
        case "six":
          return 6;
        case "seven":
          return 7;
        case "eight":
          return 8;
        case "nine":
          return 9;
        default:
          return -1;
      }
    } else {
      throw "String is null";
    }
  }

  /// нахождение цифр в словах [one, two, ...]
  List<int> convertToInt(String? line) {
    if (line != null) {
      var words = line.split(", ");
      Set<int> ans = {};
      for (var i = 0; i < words.length; i++) {
        if (returnNumber(words[i]) == -1) {
          continue;
        } else {
          ans.add(returnNumber(words[i]));
        }
      }
      return ans.toList();
    } else {
      throw "Line is null";
    }
  }
}

/// 6 задание
class Point {
  late int x;
  late int y;
  late int z;

  Point(this.x, this.y, this.z);

  /// нахождение расстояния от Point до заданной точки
  double distanceTo(int? x, y, z) {
    if (x != null && y != null && z != null) {
      var ans =
          sqrt(pow(x - this.x, 2) + pow(y - this.y, 2) + pow(z - this.z, 2));
      return double.parse(ans.toStringAsFixed(2));
    } else {
      throw "Some parametr is null";
    }
  }

  /// Нахождение площади треугольника в 3-х мерном пространстве
  double triangleArea(int? x0, y0, z0, x1, y1, z1, x2, y2, z2) {
    // проверить все ли точки не null
    if (x0 != null &&
        y0 != null &&
        z0 != null &&
        x1 != null &&
        y1 != null &&
        z1 != null &&
        x2 != null &&
        y2 != null &&
        z2 != null) {
      var a = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2) + pow(z2 - z1, 2));
      var b = sqrt(pow(x1 - x0, 2) + pow(y1 - y0, 2) + pow(z1 - z0, 2));
      var c = sqrt(pow(x2 - x0, 2) + pow(y2 - y0, 2) + pow(z2 - z0, 2));
      var p = (a + b + c) / 2;
      var s = sqrt(p * (p - a) * (p - b) * (p - c));
      return double.parse(s.toStringAsFixed(2));
    } else {
      throw "Some parametr is null";
    }
  }

  /// Возвращение нулевой точки
  factory Point.nullPoint() {
    return Point(0, 0, 0);
  }

  /// Возвразение единичного вектора
  factory Point.untilVector() {
    return Point(1, 1, 1);
  }
}

/// Расширение num
extension on num {
  num rootOfNumber(num? n) {
    if (n != null) {
      if (n < 0) {
        throw "Number is negative";
      }
      if (n == 0) {
        throw "Number is zero";
      } else if (n == 1) {
        return this;
      } else {
        var ans = this;
        for (var i = 1; i < n; i++) {
          ans *= this;
        }
        return ans;
      }
    } else {
      throw "Number is null";
    }
  }
}

/// 8 задание
