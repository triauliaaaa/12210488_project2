import 'package:flutter/material.dart';
import 'package:projekaulia/views/dashboard/dashboard_view.dart';

class LoginLiat extends StatelessWidget {
  const LoginLiat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            judul(),
            Stack(
              children: [
                CardFormLogin(),
                Center(
                  child: Image.asset(
                    'assets/logo.png',
                    width: 130,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardFormLogin extends StatelessWidget {
  const CardFormLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 8,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Color.fromARGB(255, 255, 147, 199),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            inputanlah(),
            inputanlah(),
            tombolLogin(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class tombolLogin extends StatelessWidget {
  const tombolLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (bc) {
            return DashboardView();
          }));
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 255, 0, 119),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text('Login'),
        ));
  }
}

class inputanlah extends StatelessWidget {
  const inputanlah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            fillColor: Color.fromARGB(255, 255, 255, 255),
            contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            isDense: true,
            filled: true),
      ),
    );
  }
}

class judul extends StatelessWidget {
  const judul({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 30),
      child: Text(
        'Aplikasi\nPendataan Warga',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
