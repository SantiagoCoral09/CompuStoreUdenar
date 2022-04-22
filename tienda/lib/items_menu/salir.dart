import 'package:tienda/exports/export.dart';

class Salir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "ADVERTENCIA",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Text("¿Estás seguro de salir de la App?"),
      actions: [
        ///de forma horizontal agregar botoness
        FlatButton(
            textColor: Colors.black,
            child: Text("SI"),
            onPressed: () {
              //Text("Gracias Por comprar en \nCompuStoreUdenar");
              exit(0);
            }),
        FlatButton(
            textColor: Colors.black,
            child: Text("Cancelar"),
            onPressed: () {
              Navigator.pop(context);
            })
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      backgroundColor: Colors.cyan,
    );
  }
}
