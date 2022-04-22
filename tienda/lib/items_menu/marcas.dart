import 'package:tienda/exports/export.dart';

class Marcas extends StatelessWidget {
  static const String routeName = '/marcas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(title: Text("Marcas"), backgroundColor: Colors.cyan),
      drawer: DrawerMenu(),
      body: ListView(
        children: [
          Card(
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  Image.asset('assets/logosam.jpg'),
                  ListTile(
                    leading: Icon(Icons.show_chart, color: Colors.white),
                    title: Text(
                      "Ver Equipos disponibles de Samsung",
                      style: TextStyle(),
                    ),
                    trailing: Icon(Icons.arrow_right, color: Colors.white),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Samsung()));
                    },
                  ),
                ],
              )),

          ///////////////////////////////////////////////////////////////////////
          Card(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            child: Column(
              children: <Widget>[
                Image.asset('assets/logolen.jpg'),
                ListTile(
                  leading: Icon(Icons.show_chart, color: Colors.white),
                  title: Text("Ver Equipos disponibles de Lenovo"),
                  trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lenovo()));
                  },
                ),
              ],
            ),
          ),
          ///////////////////////////////////////////////////////////////////////
          Card(
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  Image.asset('assets/logohp.jpg'),
                  ListTile(
                    leading: Icon(Icons.show_chart, color: Colors.white),
                    title: Text("Ver Equipos Disponibles de Hp"),
                    trailing: Icon(Icons.arrow_right, color: Colors.white),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Hp()));
                    },
                  ),
                ],
              )),
          /////////////////////////////////////////////////////////////////////
          Card(
            color: Colors.blue,
            //elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            child: Column(
              children: <Widget>[
                Image.asset('assets/logoacer.jpg'),
                ListTile(
                  leading: Icon(Icons.show_chart, color: Colors.white),
                  title: Text("Ver Equipos disponibles de Acer"),
                  trailing: Icon(Icons.arrow_right, color: Colors.white),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Acer()));
                  },
                  //subtitle: Text("Clic para mirar equipos disponibles de Samsung"),
                ),
              ],
            ),
          ),
          //////////////////////////////////////////////////////////////////////
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
