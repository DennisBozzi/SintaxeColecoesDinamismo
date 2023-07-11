void main() {
  escolherMeioTransporte(Transporte.trem);

  Set<String> registrosVisitados = <String>{};

  registrarDestinos('Itália', registrosVisitados);
  registrarDestinos('Recife', registrosVisitados);
  registrarDestinos('Rio de Janeiro', registrosVisitados);
  registrarDestinos('Recife', registrosVisitados);

  print(registrosVisitados);
  // {Itália, Recife, Rio de Janeiro}

  print(registrosVisitados.first);
  print(registrosVisitados.last);
  print(registrosVisitados.isEmpty);
  print(registrosVisitados.elementAt(1));
  print(registrosVisitados.contains('Rio de Janeiro'));
  print(registrosVisitados.contains('São Paulo'));

  List<String> lista = ["Arroz", "Banana"];

  registrosVisitados.addAll(lista);

  for (String cidades in registrosVisitados) {
    print(cidades);
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

abstract class banana implements Iterable {}
