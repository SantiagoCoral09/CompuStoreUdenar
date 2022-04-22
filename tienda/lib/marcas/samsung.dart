import 'package:tienda/exports/export.dart';

class Samsung extends StatefulWidget {
  @override
  _SamsungState createState() => _SamsungState();
}

class _SamsungState extends State<Samsung> {
  int _paginaActual = 1;
  final sam1 = {
    " PC PORTABLE SAMSUNG NP300E5V / DUAL CORE / 4GO",
    "Référence : F-NP300E5V",
    "Ecran 15.6 HD LED ",
    " Processeur Intel Pentium Dual Core 997 ",
    " 1.6 Ghz . 2 Mo de mémoire cache"
        " 4 Go de mémoire - Disque 500 Go "
        " Carte graphique Intel HD Graphics"
  };

  final sam2 = {
    "Computadora Samsung DP300A2A-B02MX ",
    " 21.5 - Pentium G645T ",
    " 4GB - 500GB - Windows 8",
    " Modelo del procesador:G645T",
    "Tipo de memoria interna:DDR3-SDRAM"
  };

  final sam3 = {
    " Monitor Samsung Ips 24 Full Hd ",
    "Freesync 75hz Borde Delgado F24T45",
    "Características destacadas",
    "Número de modelo: F24T452FQN",
    "Tipo de pantalla: IPS",
    "Plana/curvada: Plana",
    "Resolución: 1920 x 1080",
    "Relación de aspecto: 16:9",
  };

  final sam4 = {
    " Samsung XTR 32 Full Hd Freesync 75hz",
    " Borde Delgado F24T45",
    "Características destacadas",
    "Número de modelo: F24T452FQN",
    "Tipo de pantalla: IPS",
    "Plana/curvada: Plana",
    "Resolución: 1920 x 1080",
    "Relación de aspecto: 16:9",
    "Brillo: 250 nit (típico) Y 200 nit (mínimo)",
  };

  final sam5 = {
    "Samsung DP300A2A-B02MX ",
    " 21.5 - Pentium G645T ",
    " de 3,10 GHz, memoria SDRAM DDR4 de 4 GB"
        "Tipo de pantalla: IPS",
    "Plana/curvada: Plana",
    "Resolución: 1900 x 1080",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(title: Text("SAMSUNG"), backgroundColor: Colors.cyan),
      drawer: DrawerMenu(),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            //Divider(),
            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/samsung1.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...sam1
                      .map(
                        (pers) => ListTile(
                          subtitle: Text(pers),
                        ),
                      )
                      .toList(),
                  RaisedButton(
                      color: Colors.cyan,
                      textColor: Colors.white,
                      child: Text('Comprar',
                          style: TextStyle(
                              fontFamily: 'Lobster',
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/pedidos',
                            arguments: Carrito(
                                "PORTABLE SAMSUNG NP300E5V", "4500000"));
                      }),
                ],
              ),
            ),

            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/samsung2.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...sam2
                      .map(
                        (pers) => ListTile(
                          subtitle: Text(pers),
                        ),
                      )
                      .toList(),
                  RaisedButton(
                      color: Colors.cyan,
                      textColor: Colors.white,
                      child: Text('Comprar',
                          style: TextStyle(
                              fontFamily: 'Lobster',
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/pedidos',
                            arguments:
                                Carrito("Samsung DP300A2A-B02MX", "4200000"));
                      }),
                ],
              ),
            ),

            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/samsung3.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...sam3
                      .map(
                        (pers) => ListTile(
                          subtitle: Text(pers),
                        ),
                      )
                      .toList(),
                  RaisedButton(
                      color: Colors.cyan,
                      textColor: Colors.white,
                      child: Text('Comprar',
                          style: TextStyle(
                              fontFamily: 'Lobster',
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/pedidos',
                            arguments:
                                Carrito("Monitor Samsung Ips 24", "5300000"));
                      }),
                ],
              ),
            ),

            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/samsung4.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...sam4
                      .map(
                        (pers) => ListTile(
                          subtitle: Text(pers),
                        ),
                      )
                      .toList(),
                  RaisedButton(
                      color: Colors.cyan,
                      textColor: Colors.white,
                      child: Text('Comprar',
                          style: TextStyle(
                              fontFamily: 'Lobster',
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/pedidos',
                            arguments: Carrito("Samsung XTR 32", "2500000"));
                      }),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/samsung5.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...sam5
                      .map(
                        (pers) => ListTile(
                          subtitle: Text(pers),
                        ),
                      )
                      .toList(),
                  RaisedButton(
                      color: Colors.cyan,
                      textColor: Colors.white,
                      child: Text('Comprar',
                          style: TextStyle(
                              fontFamily: 'Lobster',
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/pedidos',
                            arguments:
                                Carrito("Samsung DP300A2A-B02MX ", "4200000"));
                      }),
                ],
              ),
            ),
          ]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (x) {
          if (_paginaActual == x) {
            Navigator.pushNamed(context, '/pedidos',
                arguments: Carrito("Aún no has elegido nada", "0"));
            setState(() {
              _paginaActual = x;
            });
          } else {
            Navigator.pop(context);
            setState(() {
              _paginaActual = x;
            });
          }
        },
        currentIndex: _paginaActual,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.keyboard_return),
            title: Text('Volver'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            title: Text('Mis Compras'),
          ),
        ],
      ),
    );
  }
}
