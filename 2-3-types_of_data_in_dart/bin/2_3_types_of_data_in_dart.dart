import 'dart:math';

void main() {
  // task1();
  // task2();
  //task3();
  task4();
  //task5();
}

void task1() {
  /*a*/
  Random random = new Random();
  int randomNumber = random.nextInt(10);
  if (randomNumber.isEven)
    print('${randomNumber} - Четное');
  else
    print("${randomNumber} - Нечетное");
}

void task2() {
  /*a*/
  print("I \u2665 dart");
}

void task3() {
  /*a*/
  var list = <int>[1, 2, 3, 4, 5, 6, 7, 8];
  /*b*/
  print(list.length);
  /*c*/
  //Можно сделать ссылку на то, как использовать лямбда выражения
  list.sort((b, a) => a.compareTo(b));
  print(list);
  /*d*/
  //не сразу понятно что именно нужно делать с newList
  //можно написать в задании так : Вывести подсписок newList длиной в 3 элемента, используя sublist
  var newList = list.sublist(0, 3);
  print(newList);
  /*e*/
  print(list.indexOf(5));
  /*f*/
  list.removeWhere((element) => element >= 5);
  print(list);
  /*g*/
  //Нельзя с помощью addAll заменить одни значения листа на другие. Для этого нужно использовать replaceRange.
}

void task4() {
  /*a*/
  Map<String, int> numberBook = {
    "Иван": 334455666,
    "Татьяна": 89326007089,
    "Олег": 89769626155,
  };
  /*b*/
  print(numberBook.toString());
  /*c*/
  numberBook.addAll({"Екатерина": 89675843726});
  print(numberBook.toString());
  /*d*/
  var sortMap = Map.fromEntries(numberBook.entries.toList()..sort((b, a) => a.key.compareTo(b.key)));
  print(sortMap);
}

void task5(){
  /*a*/
  Set mySet = { 'Москва','Вашингтон','Париж'};
  /*b*/
  mySet.add('Вашингтон');
  //Set не добавляет элемент, который уже содержит
  print(mySet.length);
  String s =
  """She sells seashells by the seashore,
 The shells she sells are seashells, I am sure.
 So if she sells seashells on the seashore,
 Then I am sure she sells seashore shells.""";
  print(s.split(" ").length);
}
