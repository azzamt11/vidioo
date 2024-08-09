import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.black,
        child: Stack(
          children: [
            Center(
              child: logo()
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                margin: const EdgeInsets.only(bottom: 20),
                child: footer()
              )
            )
          ],
        )
      )
    );
  }

  Widget logo() {
    return Container(
      height: 50,
      width: 230,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/logo.png"),
          fit: BoxFit.cover
        )
      ),
    );
  }

  Widget footer() {
    return const Text("This is footer");
  }
}