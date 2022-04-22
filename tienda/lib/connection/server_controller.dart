import 'package:flutter_modulo1_fake_backend/modulo1_fake_backend.dart'
    as server;
import 'package:flutter_modulo1_fake_backend/models.dart';
import 'package:tienda/exports/export.dart';

class ServerController {
  User loggedUser;

  void init(BuildContext context) {
    server.generateData(context);
  }

  Future<User> login(String userName, String password) async {
    return await server.backendLogin(userName, password);
  }

  Future<bool> addUser(User nUser) async {
    return await server.addUser(nUser);
  }

  Future<bool> updateUser(User user) async {
    loggedUser = user;
    return await server.updateUser(user);
  }
}
