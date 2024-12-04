
abstract class  counterstates{}
class  counterInitialstate extends counterstates{}
class  counterPLus extends counterstates {
  late final  int count;
  counterPLus(this.count);
}
class  counterMinus extends counterstates {
  late final  int count;
  counterMinus(this.count);
}