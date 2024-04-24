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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Olá Lucas',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.lock_open,
                color: Colors.white,
                size: 28,
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$750,26',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Conta Poupança',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 60),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Histórico de Transação',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0xFF79C7C9),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 30),
                          buildTransactionText('Shopping', '-\$100,00'),
                          SizedBox(height: 20),
                          buildTransactionText('Spotify', '-\$19,90'),
                          SizedBox(height: 20),
                          buildTransactionText('Restaurante', '-\$24,90'),
                          SizedBox(height: 20),
                          buildTransactionText('Steam', '-\$219,00'),
                        ],
                      ),
                    ),
                    SizedBox(height: 120),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: Color(0xFFFFB600),
                              size: 30,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Conta',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.account_balance_wallet,
                              color: Color(0xFFFFB600),
                              size: 30,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Despesas',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.compare_arrows,
                              color: Color(0xFFFFB600),
                              size: 30,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Transações',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.settings,
                              color: Color(0xFFFFB600),
                              size: 30,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Ajustes',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTransactionText(String title, String amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFFA3AFC3),
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),
      ],
    );
  }
}
