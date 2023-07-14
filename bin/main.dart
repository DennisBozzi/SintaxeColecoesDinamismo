import 'viagem.dart';
import 'transporte.dart';

void main() {
  Viagem viagemMaio = Viagem(locomocao: Transporte.skate);

  viagemMaio.visitar(local: "São Paulo");
  viagemMaio.visitar(local: "Brasília");
  viagemMaio.visitar(local: "Amapá");

  viagemMaio.avaliar(local: "São Paulo", valor: 2500);
  viagemMaio.avaliar(local: "Brasília", valor: 2300);
  viagemMaio.avaliar(local: "Amapá", valor: "Muito Barato");

  print("\n${viagemMaio.getTotalLocaisVisitados}");
  viagemMaio.setTotalLocaisVisitados = 10;
  print("\n${viagemMaio.getTotalLocaisVisitados}");
  print("\n${viagemMaio.bancoLocal}");
  print("\n${viagemMaio.bancoPrecos}");
}
