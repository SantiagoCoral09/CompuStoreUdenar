import 'package:tienda/exports/export.dart';

class Gracias extends StatelessWidget {
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
                SizedBox(
                  height: 50,
                ),
                Text('Gracias por comprar en:',
                    style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                // SizedBox(
                //   height: 30,
                // ),
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
                SizedBox(
                  height: 100,
                ),
                RaisedButton(
                    color: Colors.cyan,
                    textColor: Colors.white,
                    child: Text('Aceptar',
                        style: TextStyle(
                            fontFamily: 'Lobster',
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("/principal");
                      print("Funciona");
                    }),
              ]),
        ),
      ),
    );
  }
}
