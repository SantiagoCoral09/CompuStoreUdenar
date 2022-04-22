import 'package:tienda/exports/export.dart';

class Principal extends StatefulWidget {
  final ServerController serverController;
  Principal(this.serverController, {Key key}) : super(key: key);
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    Widget imageSliderCarousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fill,

        images: [
          AssetImage('assets/oferta1.jpg'),
          AssetImage('assets/hp1.jpg'),
          AssetImage('assets/lenovo1.jpg'),
          AssetImage('assets/samsung2.jpg'),
          AssetImage('assets/acer1.jpg'),
        ],
        autoplay: true,
        indicatorBgPadding: 1.0,
        //dotBgColor: Colors.greenAccent,
        //dotColor: Colors.red,
        dotSize: 4.0,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Menu'),
      ),
      drawer: DrawerMenu(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.amberAccent,
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: Row(children: <Widget>[
              Icon(Icons.local_offer),
              SizedBox(width: 10.0),
              Text('OFERTAS %', style: TextStyle(fontSize: 20.0)),
            ]),
          ),
          //Divider(),
          imageSliderCarousel,
          ListTile(
            leading: Icon(Icons.local_offer, color: Colors.red),
            title: Text(
              "Ver las ofertas disponibles",
              //style: TextStyle(),
            ),
            trailing: Icon(Icons.arrow_right, color: Colors.white),
            onTap: () {
              Navigator.of(context).pushNamed(
                "/ofertas",
              );
            },
          ),
          Divider(),

          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.amber,
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: Row(children: <Widget>[
              Icon(Icons.local_offer),
              SizedBox(width: 10.0),
              Text('Equipos Samsung', style: TextStyle(fontSize: 20.0)),
            ]),
          ),

          Card(
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  Image.asset('assets/samsung1.jpg'),
                  ListTile(
                    leading: Icon(Icons.show_chart, color: Colors.white),
                    title: Text(
                      "Ver Más Equipos disponibles de Samsung",
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
          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.amber,
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: Row(children: <Widget>[
              Icon(Icons.local_offer),
              SizedBox(width: 10.0),
              Text('Equipos Lenovo', style: TextStyle(fontSize: 20.0)),
            ]),
          ),
          Card(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            child: Column(
              children: <Widget>[
                Image.asset('assets/lenovo1.jpg'),
                ListTile(
                  leading: Icon(Icons.show_chart, color: Colors.white),
                  title: Text("Ver Más Equipos disponibles de Lenovo"),
                  trailing: Icon(Icons.arrow_right, color: Colors.white),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lenovo()));
                  },
                ),
              ],
            ),
          ),
          ///////////////////////////////////////////////////////////////////////
          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.amber,
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: Row(children: <Widget>[
              Icon(Icons.local_offer),
              SizedBox(width: 10.0),
              Text('Equipos HP', style: TextStyle(fontSize: 20.0)),
            ]),
          ),
          Card(
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  Image.asset('assets/hp1.jpg'),
                  ListTile(
                    leading: Icon(Icons.show_chart, color: Colors.white),
                    title: Text("Ver Más Equipos Disponibles de Hp"),
                    trailing: Icon(Icons.arrow_right, color: Colors.white),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Hp()));
                    },
                  ),
                ],
              )),
          /////////////////////////////////////////////////////////////////////
          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.amber,
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            child: Row(children: <Widget>[
              Icon(Icons.local_offer),
              SizedBox(width: 10.0),
              Text('Equipos Acer', style: TextStyle(fontSize: 20.0)),
            ]),
          ),
          Card(
            color: Colors.blue,
            //elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            child: Column(
              children: <Widget>[
                Image.asset('assets/acer1.jpg'),
                ListTile(
                  leading: Icon(Icons.show_chart, color: Colors.white),
                  title: Text("Ver Más Equipos disponibles de Acer"),
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
        ],
      ),
    );
  }
}
