import 'package:tienda/exports/export.dart';

class Novedades1 extends StatelessWidget {
  const Novedades1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      children: [
        Card(
          child: Column(
            children: [
              Image.asset("assets/samsung1.jpg"),
              ListTile(
                title: Text(' COMPUTADORES DE ESCRITORIO DEL 2022'),
                subtitle: Text(
                    "No todos llevamos la computadora a todas partes; algunos, sobre todo en estos tiempos de home office y gaming en PC, establecemos un área específica para trabajar o jugar y nuestro equipo jamás se moverá de ahí. Si este es tu caso, la principal razón de la popularidad de las laptops – su portabilidad – no te servirá de mucho. Conoce nuestra selección de las mejores computadoras de escritorio actualmente."),
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              Image.asset("assets/acer1.jpg"),
              ListTile(
                title: Text('LA MEJOR PARA GAMESRS'),
                subtitle: Text(
                    "¿Por qué deberías comprarla? \nUn rendimiento ágil dentro de un diseño limpio con aire maduro\n¿Para quién es? \nJugadores que no quieren armar su propia computadora.No todo el mundo tiene tiempo o quiere armar su propia PC para gaming. No sin mensionar la casi imposible tarea de encontrar una tarjeta de gráficos a un precio razonable."),
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              Image.asset("assets/hp4.jpg"),
              ListTile(
                title: Text('LA MEJOR EN TODO '),
                subtitle: Text(
                    "¿Por qué deberías comprarla? \nEs el mejor equipo de escritorio todo en uno del mercado.\n¿Para quién es? \nProfesionales y usuarios domésticos que buscan computadoras todo en uno compactas, hermosas y potentes.Cuando se trata de Apple, una parte del encanto reside en la estética. La iMac de 24 pulgadas no es una excepción. Disponible en siete colores: azul, verde, rosa, blanco, amarillo, naranja y morado, la iMac ofrece la combinación perfecta de ángulos y esquinas suaves. "),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
