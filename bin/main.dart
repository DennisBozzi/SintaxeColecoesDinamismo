import 'viagem.dart';
import 'transporte.dart';

void main() {
  Viagem.visitar(local: "São Paulo");
  Viagem.visitar(local: "Brasília");
  Viagem.visitar(local: "Amapá");

  Viagem.avaliar(local: "São Paulo", valor: 2500);
  Viagem.avaliar(local: "Brasília", valor: 2300);
  Viagem.avaliar(local: "Amapá", valor: "Muito Barato");

  Viagem.escolherMeioTransporte(locomocao: Transporte.skate);
}
