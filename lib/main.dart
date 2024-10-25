import 'classes/Pessoa.dart';
import 'classes/Utils.dart';

void execute() {
  int opcao = 1;
  var pessoa = Pessoa();

  do{
    print("\n---- Bem vindo ao sitema de claculo IMC! ----");;
    print("1 - Cadastrar nome");
    print("2 - Cadastrar peso");
    print("3 - Cadastrar altura");
    print("4 - Calcular IMC");

    opcao = lerIntComTexto("\nSelecione uma opção: ");

    switch (opcao){
      case 1:
        pessoa.nome = lerStringComTexto("\nCadastro de nome! Digite o nome da pessoa: ");
        break;
      case 2:
        pessoa.peso = lerDoubleComTexto("\nCadastro de peso! Digite o peso em Kg: ");
        break;
      case 3:
        pessoa.altura = lerDoubleComTexto("\nCadastro de altura! Digite a altura em metros: ");
        break;
      case 4:

        if(!verificarDados(pessoa)) break;

        mostrarIMCEClassificacao(pessoa);
        break;
      case 0:
        print("\nSaindo do programa...");
        break;
      default:
        print("\nValor inválido - Selecione uma opção válida!");
        break;
    }
  }while(opcao != 0);
}

bool verificarDados(Pessoa pessoa){
  List<String> dadosFaltantes = [];

  if (pessoa.nome.isEmpty) dadosFaltantes.add("Nome ");
  if (pessoa.peso == 0) dadosFaltantes.add("Peso ");
  if (pessoa.altura == 0) dadosFaltantes.add("Altura ");

  if (dadosFaltantes.isNotEmpty) {
    String fraseAtencao = "Atenção! Dados faltantes de - ${dadosFaltantes.join('- ')}- Informe todos os dados necessários!";
    print(fraseAtencao);
    return false;
  }

  return true;
}

void mostrarIMCEClassificacao(Pessoa pessoa){
  double imc = calculaIMC(pessoa.altura, pessoa.peso);
  String classificacao = classificaIMC(imc);

  print("\n - IMC - ");
  print("Nome: ${pessoa.nome}");
  print("Peso: ${pessoa.peso}Kg");
  print("Altura: ${pessoa.altura}m");

  print ("\nIMC: ${imc.toStringAsFixed(2)}");
  print("A classificação do seu IMC é: $classificacao");
}

double calculaIMC(double altura, double peso) => (peso / (altura * altura));

String classificaIMC(double imc){
  String retorno;

  if(imc < 16){
    retorno = "Magreza grave";
  } else if(imc < 17){
    retorno = "Magreza moderada";
  } else if(imc < 18.5){
    retorno = "Magreza leve";
  } else if(imc < 25){
    retorno = "Saudável";
  } else if(imc < 30){
    retorno = "Sobrepeso";
  } else if(imc < 35){
    retorno = "Obesidade Grau 1";
  } else if(imc < 40){
    retorno = "Obesidade Grau 2 (severa)";
  } else {
    retorno = "Obesidade Grau 3 (mórbida)";
  }

  return retorno;

}

