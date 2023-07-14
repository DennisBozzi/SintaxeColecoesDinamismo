import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = "3321";
  double dinheiro = 0;
  Transporte locomocao;

  Viagem({required this.locomocao});

  Set<String> bancoLocal = <String>{};
  Map<String, dynamic> bancoPrecos = {};

  int _totalLocaisVisitados = 0;

  void set setTotalLocaisVisitados(int qtdLocais) {
    _totalLocaisVisitados = qtdLocais;
  }

  int get getTotalLocaisVisitados {
    return _totalLocaisVisitados;
  }

  void printCodigo() {
    print(codigoTrabalho);
  }

  void escolherMeioTransporte({required Transporte locomocao}) {
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

  Set<String> visitar({required String local}) {
    bancoLocal.add(local);
    _totalLocaisVisitados++;
    return bancoLocal;
  }

  Map<String, dynamic> avaliar(
      {required String local, required dynamic valor}) {
    bancoPrecos[local] = valor;
    return bancoPrecos;
  }
}
