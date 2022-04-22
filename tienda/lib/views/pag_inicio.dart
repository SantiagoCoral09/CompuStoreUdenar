import 'package:tienda/exports/export.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Bienvendidos',
                    style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                CircleAvatar(
                  radius: 150.0,
                  backgroundImage: AssetImage('assets/dragon.jpg'),
                ),
                Divider(),
                Text('CompuStoreUdenar',
                    style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
                Divider(),
                RaisedButton(
                    color: Colors.cyan,
                    textColor: Colors.white,
                    child: Text('Iniciar',
                        style: TextStyle(
                            fontFamily: 'Lobster',
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    onPressed: () {
                      _mostrarLogin(context);
                      print("Funciona");
                    }),
              ]),
        ),
      ),
    );
  }

  void _mostrarLogin(BuildContext context) {
    Navigator.of(context).pushNamed(
      "/spage",
    );
  }
}
