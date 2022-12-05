import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Images App',
      home: StartImage(),
    );
  }
}

class StartImage extends StatefulWidget {
  const StartImage({super.key});

  @override
  State<StartImage> createState() => _StartImage();
}

class _StartImage extends State<StartImage> {
  Color colorBase = const Color.fromARGB(255, 100, 100, 100);
  Color bgScaff = const Color.fromARGB(255, 172, 172, 172);

  var linkImages = [
    'https://upload.wikimedia.org/wikipedia/commons/9/9c/B%C3%A9b%C3%A9_Phoque_de_Weddell_-_Baby_Weddell_Seal.jpg',
    'https://s5.static.brasilescola.uol.com.br/be/2021/10/foca.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgScaff,
      appBar: AppBar(
        title: const Center(
          child: Text('FOFOQUITAS'),
        ),
        backgroundColor: colorBase,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 276,
            child: Image(
              image: NetworkImage(linkImages[1]),
            ),
          ),
          SizedBox(
            height: 276,
            child: Image(
              image: NetworkImage(linkImages[0]),
            ),
          ),
          const SizedBox(
            height: 244.5,
            child: Image(
              image: NetworkImage(
                'https://ogimg.infoglobo.com.br/in/14638550-9ee-f9a/FT1086A/20141123-125719.jpg',
              ),
            ),
          ),
          const SizedBox(
            height: 276,
            child: Image(
              image: NetworkImage(
                'https://static.escolakids.uol.com.br/conteudo/images/2018/12/foca-comum.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
