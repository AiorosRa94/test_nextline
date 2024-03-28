class Validators {
  bool validarEmail(String correo) {
    String exprecionReg = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

    RegExp regExp = RegExp(exprecionReg);

    return regExp.hasMatch(correo);
  }

  bool validarCelular(String celular) {
    String exprecionReg = r"^[0-9]{10}$";

    RegExp regExp = RegExp(exprecionReg);

    return regExp.hasMatch(celular);
  }

  bool validarVacio(String valor) {
    return valor.isEmpty;
  }

  bool validarNumeroCaracteres(String valor, int cantidad) {
    return valor.length < cantidad;
  }
}
