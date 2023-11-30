import 'package:flutter/material.dart';

void main() {
  runApp(Rotas());
}

class Rotas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            'Nossas Rotas!',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 17),
          Image.network(
            'images/LOGO.png',
            height: 220,
          ),
          SizedBox(height: 15),
          Image.network(
            'images/rotas_img.png',
            height: 275,
          ),
          Spacer(), // Adiciona espaço flexível para colocar o quadrado azul na parte inferior
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF14268C), // Cor do quadrado azul
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            width: double.infinity,
            padding: EdgeInsets.all(45), // Reduzi o padding do Container
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaPagina()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Cor do botão
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(20.0), // Aumentei o raio da borda
                ),
                minimumSize: Size(250, 84), // Ajustei o tamanho mínimo do botão
              ),
              child: Center(
                child: Text(
                  'HOME',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 44, // Reduzi o tamanho do texto
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SegundaPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Página'),
      ),
      body: Center(
        child: Text('Conteúdo da Segunda Página'),
      ),
    );
  }
}
