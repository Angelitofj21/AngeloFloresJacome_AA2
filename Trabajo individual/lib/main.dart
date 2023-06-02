import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/imagenes_data.dart';
import 'package:flutter_application_1/data/pages/imagenespages_data.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicación móvil',
      initialRoute: '/',
      routes: {
        '/': (context) => Inicio(),
        '/detalle': (context) => Detalle(),
        '/configuracion': (context) => Configuracion(),
        '/galeria': (context) => Galeria(),
      },
    );
  }
}

class Inicio extends StatelessWidget {
  Inicio({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Android"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "¡Hola! Angelo",
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/detalle'),
              child: Text('Ver detalles'),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/configuracion'),
              child: Text('Configuración'),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/galeria'),
              child: Text('Galeria'),
            ),
          ],
        ),
      ),
    );
  }
}

class Detalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acerca del Telefono"),
        backgroundColor: Colors.black,
      ),
      body: ListView(children: <Widget>[
        ListTile(
          title: Text("Motog(50) 5G"),
        ),
        ListTile(
          title: Text("Numero de telefono"),
        ),
        ListTile(
          title: Text("Informacion legal"),
        ),
        ListTile(
          title: Text("Etiquetas reglamentarias"),
        ),
        ListTile(
          title: Text("Estado de SIM"),
        ),
        ListTile(
          title: Text("IMEI"),
        ),
        ListTile(
          title: Text("Canal de software"),
        ),
        ListTile(
          title: Text("Version de Android"),
        ),
        ListTile(
          title: Text("Direccion Ip"),
        ),
        ListTile(
          title: Text("Direccion de Bluetooth"),
        ),
        ListTile(
          title: Text("Tiempo de Actividad"),
        ),
        ListTile(
          title: Text("Numero de Compilacion"),
        ),
      ]),
    );
  }
}

class Configuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Configuracion"),
          backgroundColor: Colors.black,
        ),
        body: ListView(children: <Widget>[
          ListTile(
            title: Text("Internet y Redes"),
          ),
          ListTile(
            title: Text("Notificaciones"),
          ),
          ListTile(
            title: Text("Almacenamiento"),
          ),
          ListTile(
            title: Text("Fondo de pantalla"),
          ),
          ListTile(
            title: Text("Seguridad"),
          ),
          ListTile(
            title: Text("Privacidad"),
          ),
          ListTile(
            title: Text("Una tarea"),
          ),
          ListTile(
            title: Text("Ubicacion"),
          ),
          ListTile(
            title: Text("Seguridad y emergencias"),
          ),
          ListTile(
            title: Text("Google"),
          ),
          ListTile(
            title: Text("Ayuda"),
          ),
          ListTile(
            title: Text("Sistema"),
          ),
          ListTile(
            title: Text("Acerca del telefono"),
          ),
        ]));
  }
}

class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galeria"),
        backgroundColor: Colors.black,
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150.0,
        padding: const EdgeInsets.all(5),
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: _imagenelist,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.add),
      ),
    );
  }

  List<Widget> get _imagenelist {
    List<Widget> _listimages = [];

    for (var image in images) {
      _listimages.add(GestureDetector(
          onTap: () {
            Navigator.push(image,
                MaterialPageRoute(builder: (context) => ImagePage(url: image)));
          },
          child: Image.network(image, fit: BoxFit.cover)));
    }

    return _listimages;
  }
}
