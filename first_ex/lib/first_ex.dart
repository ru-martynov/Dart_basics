library first_ex;

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
