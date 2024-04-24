import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF07278C),
        appBar: AppBar(
          backgroundColor: Color(0xFF07278C),
          title: Text(
            'Menu',
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xFF07278C),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(8.0), // Adiciona espaçamento interno ao ListView
                children: [
                  buildMenuItem(Icons.compare_arrows, 'Transferência'),
                  buildSeparator(),
                  buildMenuItem(Icons.account_balance_wallet, 'Pagar Contas'),
                  buildSeparator(),
                  buildMenuItem(Icons.monetization_on, 'Saque'),
                  buildSeparator(),
                  buildMenuItem(Icons.percent_outlined, 'Depósito Fixo'),
                  buildSeparator(),
                  buildMenuItem(Icons.star_border, 'Favoritos'),
                  buildSeparator(),
                  buildMenuItem(Icons.credit_card, 'Cartão de Crédito'),
                  buildSeparator(),
                  buildMenuItem(Icons.settings, 'Configurações da Conta'),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          color: Color(0xFF07278C),
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Voltar',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String text) {
    return ListTile(
      leading: Icon(
        icon,
        color: Color(0xFFFFB600),
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildSeparator() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 1,
        color: Color(0xFFA3DFE7),
      ),
    );
  }
}

class TransacoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transações'),
      ),
      body: Center(
        child: Text(
          'Página de Transações',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}