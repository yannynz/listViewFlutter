import 'package:flutter/material.dart';
import 'contato.dart';
void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  ListaPage(),
    );
  }
}

// ignore: must_be_immutable
class ListaPage extends StatelessWidget {
   ListaPage({super.key});

List<Contato>contatos=[
  Contato('yann Santana', 'yann@hotmail.com'),
  Contato('fann Santana1', 'yann@hotmail.com'),
  Contato('yann Santana2', 'yann@hotmail.com'),
  Contato('yann Santana3', 'yann@hotmail.com')


];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista Contato')),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            leading: CircleAvatar(child: Text(contatos[index].nome[0]),),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email)
          );

        }
      ),
    );
  }
}
