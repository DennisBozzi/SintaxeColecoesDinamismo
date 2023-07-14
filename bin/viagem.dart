import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = "3321";
  double dinheiro = 0;
  Transporte locomocao;

  Viagem({required this.locomocao});

  static Set<String> bancoLocal = <String>{};
  static Map<String, dynamic> bancoPrecos = {};

  static printCodigo() {
    print(codigoTrabalho);
  }

  static void escolherMeioTransporte({required Transporte locomocao}) {
    switch (locomocao) {
      case Transporte.carro:
        print('Vou de CARRO para a aventura!');
        break;

      case Transporte.bike:
        print('Vou de BIKE para a aventura!');
        break;

      case Transporte.andando:
        print('Vou ANDANDO para a aventura!');
        break;

      case Transporte.skate:
        print('Vou de SKATE para a aventura!');
        break;

      default:
        print('Vou para a aventura!');
        break;
    }
  }

  static Set<String> visitar({required String local}) {
    bancoLocal.add(local);
    return bancoLocal;
  }

  static Map<String, dynamic> avaliar({required String local, required dynamic valor}) {
    bancoPrecos[local] = valor;
    return bancoPrecos;
  }
}
