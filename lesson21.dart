import 'dart:io';

void main(){
print('Курс доллара на сегодня:\nДоллар: 87 сом\nЕвро: 110 сом\nРоссийский рубль: 0.9сом\nТенге: 0.212321 сом');
 stdout.write('\n1) Хотите обменять другую валюту на сом?\n2) Хотите обменять сом на другую валюту?\nВыбор: ');
 int userInput = int.parse(stdin.readLineSync()!);

 if(userInput == 1){
  stdout.write('\nВыберите валюту (USD, EUR, RUB, KZT): ');
      String currencyToSell = stdin.readLineSync()!;
      stdout.write('Сколько $currencyToSell хотите продать? ');
      double amountToSell = double.parse(stdin.readLineSync()!);
      if(currencyToSell == 'USD' || currencyToSell == 'usd'){
    print('Обмен: $amountToSell USD на ${amountToSell * 87} сом');
    }else if(currencyToSell == 'EUR' || currencyToSell == 'eur'){
     print('Обмен: $amountToSell EUR на ${amountToSell * 110} сом');
     }else if(currencyToSell == 'RUB' || currencyToSell == 'rub'){
     print('Обмен: $amountToSell RUB на ${amountToSell * 0.9}сом');
      }else if(currencyToSell == 'KZT' || currencyToSell == 'kzt'){
      print('Обмен: $amountToSell KZT на ${amountToSell * 0.212321} сом');
 }
 }else if(userInput == 2){
   stdout.write('\nВыберите валюту (USD, EUR, RUB, KZT): ');
 String currencyToBuy = stdin.readLineSync()!;
 stdout.write('Сколько $currencyToBuy хотите купить? ');
 double amountToSell = double.parse(stdin.readLineSync()!);
 if(currencyToBuy == 'USD' || currencyToBuy == 'usd'){
  print(amountToSell / 87);
 }else if(currencyToBuy == 'EUR' || currencyToBuy == 'eur'){
  print(amountToSell / 110);
 }else if(currencyToBuy == 'RUB' || currencyToBuy == 'rub'){
  print(amountToSell / 0.9);
 }else if(currencyToBuy == 'KZT' || currencyToBuy == 'kzt'){
  print(amountToSell / 0.212321);
 } else{
  print('ошибка');
 }
 
}
}