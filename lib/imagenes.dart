import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:aplicacion_sonidos/lista.dart';

class imagenes extends StatefulWidget {
  const imagenes({super.key});

  @override
  State<imagenes> createState() => _imagenesState();
}

class _imagenesState extends State<imagenes> {
  @override
  final player = AudioPlayer();
  String posicion = "";
  bool play = false;
  bool pause = false;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GALERÍA DE SONIDOS RELAJANTES'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16,
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            GestureDetector(
              onTap: () async {
                String audio1 = "sonidos/arroyo.mp3";
                if (posicion == audio1) {
                  if (play) {
                    await player.pause();
                    setState(() {
                      play = false;
                      pause = true;
                    });
                  } else if (pause) {
                    await player.resume();
                    setState(() {
                      play = true;
                      pause = false;
                    });
                  }
                } else {
                  await player.stop();
                  await player.play(AssetSource(audio1));
                  setState(() {
                    posicion = audio1;
                    play = true;
                    pause = false;
                  });
                }
              },
              child: Container(
                child: Image.asset(
                  "assets/imagenes/arroyo.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                String audio2 = "sonidos/coca.mp3";
                if (posicion == audio2) {
                  if (play) {
                    await player.pause();
                    setState(() {
                      play = false;
                      pause = true;
                    });
                  } else if (pause) {
                    await player.resume();
                    setState(() {
                      play = true;
                      pause = false;
                    });
                  }
                } else {
                  await player.stop();
                  await player.play(AssetSource(audio2));
                  setState(() {
                    posicion = audio2;
                    play = true;
                    pause = false;
                  });
                }
              },
              child: Container(
                child: Image.asset(
                  "assets/imagenes/coca.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                String audio3 = "sonidos/gato.mp3";
                if (posicion == audio3) {
                  if (play) {
                    await player.pause();
                    setState(() {
                      play = false;
                      pause = true;
                    });
                  } else if (pause) {
                    await player.resume();
                    setState(() {
                      play = true;
                      pause = false;
                    });
                  }
                } else {
                  await player.stop();
                  await player.play(AssetSource(audio3));
                  setState(() {
                    posicion = audio3;
                    play = true;
                    pause = false;
                  });
                }
              },
              child: Container(
                child: Image.asset(
                  "assets/imagenes/gato.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                String audio4 = "sonidos/lena.mp3";
                if (posicion == audio4) {
                  if (play) {
                    await player.pause();
                    setState(() {
                      play = false;
                      pause = true;
                    });
                  } else if (pause) {
                    await player.resume();
                    setState(() {
                      play = true;
                      pause = false;
                    });
                  }
                } else {
                  await player.stop();
                  await player.play(AssetSource(audio4));
                  setState(() {
                    posicion = audio4;
                    play = true;
                    pause = false;
                  });
                }
              },
              child: Container(
                child: Image.asset(
                  "assets/imagenes/lena.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                String audio5 = "sonidos/lluvia.mp3";
                if (posicion == audio5) {
                  if (play) {
                    await player.pause();
                    setState(() {
                      play = false;
                      pause = true;
                    });
                  } else if (pause) {
                    await player.resume();
                    setState(() {
                      play = true;
                      pause = false;
                    });
                  }
                } else {
                  await player.stop();
                  await player.play(AssetSource(audio5));
                  setState(() {
                    posicion = audio5;
                    play = true;
                    pause = false;
                  });
                }
              },
              child: Container(
                child: Image.asset(
                  "assets/imagenes/lluvia.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                String audio6 = "sonidos/nieve.mp3";
                if (posicion == audio6) {
                  if (play) {
                    await player.pause();
                    setState(() {
                      play = false;
                      pause = true;
                    });
                  } else if (pause) {
                    await player.resume();
                    setState(() {
                      play = true;
                      pause = false;
                    });
                  }
                } else {
                  await player.stop();
                  await player.play(AssetSource(audio6));
                  setState(() {
                    posicion = audio6;
                    play = true;
                    pause = false;
                  });
                }
              },
              child: Container(
                child: Image.asset(
                  "assets/imagenes/nieve.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                String audio7 = "sonidos/olas.mp3";
                if (posicion == audio7) {
                  if (play) {
                    await player.pause();
                    setState(() {
                      play = false;
                      pause = true;
                    });
                  } else if (pause) {
                    await player.resume();
                    setState(() {
                      play = true;
                      pause = false;
                    });
                  }
                } else {
                  await player.stop();
                  await player.play(AssetSource(audio7));
                  setState(() {
                    posicion = audio7;
                    play = true;
                    pause = false;
                  });
                }
              },
              child: Container(
                child: Image.asset(
                  "assets/imagenes/olas.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                String audio8 = "sonidos/pajaro.mp3";
                if (posicion == audio8) {
                  if (play) {
                    await player.pause();
                    setState(() {
                      play = false;
                      pause = true;
                    });
                  } else if (pause) {
                    await player.resume();
                    setState(() {
                      play = true;
                      pause = false;
                    });
                  }
                } else {
                  await player.stop();
                  await player.play(AssetSource(audio8));
                  setState(() {
                    posicion = audio8;
                    play = true;
                    pause = false;
                  });
                }
              },
              child: Container(
                child: Image.asset(
                  "assets/imagenes/pajaro.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                String audio9 = "sonidos/risa.mp3";
                if (posicion == audio9) {
                  if (play) {
                    await player.pause();
                    setState(() {
                      play = false;
                      pause = true;
                    });
                  } else if (pause) {
                    await player.resume();
                    setState(() {
                      play = true;
                      pause = false;
                    });
                  }
                } else {
                  await player.stop();
                  await player.play(AssetSource(audio9));
                  setState(() {
                    posicion = audio9;
                    play = true;
                    pause = false;
                  });
                }
              },
              child: Container(
                child: Image.asset(
                  "assets/imagenes/risa.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  // Navegar a la segunda pantalla cuando el botón sea presionado
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => lista()),
                  );
                },
                child: Text('Ir a la pantalla de sugerencias')),
          ],
        ),
      ),
    );
  }
}
