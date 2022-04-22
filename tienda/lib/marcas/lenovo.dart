import 'package:tienda/exports/export.dart';

class Lenovo extends StatefulWidget {
  @override
  _LenovoState createState() => _LenovoState();
}

class _LenovoState extends State<Lenovo> {
  int _paginaActual = 1;
  final len1 = {
    " AIO 5 Lenovo Intel Core i7 16GB 512GB SSD",
    " IdeaCentre 23,8” Gris",
    "Características destacadas",
    "Rendimiento y diseño con vistas al futuro",
    "Atractiva pero potente all",
    "in one con procesamiento AMD",
    "Pantalla de 23.8” FHD.",
    "Altavoces estéreo mejorados JBL.",
    "Estupenda opción para el entretenimiento en casa",
    "Windows 11 Home",
  };

  final len2 = {
    "Laptop Lenovo IdeaPad 14IGL05 platinum gray 14",
    "Intel Celeron N4020 4GB de RAM 1TB HDD, ",
    "Intel HD Graphics 600 1366x768px Windows 10 Home",
    "Capacidad:4 GB RAM | 1 TB HDD",
  };

  final len3 = {
    "Lenovo IdeaPad 1 81VU 14 Pulgadas ",
    "HD LED AMD A6 4GB RAM 128GB SSD Win 10",
    "Intel Pentium Silver N5030 -",
    "Procesador de cuatro núcleos ",
    "(1,10 GHz, frecuencia de ráfaga",
    " de 3,10 GHz, memoria SDRAM DDR4 de 4 GB"
        " 128 GB, 2242 m.2 NVMe Solid State Drive",
    "Pantalla antirreflejos de 14 pulgadas HD",
    " LED retroiluminada (1366 x 768)",
    "/ gráficos Intel UHD 605 ",
    "audio HD integrado con 2 ",
    "altavoces de 1,5 W",
  };

  final len4 = {
    "Laptop Lenovo IdeaPad 320 -14IKB",
    " Core I5-7200U – 4GB – 1TB – Celeste",
    "Product Description",
    "Procesador: Intel Core i5-7200U 2.5Ghz.",
    "Disco duro: 1TB --Memoria: 4GB",
    "Pantalla: 14″--Sistema Operativo :",
    " Windos 10--Webcam--USB 3.0 (2)",
  };

  final len5 = {
    "Lenovo IdeaPad 222V",
    "Procesador Intel I5-10300H",
    "Memoria RAM 8GB DDR4",
    "Almacenamiento SSD 256GB",
    "Pantalla LED de 14",
    "Resolución de 1366x768 px.",
    "Es antirreflejo.",
    "Tarjeta gráfica Intel HD Graphics 600.",
    "Conexión wifi y bluetooth.",
    "Cuenta con 2 puertos USB y puerto HDMI",
  };

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(title: Text("LENOVO"), backgroundColor: Colors.cyan),
      drawer: DrawerMenu(),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            //Divider(),
            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/lenovo1.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...len1
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
                            arguments: Carrito("AIO 5 Lenovo", "2700000"));
                      }),
                ],
              ),
            ),

            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/lenovo2.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...len2
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
                                "Lenovo IdeaPad 14IGL05 platinum", "3500000"));
                      }),
                ],
              ),
            ),

            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/lenovo3.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...len3
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
                                Carrito("Lenovo IdeaPad 1 81VU", "3200000"));
                      }),
                ],
              ),
            ),

            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/lenovo4.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...len4
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
                                Carrito("Lenovo IdeaPad 320", "5500000"));
                      }),
                ],
              ),
            ),

            Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/lenovo5.jpg",
                    width: 200,
                    height: 200,
                  ),
                  ////////////////
                  Divider(),
                  ...len5
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
                                Carrito("Lenovo IdeaPad 222V", "2500000"));
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
