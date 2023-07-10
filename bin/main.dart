void main() {
  escolherMeioTransporteEnum(Transporte.trem);
}

//Comparação sem Enum e sem Switch
void escolherMeioTransporte(int locomocao) {
  if (locomocao == 0) {
    print("Vou de CARRO para a aventura!");
  } else if (locomocao == 1) {
    print("Vou de BIKE para a aventura!");
  } else {
    print("Vou para a aventura!");
  }
}

enum Transporte { carro, bike, andando, skate, aviao, patins, trem }

//Comparação com Enum e Switch
void escolherMeioTransporteEnum(Transporte locomocao) {
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
