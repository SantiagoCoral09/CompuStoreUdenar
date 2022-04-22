import 'package:tienda/exports/export.dart';

class Pedidos extends StatefulWidget {
  @override
  _PedidosState createState() => _PedidosState();
}

class _PedidosState extends State<Pedidos> {
  int _paginaActual = 1;

  @override
  Widget build(BuildContext context) {
    final Carrito arguments = ModalRoute.of(context).settings.arguments;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pedidos'),
        ),
        drawer: DrawerMenu(),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          children: [
            Card(
                child: Column(children: [
              Text("COMPUTADORES SELECCIONADOS: ",
                  style: TextStyle(
                      fontFamily: 'Lobster',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              Image.asset(
                "assets/dragon.jpg",
                width: 500,
                height: 300,
              ),
              ////////////////
              Divider(),
            ])),
            //Divider(),
            Card(
                child: Column(
              children: [
                Text("Descripción: ", style: TextStyle(color: Colors.blue)),
                Text((arguments.referencia)),
                Text("Precio: ", style: TextStyle(color: Colors.blue)),
                Text((arguments.precio)),
              ],
            )),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (x) {
            if (_paginaActual == x) {
              Navigator.pushNamed(context, '/gracias');
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
              icon: Icon(Icons.monetization_on),
              title: Text('Pagar'),
            ),
          ],
        ),
      ),
    );
  }
}
