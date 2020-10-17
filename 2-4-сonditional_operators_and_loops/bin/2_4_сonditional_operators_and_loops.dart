import 'dart:convert';
import 'dart:io';

void main() {
  task3();
}

void task1(int month) {
  //Эта задачка разобрана в примерах к уроку.
  switch (month) {
    case 12:
    case 1:
    case 2:
      print("зима");
      break;
    case 3:
    case 4:
    case 5:
      print("весна");
      break;
    case 6:
    case 7:
    case 8:
      print("лето");
      break;
    case 9:
    case 10:
    case 11:
      print("осень");
      break;
    default:
      print("Неверный номер месяца");
  }
}

void task2() {
  for (var i = 0; i <= 100; i += 2) print(i);
}

void task3() {
  var sum = 0;
  while (true) {
    var input = stdin.readLineSync(encoding: Encoding.getByName("utf-8"));
    if (input.toString() == "stop") break;
    var inputNum = int.tryParse(input);
    if (inputNum != null) {
      sum += inputNum;
      print(sum);
    } else
      print("error ");
  }
}

void task4() {
  var stroke =
      """She sells seashells by the seashore The shells she sells are seashells I'm sure So if she sells seashells on the seashore Then I'm sure she sells seashore shells"""
          .toLowerCase();
  print(stroke);
  var list = stroke.split(" ");
  print(list.length);
  var set = list.toSet();
//В задачке нужно просто высести длину сета.
// В задаче сказано, что нужно сравнить кол-во элементов в массиве(листе) и множестве(сете).
  print("Кол-во повторяющихся слов: ${set.length}");
}
