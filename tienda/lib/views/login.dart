import 'package:tienda/exports/export.dart';

class UsuarioLogin extends StatefulWidget {
  ServerController serverController;
  BuildContext context;
  UsuarioLogin(this.serverController, this.context, {Key key})
      : super(key: key);
  _UsuarioLoginState createState() => _UsuarioLoginState();
}

class _UsuarioLoginState extends State<UsuarioLogin> {
  bool _loading = false;
  bool showPassword = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String usuario = "";
  String password = "";
  String _errorMessage = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Inicio de sesion'), backgroundColor: Colors.cyan[700]),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/dragon.jpg'),
                    ),
                    SizedBox(height: 30),
                    _crearInput(),
                    SizedBox(height: 10),
                    _miboton(),
                    if (_errorMessage.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          _errorMessage,
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    // SizedBox(height: 10),
                    _registrar(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      // ),
    );
  }

  Widget _crearInput() {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'Digite su Nombre de Usuario',
            labelText: "Usuario:",
            helperText: 'Digite Solo su Usuario',
            suffixIcon: Icon(Icons.person),
          ),
          onSaved: (value) {
            usuario = value;
          },
          validator: (value) {
            if (value.isEmpty) {
              return "Este campo es obligatorio";
            }
          },
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'Digite su password',
            labelText: "Contraseña:",
            helperText: 'Digite solo su password',
            suffixIcon: IconButton(
              icon:
                  Icon(showPassword ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  showPassword = !showPassword;
                });
              },
            ),
          ),
          obscureText: !showPassword,
          onSaved: (value) {
            password = value;
          },
          validator: (value) {
            if (value.isEmpty) {
              return "Este campo es obligatorio";
            }
          },
        ),
        SizedBox(height: 40),
      ],
    );
  }

  Widget _miboton() {
    return RaisedButton(
      color: Colors.cyan,
      textColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 15),
      onPressed: () {
        _login(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Iniciar sesión"),
          if (_loading)
            Container(
              height: 20,
              width: 20,
              margin: const EdgeInsets.only(left: 20),
              child: CircularProgressIndicator(),
            )
        ],
      ),
    );
  }

  Widget _registrar() {
    return RaisedButton(
      color: Colors.green,
      textColor: Colors.white,
      child: Text('Registrarse'),
      onPressed: () {
        Navigator.of(context).pushNamed("/registrarse");
      },
    );
  }

  void _login(BuildContext context) async {
    if (!_loading) {
      if (_formKey.currentState.validate()) {
        _formKey.currentState.save();
        setState(() {
          _loading = true;
          _errorMessage = "";
        });
        User user = await widget.serverController.login(usuario, password);
        if (user != null) {
          Navigator.of(context)
              .pushReplacementNamed("/principal", arguments: user);
        } else {
          setState(() {
            _errorMessage = "Usuario o contrasaeña incorrecto";
            _loading = false;
          });
        }
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.serverController.init(widget.context);
  }
}
