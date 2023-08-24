import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.pink[100],
      height: size.height,
      width: size.width,
      child: const Column(
        children: [
          Expanded(
            flex: 12,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              radius: 180,
                              backgroundImage:
                                  ExactAssetImage("assets/images/profile.png"),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            "Ronivaldo Júnior",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: SizedBox(
                            width: 150,
                            child: MyStack(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            "Desenvolvedor Full Stack",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 58,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 80),
                          child: Text(
                            "Experiência em Engenharia de Software, tendo atuado em projetos de desenvolvimento de sistemas web e mobile. Utilizando tecnologias como Flutter/Dart para criar interfaces de usuário e Node.js para construir servidores eficientes.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Stacks",
          style: TextStyle(color: Colors.black),
        ),
        Row(
          children: [
            Card(
                color: Colors.red[300],
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Flutter",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
            Card(
                color: Colors.red[300],
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Nodejs",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
          ],
        ),
        Row(
          children: [
            Card(
                color: Colors.red[300],
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Java",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
            Card(
                color: Colors.red[300],
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Python",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
