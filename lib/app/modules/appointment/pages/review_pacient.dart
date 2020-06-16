import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutricao/app/shared/globals.dart';

class ReviewAppointment extends StatelessWidget {
  final Globals globals = Get.find();
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Image.asset(
          globals.logo,
          fit: BoxFit.contain,
          width: 50.0,
          height: 50.0,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: globals.primaryColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Theme.of(context).primaryColor,
                backgroundImage:
                    NetworkImage('https://i.stack.imgur.com/Qt4JP.png'),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Theme.of(context).primaryColor,
              ),
              title: Text('Dr. Anderson Oliveira'),
              subtitle: Text('Responsável por este diagnóstico'),
              onTap: () => Get.toNamed('/nutricionist_request'),
            ),
            Container(
              width: _width,
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'Relatório da consulta',
                style: TextStyle(fontSize: 22.0),
              ),
            ),
            Container(
              width: _width,
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem'
                'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem'
                'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem'
                'Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              width: _width,
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'Observações',
                style: TextStyle(fontSize: 22.0),
              ),
            ),
            Container(
              width: _width,
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem'
                'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem'
                'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem'
                'Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              width: _width,
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'Conteúdo recomendado',
                style: TextStyle(fontSize: 22.0),
              ),
            ),
            Container(
              width: _width,
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'Não há conteúdo extra adicionado a esta consulta.',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
