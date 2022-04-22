import 'package:tienda/exports/export.dart';

void main() => runApp(MyApp());

ServerController _serverController = ServerController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CompuStoreUdenar',
        initialRoute: "/",
        routes: {
          "/pedidos": (BuildContext context) => Pedidos(),
          "/gracias": (BuildContext context) => Gracias(),
        },
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(builder: (BuildContext context) {
            switch (settings.name) {
              case "/":
                return MyHomePage();
              case "/spage":
                return UsuarioLogin(_serverController, context);
              case "/principal":
                User loggedUser = settings.arguments;
                _serverController.loggedUser = loggedUser;
                return Principal(_serverController);
              case "/samsung":
                return Samsung();
              case "/acer":
                return Acer();

              case "/lenovo":
                return Lenovo();
              case "/hp":
                return Hp();
              case "/marcas":
                return Marcas();
              case "/ofertas":
                return Ofertas();
              case "/novedades":
                return Novedades();
              case "/registrarse":
                User loggedUser = settings.arguments;
                return Registrarse(
                  _serverController,
                  context,
                  userToEdit: loggedUser,
                );
              case "/contactos":
                return Contactos();

              case "/salir":
                return Salir();
            }
          });
        });
  }
}
