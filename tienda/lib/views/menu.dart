import 'package:tienda/exports/export.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.home,
              text: 'Principal',
              onTap: () => {
                    Navigator.of(context).pushNamed(
                      "/principal",
                    )
                  }),
          Divider(),
          _buildDrawerItem(
              icon: Icons.desktop_windows,
              text: 'Marcas',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, '/marcas')}),
          Divider(),
          _buildDrawerItem(
              icon: Icons.contact_phone,
              text: 'Pedidos',
              onTap: () => {
                    Navigator.pushNamed(context, '/pedidos',
                        arguments: Carrito("Aún no has elegido nada", "0"))
                  }),
          Divider(),
          _buildDrawerItem(
              icon: Icons.local_offer,
              text: 'Ofertas',
              onTap: () => {
                    Navigator.of(context).pushNamed(
                      "/ofertas",
                    )
                  }),
          Divider(),
          _buildDrawerItem(
              icon: Icons.question_answer,
              text: 'Novedades',
              onTap: () => {
                    Navigator.of(context).pushNamed(
                      "/novedades",
                    )
                  }),
          Divider(),
          _buildDrawerItem(
              icon: Icons.contacts,
              text: 'Contactos',
              onTap: () => {
                    Navigator.of(context).pushNamed(
                      "/contactos",
                    )
                  }),
          Divider(),
          _buildDrawerItem(
              icon: Icons.settings_power,
              text: 'Salir',
              onTap: () => {
                    Navigator.of(context).pushNamed(
                      "/salir",
                    )
                  }),
          Divider(),
          ListTile(
            title: Text(
              'CompuStoreUdenar',
              style: TextStyle(color: Colors.blue),
            ),
            subtitle: Text('App version 1.0.0'),
            onTap: null,
          )
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/dragon.jpg'))),
        child: Stack(
          children: [
            Positioned(
                bottom: 12.0,
                left: 16.0,
                child: Text(
                  'Menu Principal',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                ))
          ],
        ));
  }

  Widget _buildDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: [
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
