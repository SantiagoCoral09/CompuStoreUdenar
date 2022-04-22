import 'package:tienda/exports/export.dart';

class Acer extends StatefulWidget {
  @override
  _AcerState createState() => _AcerState();
}

class _AcerState extends State<Acer> {
  int _paginaActual = 1;

  final acer1 = {
    "NOTEBOOK ACER NITRO 5 AN515-55-53AG",
    "Procesador Intel I5-10300H",
    "Memoria RAM 8GB DDR4",
    "Almacenamiento SSD 256GB",
    "Display 15.6 Pulgadas FHD Panel IPS",
    "Tarjeta Grafica NVIDIA GTX 1650 4GB",
    "Sistema Operativo W10,",
  };

  final acer2 = {
    "Porsche Design Acer Book RS",
    "En palabras de la filosofía ",
    "de Porsche Design: “La presencia",
    " requiere una base sólida” ",
    "El procesador Intel® ",
    "Core™ de 11.a generación ",
    "con hasta 1 TB de almacenamiento",
    " SSD PCIe de alta velocidad y ",
    "gráficos1 NVIDIA® GeForce® MX350",
    "cumplen exactamente con eso.",
  };

  final acer3 = {
    "Confiabilidad, flexibilidad",
    " y asequibilidad. La nueva ",
    "Spin 1 convertible es el dispositivo",
    "ideal para brindar potencia todos",
    " los días con varios modos de usuario.",
    "Aproveche al máximo la pantalla",
    "multitáctil de 14 pulgadas con",
    "el cristal Corning® Gorilla® ",
    "Glass1 que promete un mayor ",
    "nivel de resistencia a toques ",
    "y deslizamientos. Además,",
    "con el procesador Intel® Pentium®",
    " Silver1 y el Acer Active",
    " Stylus1 deslizante de carga rápida,",
  };

  final acer4 = {
    "Acer Aspire 3 2020 15.6",
    " Full HD 1080P Laptop PC,",
    "procesador Intel Core i5-1035G1 Quad-Core,",
    "8GB DDR4 RAM, 256GB SSD,",
    "Ethernet, HDMI, Wi-Fi, cámara web",
    "teclado numérico, Windows 10 Home,",
  };

  final acer5 = {
    "La impresionante relación ",
    "pantalla-cuerpo de 81,61 % ",
    "con bordes estrechos permite",
    "una impresionante pantalla FHD de 15,6'' ",
    " Además, Acer Color Intelligence™ ",
    "y Acer ExaColor™ le permitirán ",
    "enriquecer su experiencia visual.",
  };

  int acer1C;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(title: Text("ACER"), backgroundColor: Colors.cyan),
      drawer: DrawerMenu(),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            //Divider(),
            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/acer1.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...acer1
                      .map(
                        (pers) => ListTile(
                          subtitle: Text(pers),
                        ),
                      )
                      .toList(),
                  //  Divider(),
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
                                "ACER NITRO 5 AN515-55-53AG", "2500000"));
                      }),
                ],
              ),
            ),

            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/acer2.jpg",
                    //width: 200,
                    height: 300,
                  ),
                  ////////////////
                  Divider(),
                  ...acer2
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
                                "Porsche Design Acer Book RS", "3500000"));
                      }),
                ],
              ),
            ),

            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/acer3.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...acer3
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
                            arguments: Carrito("Acer Active", "3500000"));
                      }),
                ],
              ),
            ),

            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/acer4.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...acer4
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
                                Carrito("Acer Aspire 3 2020 15.6", "5500000"));
                      }),
                ],
              ),
            ),

            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/acer5.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...acer5
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
                            arguments: Carrito("Acer ExaColor", "2500000"));
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

// class _carrito (int adic ) {
