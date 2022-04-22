import 'package:tienda/exports/export.dart';

class Registrarse extends StatefulWidget {
  ServerController serverController;
  BuildContext context;
  User userToEdit;

  Registrarse(this.serverController, this.context, {Key key, this.userToEdit})
      : super(key: key);

  RegistrarseState createState() => RegistrarseState();
}

class RegistrarseState extends State<Registrarse> {
  bool _loading = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffKey = GlobalKey<ScaffoldState>();
  final _nom = TextEditingController();
  final _ced = TextEditingController();
  final _dir = TextEditingController();
  final _user = TextEditingController();
  final _pass = TextEditingController();

  String nombres = '';
  String cedula = '';
  String direccion = '';
  String usuario = '';
  String contrasena = '';
  String _errorMessage = "";

  File imageFile;
  bool showPassword = false;
  bool editinguser = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registrarse'), backgroundColor: Colors.cyan),
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
                      SizedBox(height: 10),
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
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
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
          initialValue: nombres,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(80.0)),
            hintText: 'Digite su Nombre ',
            labelText: 'Nombres',
            //helperText: 'Digite Solo su Nombre',
            suffixIcon: Icon(Icons.person),
          ),
          onSaved: (value) {
            nombres = value;
          },
          validator: (value) {
            if (value.isEmpty) {
              return "Este campo es obligatorio";
            }
          },
        ),
        SizedBox(height: 5),
        TextFormField(
          initialValue: cedula,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(80.0)),
            hintText: 'Digite su Cedula',
            labelText: 'Cédula',
            //helperText: 'Digite Solo su Cedula',
            suffixIcon: Icon(Icons.branding_watermark),
          ),
          onSaved: (value) {
            cedula = value;
          },
          validator: (value) {
            if (value.isEmpty) {
              return "Este campo es obligatorio";
            }
          },
        ),
        SizedBox(height: 5),
        TextFormField(
          initialValue: direccion,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(80.0)),
            hintText: 'Digite su Direccion',
            labelText: 'Direccion',
            //helperText: 'Digite Solo su Direccion',
            suffixIcon: Icon(Icons.person_pin),
          ),
          onSaved: (value) {
            direccion = value;
          },
          validator: (value) {
            if (value.isEmpty) {
              return "Este campo es obligatorio";
            }
          },
        ),
        SizedBox(height: 5),
        TextFormField(
          initialValue: usuario,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(80.0)),
            hintText: 'Digite su nombre de usuario',
            labelText: 'Usuario', //MODIFICAR CONTRASEÑA
            //helperText: 'Digite solo su Nombre de Usuario',
            suffixIcon: Icon(Icons.perm_identity),
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
        SizedBox(height: 5),
        TextFormField(
          initialValue: contrasena,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(80.0)),
              hintText: 'Digite su Contraseña',
              labelText: 'Contraseña',
              //helperText: 'Digite Solo su Contraseña',
              suffixIcon: IconButton(
                icon: Icon(
                    showPassword ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
              )),
          obscureText: !showPassword,
          onSaved: (value) {
            contrasena = value;
          },
          validator: (value) {
            if (value.isEmpty) {
              return "Este campo es obligatorio";
            }
          },
        ),
      ],
    );
  }

  Widget _miboton() {
    return RaisedButton(
      color: Colors.cyan,
      textColor: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text((editinguser) ? "Actualizar" : "Registrar"),
          if (_loading)
            Container(
              height: 20,
              width: 20,
              margin: const EdgeInsets.only(left: 20),
              child: CircularProgressIndicator(),
            )
        ],
      ),
      onPressed: () => _registrar(context),
    );
  }

  _registrar(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
    }
    User user = User(
        nombres: this.nombres,
        cedula: this.cedula,
        direccion: this.direccion,
        nickname: this.usuario,
        password: this.contrasena);
    var state;
    if (editinguser) {
      user.id = widget.serverController.loggedUser.id;
      state = await widget.serverController.updateUser(user);
    } else {
      state = await widget.serverController.addUser(user);
    }
    final action = editinguser ? "actualizar" : "guardar";
    final action2 = editinguser ? "actualizado" : "guardado";

    if (state == false) {
      showSnackbar(context, "No se pudo $action", Colors.orange);
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Información"),
            content: Text("Su usuario ha sido $action2 exitosamente"),
            actions: <Widget>[
              FlatButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              )
            ],
          );
        },
      );
    }
  }

  void showSnackbar(BuildContext context, String title, Color backColor) {
    _scaffKey.currentState.showSnackBar(
      SnackBar(
        content: Text(
          title,
          textAlign: TextAlign.center,
        ),
        backgroundColor: backColor,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    editinguser = (widget.userToEdit != null);

    if (editinguser) {
      nombres = widget.userToEdit.nombres;
      cedula = widget.userToEdit.cedula;
      direccion = widget.userToEdit.direccion;
      usuario = widget.userToEdit.nickname;
      contrasena = widget.userToEdit.password;
    }
  }
}
