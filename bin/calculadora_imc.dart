import 'dart:convert';
import 'dart:io';

/*import 'package:calculadora_imc/pessoa.dart';*/

void main(List<String> arguments) {
  print("Bem vindos a nossa calculadora de IMC!");

  print("Informe seu Nome:");
  var line = stdin.readLineSync(encoding: utf8);
  var nome = line ?? "";

  print("Informe seu peso em KG:");
  line = stdin.readLineSync(encoding: utf8);
  var peso = double.parse(line ?? "0");

  print("Informe sua altura em Metro:");
  line = stdin.readLineSync(encoding: utf8);
  var altura = double.parse(line ?? "0");

  print(nome);

  var imc = (peso / (altura * altura));

  switch (imc) {
    case <= 16:
      print("Seu IMC está classificado como Magreza Grave");
      break;
    case <= 17:
      print("Seu IMC está classificado como Magreza Moderada");
      break;
    case <= 18.5:
      print("Seu IMC está classificado como Magreza leve");
      break;
    case <= 25:
      print("Seu IMC está classificado como Saudável");
      break;
    case <= 30:
      print("Seu IMC está classificado como Sobrepeso");
      break;
    case <= 35:
      print("Seu IMC está classificado como Obesidade Grau I");
      break;
    case <= 40:
      print("Seu IMC está classificado como Obesidade Grau II (Severa)");
      break;
    case > 40:
      print("Seu IMC está classificado como Obesidade Grau III (Móbida)");
      break;
    default:
      print("Operação inválida!");
      exit(0);
  }

  print(imc);
}
