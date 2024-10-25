import 'dart:convert';
import 'dart:io';

String lerString(){
  var value = stdin.readLineSync(encoding: utf8);

  if(value == "" || value == null){
    print("Nome não pode ser vazio! Digite novamente: ");
    return lerString();
  }

  return value;

}

String lerStringComTexto(String texto){
  print(texto);
  return lerString();
}

int lerInt(){
  var value = lerString();

  try{
    return int.parse(value);
  }catch(e){
    print("Numero inválido! Insira novamente: ");
    return lerInt();
  }
}

int lerIntComTexto(String texto){
  print(texto);
  return lerInt();
}

double lerDouble(){
  var value = lerString();

  try{
    return double.parse(value);
  }catch(e){
    print("Numero inválido! Insira novamente: ");
    return lerDouble();
  }
}

double lerDoubleComTexto(String texto){
  print(texto);
  return lerDouble();
}