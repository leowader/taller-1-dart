import 'dart:math';
void main() {
  clearScreen();
  saludar();
  calculadora(5, 2);
  areaCirculo(5);
  informacionPersona(nombre: "leowader", edad: 19, ciudad: "codazzi");
  print(convertirTemperatura(10));
  imprimirPar(11);
  imprimirCuadrado();
  print(calculadoraPersonalizada("suma", 2, 1));
  imprimirFactorial(10);
  descuento(100, 50);
  print(contarCaracter("hasdasdasd asdasd"));
  verContrasena();
  print(maxMin([
    1,
    2,
    4,
    5,
    6,
    7,
    89,
  ]));
  print(aprobacion([1.6, 1.6, 2.6, 6.6]));
}
void verContrasena() {
  var res = contrasenaRandom(5);
  print("contraseña generada: $res");
}
void clearScreen() {
  print('\x1B[2J');
}
void saludar() {
  print("-----------punto 2--------------");
  print("¡Hola! Bienvenido/a.");
}
void calculadora(var a, var b) {
  print("-----------punto 3--------------");
  print("numeros por parametros\nnumero 1: $a\nnumero 2: $b");
  var resultadoSuma = suma(a, b);
  print("resultado suma: $resultadoSuma ");
  var resultadoResta = resta(a, b);
  print("resultado resta: $resultadoResta ");
  var resultadoMultiplicacion = multiplicacion(a, b);
  print("resultado multiplicacion: $resultadoMultiplicacion ");
  var resultadoDivision = division(a, b);
  print("resultado division: $resultadoDivision ");
}
double areaCirculo(var radio) {
  print("-----------punto 4--------------");
  var pi = 3.1416;
  print(pow(pi, 2));
  var area = (radio * pow(pi, 2));
  print("radio del circulo :$radio");
  print("area del circulo :$area");
  return area;
}
void informacionPersona({var nombre, var edad, var ciudad}) {
  print("-----------punto 5--------------");
  print("Nombre: $nombre , Edad: $edad Ciudad: $ciudad");
}
double convertirTemperatura(double temperatura) {
  print("-----------punto 6--------------");
  var temp = (9 / 5 * temperatura + 32);
  print("temperatura en grados Celcius:\n $temperatura");
  print("temperatura en grados Fahrenheit");
  return temp;
}
void imprimirPar(int num) {
  print("-----------punto 7--------------");
  var res = verificarPar(num);
  print(res);
  if (res) {
    print("el numero $num es par");
  } else {
    print("el numero $num es impar");
  }
}
bool verificarPar(int numero) => (numero % 2 == 0) ? true : false;
void imprimirCuadrado() {
  print("-----------punto 8--------------");
  print(numCuadrado());
}

List numCuadrado() => List.generate(10, (index) => pow(index + 1, 2));
double calculadoraPersonalizada(var operacion, var a, var b) {
  print("-----------punto 9--------------");
  print("numeros por parametros\nnumero 1: $a\nnumero 2: $b");
  var resultado = 0.0;
  switch (operacion) {
    case "suma":
      print(" operacion suma");
      resultado = suma(a, b);
      break;
    case "resta":
      print("operacion resta");
      resultado = resta(a, b);
      break;
    case "multiplicacion":
      print(" operacion multiplicacion");
      resultado = multiplicacion(a, b);
      break;
    case "division":
      print("operacion division");
      resultado = division(a, b);
      break;
    default:
  }
  return resultado.toDouble();
}
void imprimirFactorial(int numero) {
  print("-----------punto 10--------------");
  var resultado = factorial(numero);
  print("factorial de $numero: $resultado");
}
int factorial(int numero) {
  var resultado = 0;
  if (numero <= 1) {
    resultado = 1;
  } else {
    resultado = numero * factorial(numero - 1);
  }
  return resultado;
}

double suma(var a, var b) {
  var num = a + b;
  return num.toDouble();
}
double resta(var a, var b) {
  var num = a - b;
  return num.toDouble();
}
double multiplicacion(var a, var b) {
  var num = a * b;
  return num.toDouble();
}
double division(var a, var b) {
  try {
    if (b == 0) {
      throw Exception("no se puede dividir por cero");
    }
    var num = a / b;
    return num.toDouble();
  } catch (e) {
    print("error: $e");
    return double.nan;
  }
}
double descuento(var monto, var descuento) {
  print("-----------punto 11--------------");
  var desc = (monto * descuento) / 100;
  var valorFinal = monto - desc;
  print("valor final:$valorFinal ");
  return valorFinal;
}
int contarCaracter(String cadena) {
  print("-----------punto 12--------------");
  return cadena.length;
}
String contrasenaRandom(int longitud) {
  print("-----------punto 13--------------");
  var contrasena = "";
  String caracteres =
      "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_-+=<>?";

  for (var i = 0; i < longitud; i++) {
    int indice = Random().nextInt(caracteres.length);
    // var val = caracteres[indice];
    contrasena += caracteres[indice];
    // print("indice $indice caracter del indice: $val ");
  }
  return contrasena;
}
List maxMin(List<int> numeros) {
  print("-----------punto 14--------------");
  List<dynamic> listanum = [];
  var mayor = 0;
  var menor = 0;
  for (var element in numeros) {
    if (mayor > element) {
      mayor = element;
    }
    if (menor < element) {
      menor = element;
    }
  }
  listanum.add(mayor);
  listanum.add(menor);
  var men = listanum[0];
  var may = listanum[1];
  print("maximo: $may");
  print("minimo: $men");
  return listanum;
}
bool aprobacion(List<double> numeros) {
  bool estado = true;
  for (var element in numeros) {
    if (element < 5) {
      estado = false;
      print(element);
      return estado;
    } else {
      estado = true;
    }
  }
  return estado;
}
