import 'package:tienda/exports/export.dart';

class Contactos extends StatelessWidget {
  static const String routeName = '/contactos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Contactos'),
      ),
      drawer: DrawerMenu(),
      body: ListView(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('assets/dragon.jpg'),
              ),
              SizedBox(height: 10),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.cyan,
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: Row(children: <Widget>[
              SizedBox(width: 80.0),
              Icon(Icons.person_add),
              Text('Contáctanos', style: TextStyle(fontSize: 20.0)),
            ]),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(' Jimena Insuasty'),
                  subtitle: Text("Cel: 3218959564 "),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(' Santiago Coral'),
                  subtitle: Text("Cel: 3122913686 "),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(' Brayan Ceballos'),
                  subtitle: Text("Cel: 3152715997"),
                ),
              ],
            ),
          ),
          Image.asset("assets/icono.png", width: 250, height: 70),
          Icon(Icons.thumb_up),
        ],
      ),
    );
  }
}
