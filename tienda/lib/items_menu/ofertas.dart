import 'package:tienda/exports/export.dart';

class Ofertas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(title: Text("Ofertas"), backgroundColor: Colors.cyan),
      drawer: DrawerMenu(),
      body: ListView(
        children: [
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
              Text('25% Dcto.\nNOTEBOOK ACER NITRO 5\nAN515-55-53AG',
                  style: TextStyle(fontSize: 20.0)),
            ]),
          ),
          Card(
            color: Colors.white,
            //elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            child: Column(
              children: [
                Image.asset(
                  "assets/acer1.jpg",
                  width: 200,
                  height: 200,
                ),
                ListTile(
                  leading: Icon(Icons.show_chart, color: Colors.blue),
                  title: Text(
                      "El mejor rendimiento y portabilidad para vos! La combinacion ideal para que disfrutes de tus juegos como nunca, si eres un apasionado a la perfección con esta notebook supera tus limites y disfruta de un gameplay fluido y sin inconvenientes!"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Acer()));
                  },
                  //subtitle: Text("Clic para mirar equipos disponibles de Samsung"),
                ),
                ////////////////
                Divider(),
              ],
            ),
          ),
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
              Text('20% Dcto.\nPC PORTABLE SAMSUNG\n NP300E5V',
                  style: TextStyle(fontSize: 20.0)),
            ]),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/samsung2.jpg",
                  width: 200,
                  height: 200,
                ),
                ListTile(
                  leading: Icon(Icons.show_chart, color: Colors.blue),
                  title: Text(
                      " - Intel Core i5 3210M 2.50 GHz\n- 4 GB DDR3\n- 500 GB HDD\n- 15.6-Inch Screen\n- Windows 8\n Garantie 1 año"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Samsung()));
                  },
                  //subtitle: Text("Clic para mirar equipos disponibles de Samsung"),
                ),
                ////////////////
                Divider(),
              ],
            ),
          ),
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
              Text(
                  '25% Dcto.\nLaptop Lenovo IdeaPad \n14IGL05 platinum gray 14"',
                  style: TextStyle(fontSize: 20.0)),
            ]),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/lenovo3.jpg",
                  width: 200,
                  height: 200,
                ),
                ListTile(
                  leading: Icon(Icons.show_chart, color: Colors.blue),
                  title: Text(
                      " - Intel Celeron N4020 4GB de RAM 1TB HDD, \nIntel HD Graphics 600 1366x768px \nWindows 10 Home"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lenovo()));
                  },
                  //subtitle: Text("Clic para mirar equipos disponibles de Samsung"),
                ),
                ////////////////
                Divider(),
              ],
            ),
          ),
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
              Text('20% Dcto.\nLaptop HP 255 G7 gris 15.6"',
                  style: TextStyle(fontSize: 20.0)),
            ]),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/hp1.jpg",
                  width: 200,
                  height: 200,
                ),
                ListTile(
                  leading: Icon(Icons.show_chart, color: Colors.blue),
                  title: Text(
                      " - AMD Athlon 3020E 8GB de RAM 1TB HDD, \nAMD Radeon RX Vega 3 1366x768px FreeDOS"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lenovo()));
                  },
                  //subtitle: Text("Clic para mirar equipos disponibles de Samsung"),
                ),
                ////////////////
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
