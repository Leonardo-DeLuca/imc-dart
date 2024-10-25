import 'package:flutter_test/flutter_test.dart';
import 'package:imc_calc/main.dart' as app;

void main() {
  test("Teste Calculo IMC", (){
    expect(app.calculaIMC(1.72, 80).toStringAsFixed(2), equals("27.04"));
  });
}
