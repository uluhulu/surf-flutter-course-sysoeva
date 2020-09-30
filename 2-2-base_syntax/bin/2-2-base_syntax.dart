var a;

void main() {
  double b;

  var text = 'text';
  a = text;
  //выводит text
  print(a) ;

  dynamic dyn = 5;
  dyn = text;
  //выводит text
  print(text);

  final fin = 10;
  //нельзя присвоить
  //fin = dyn;

  const con = "long";
  //нельзя присвоить
  //con+=text;

}
