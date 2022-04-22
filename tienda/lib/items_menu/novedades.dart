import 'package:tienda/exports/export.dart';

class Novedades extends StatefulWidget {
  //static const String routeName = '/novedades';

  @override
  _NovedadesState createState() => _NovedadesState();
}

class _NovedadesState extends State<Novedades> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Novedades'), backgroundColor: Colors.cyan[600]),
      body: Novedades1(),
      drawer: DrawerMenu(),
    );
  }
}
