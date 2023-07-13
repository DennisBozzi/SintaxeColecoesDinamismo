void main() {
  //escolherMeioTransporte(Transporte.trem); //print: Vou para a aventura!

  Set<String> registrosVisitados = <String>{};

  registrarDestinos('Itália', registrosVisitados);
  registrarDestinos('Recife', registrosVisitados);
  registrarDestinos('Rio de Janeiro', registrosVisitados);
  registrarDestinos("Venda Nova", registrosVisitados);
  registrarDestinos('Recife', registrosVisitados);

  Map<String, dynamic> registrarPrecos = {};

  registrarPrecos[registrosVisitados.elementAt(0)] = 1200;
  registrarPrecos[registrosVisitados.elementAt(1)] = 1500;
  registrarPrecos[registrosVisitados.elementAt(2)] = 1500;
  registrarPrecos[registrosVisitados.elementAt(0)] = 1900; //Atualizando Itália
  registrarPrecos[registrosVisitados.elementAt(3)] = "Muito Caro";

  //registrarPrecos.remove("Rio de Janeiro"); //Removendo Rio de Janeiro

  //print(registrarPrecos); //print: {Itália: 1200.0, Recife: 1500.0, Rio de Janeiro: 1500.0}

  dynamic num = 7.1;
  print(num.runtimeType); //print: double

  num = "";
  print(num.runtimeType); //print: String

  Viagem viagemHoje = Viagem();
  viagemHoje.dinheiro;

  Viagem.codigoTrabalho;
  Viagem.printCodigo();
}

class Viagem {
  static String codigoTrabalho = "3321";
  double dinheiro = 0;

  static printCodigo() {
    print(codigoTrabalho);
  }
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}

//Comparação com Enum e Switch
void escolherMeioTransporte(Transporte locomocao) {
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

enum Transporte { carro, bike, andando, skate, aviao, patins, trem }

class Pessoa {
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String, dynamic> toMap() {
    return {'nome': nome, 'idade': idade, 'estaAutenticada': estaAutenticada};
  }
}
