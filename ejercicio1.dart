import 'dart:math';

class Circulo {
  double radio;
  String color;

  Circulo(this.radio, this.color);

  double calcularArea() {
    return pi * radio * radio;
  }

  double calcularPerimetro() {
    return 2 * pi * radio;
  }
}

void main() {
  Circulo miCirculo = Circulo(7.5, "Azul");
  print("Radio: ${miCirculo.radio}");
  print("Color: ${miCirculo.color}");
  print("Área: ${miCirculo.calcularArea()}");
  print("Perímetro: ${miCirculo.calcularPerimetro()}");
}


