class Pessoa {
  String _nome = "";
  double _peso = 0.0, _altura = 0.0;

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  double get peso => _peso;

  get altura => _altura;

  set altura(value) {
    _altura = value;
  }

  set peso(double value) {
    _peso = value;
  }
}
