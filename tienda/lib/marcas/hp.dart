import 'package:tienda/exports/export.dart';

class Hp extends StatefulWidget {
  @override
  _HpState createState() => _HpState();
}

class _HpState extends State<Hp> {
  int _paginaActual = 1;
  final hp1 = {
    "Laptop HP 255 G7 gris 15.6",
    "Procesador AMD Athlon.",
    "Memoria RAM de 8GB.",
    "Pantalla LED de 15.6",
    "Resolución de 1366x768 px",
    "Es antirreflejo.2,",
    "Tarjeta gráfica AMD Radeon RX Vega 3.",
    "Conexión wifi y bluetooth.",
  };

  final hp2 = {
    "Portátil HP 15s-fq4021ns",
    "Windows 11 Home",
    "Intel® Core™ i5-1155G7",
    "hasta 4,5 GHz con tecnología Intel® Turbo Boost",
    " 8 MB de caché L3, 4 núcleos, 8 subprocesos",
    "RAM DDR4-3200 MHz 8 GB (2 x 4 GB)",
    "SSD de 512 GB PCIe® NVMe™ M.2",
    "FHD de 15,6" " (39,6 cm) en diagonal",
    "bisel micro-edge, antirreflectante",
  };

  final hp3 = {
    "TODO EN UNO HP 21-B0003LA",
    " INTEL CELERON J4025 4GB DDR4 1T FREE DOS",
    "Características destacadas",
    "Producto exento y/o excluido de",
    " IVA en virtud del Estatuto Tributario.",
    "Fácil instalación",
    "software MediaSmart listo para entretenerlo",
    "Procesador Intel Celeron más reciente"
  };

  final hp4 = {
    "HP 19 – 2014 All-in-One",
    "Desktop PC (Energy Star",
    "Fabricante Refurbished ",
    "HP 19 – 2014 All-in-One Desktop",
    " PC AMD AMD e1-series E1 ",
    " 2500 Dual Core (2 Core) ",
    " – DDR3 – 500 Unidad de disco duro – no SSD",
    "integrados AMD Radeon HD 8240 ",
    " 19.5 1600 x 900 Pantalla LED ",
    "retroiluminada en 49.4 cm (19,5)",
    " LCD de alta – Windows 10",
    "Memoria instalada: 4",
    "Memoria Máxima: 16",
  };

  final hp5 = {
    "Laptop HP 255 G7 gris 15.6'' ",
    "Procesador AMD Athlon.",
    "Memoria RAM de 8GB.",
    "Pantalla LED de 15.6",
    "Resolución de 1366x768 px.",
    "Es antirreflejo.",
    "Tarjeta gráfica AMD Radeon RX Vega 3",
    "Conexión wifi y bluetooth.",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(title: Text("HP"), backgroundColor: Colors.cyan),
      drawer: DrawerMenu(),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            //Divider(),
            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/hp1.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...hp1
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
                            arguments: Carrito("Laptop HP 255 G7", "3800000"));
                      }),
                ],
              ),
            ),

            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/hp2.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...hp2
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
                                Carrito("Portátil HP 15s-fq4021ns", "4300000"));
                      }),
                ],
              ),
            ),

            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/hp3.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...hp3
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
                            arguments: Carrito("HP 21-B0003LA", "3600000"));
                      }),
                ],
              ),
            ),

            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/hp4.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...hp4
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
                                Carrito("HP 19 – 2014 All-in-One", "5300000"));
                      }),
                ],
              ),
            ),

            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/hp5.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...hp5
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
                            arguments: Carrito("Laptop HP 255 G7", "3700000"));
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
