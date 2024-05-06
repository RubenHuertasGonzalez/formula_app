import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formula 1 Game',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JUEGO FORMULA 1'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ajusta el tamaño y el estilo del primer texto
            Text(
              '¡Bienvenido al Juego de Formula 1!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Puedes ajustar el tamaño, el peso de la fuente y el color según tus preferencias
            ),
            SizedBox(height: 20), // Agrega un espacio entre los dos textos
            // Ajusta el tamaño y el estilo del segundo texto
            Text(
              'Selecciona un equipo y un piloto para empezar a jugar:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal), // Puedes ajustar el tamaño y el peso de la fuente según tus preferencias
            ),
            SizedBox(height: 20), // Agrega un espacio adicional si es necesario
            TeamSelection(), // Mantén el widget existente para la selección de equipos y pilotos
          ],
        ),
      ),
    );
  }
}

class TeamSelection extends StatefulWidget {
  const TeamSelection({Key? key}) : super(key: key);

  @override
  _TeamSelectionState createState() => _TeamSelectionState();
}

class _TeamSelectionState extends State<TeamSelection> {
  String _selectedTeamImage = '';
  String _selectedPilotImage = '';
  String _selectedTeamName = '';
  String _selectedPilotName = '';

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: List.generate(
        _teamImages.length,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _selectedTeamImage = _teamImages[index];
                _selectedTeamName = _getTeamName(_selectedTeamImage);
                _showPilotSelectionDialog(context);
              });
            },
            child: Column(
              children: [
                Image.asset(
                  _teamImages[index],
                  width: 550,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                Text(
                  _getTeamName(_teamImages[index]),
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showPilotSelectionDialog(BuildContext context) async {
    var pilots = _getPilotsForTeam(_selectedTeamImage);
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text('Selecciona un piloto:'),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: pilots.map((pilot) => GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedPilotImage = pilot;
                            _selectedPilotName = _getPilotName(pilot);
                          });
                        },
                        child: Column(
                          children: [
                            Opacity(
                              opacity: _selectedPilotImage == pilot ? 0.5 : 1.0,
                              child: Image.asset(
                                pilot,
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              _getPilotName(pilot),
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )).toList(),
                    ),
                    if (_selectedPilotImage.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: TextButton(
                          child: const Text('JUGAR'),
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GamePage(selectedTeamImage: _selectedTeamImage, selectedPilotImage: _selectedPilotImage,),
                              ),
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  List<String> _getPilotsForTeam(String team) {
    if (team == '../assetsEscuderia/alphatauri.png') {
      return [
        '../assetsPiloto/yuki_tsunoda.png',
        '../assetsPiloto/daniel_ricciardo.png',
      ];
    }
    if (team == '../assetsEscuderia/alpine.png') {
      return [
        '../assetsPiloto/esteban_ocon.png',
        '../assetsPiloto/pierre_gasly.png',
      ];
    }
    if (team == '../assetsEscuderia/aston.png') {
      return [
        '../assetsPiloto/fernando_alonso.png',
        '../assetsPiloto/lance_stroll.png',
      ];
    }
    if (team == '../assetsEscuderia/ferrari.png') {
      return [
        '../assetsPiloto/carlos_sainz.png',
        '../assetsPiloto/charles_leclerc.png',
      ];
    }
    if (team == '../assetsEscuderia/haas.png') {
      return [
        '../assetsPiloto/kevin_magnussen.png',
        '../assetsPiloto/nico_hulkenberg.png',
      ];
    }
    if (team == '../assetsEscuderia/kick.png') {
      return [
        '../assetsPiloto/guanyu_zhou.png',
        '../assetsPiloto/valtteri_bottas.png',
      ];
    }
    if (team == '../assetsEscuderia/mclaren.png') {
      return [
        '../assetsPiloto/lando_norris.png',
        '../assetsPiloto/oscar_piastri.png',
      ];
    }
    if (team == '../assetsEscuderia/mercedes.png') {
      return [
        '../assetsPiloto/george_russell.png',
        '../assetsPiloto/lewis_hamilton.png',
      ];
    }
    if (team == '../assetsEscuderia/redbull.png') {
      return [
        '../assetsPiloto/max_verstappen.png',
        '../assetsPiloto/sergio_perez.png',
      ];
    }
    if (team == '../assetsEscuderia/williams.png') {
      return [
        '../assetsPiloto/alexander_albon.png',
        '../assetsPiloto/logan_sargeant.png',
      ];
    }
    return [];
  }

  String _getTeamName(String teamImage) {
    if (teamImage == '../assetsEscuderia/alphatauri.png') {
      return 'Alpha Tauri';
    }
    if (teamImage == '../assetsEscuderia/alpine.png') {
      return 'Alpine';
    }
    if (teamImage == '../assetsEscuderia/aston.png') {
      return 'Aston Martin';
    }
    if (teamImage == '../assetsEscuderia/ferrari.png') {
      return 'Ferrari';
    }
    if (teamImage == '../assetsEscuderia/haas.png') {
      return 'Haas';
    }
    if (teamImage == '../assetsEscuderia/kick.png') {
      return 'Kick';
    }
    if (teamImage == '../assetsEscuderia/mclaren.png') {
      return 'McLaren';
    }
    if (teamImage == '../assetsEscuderia/mercedes.png') {
      return 'Mercedes';
    }
    if (teamImage == '../assetsEscuderia/redbull.png') {
      return 'Red Bull';
    }
    if (teamImage == '../assetsEscuderia/williams.png') {
      return 'Williams';
    }
    return '';
  }

  String _getPilotName(String pilotImage) {
    if (pilotImage == '../assetsPiloto/yuki_tsunoda.png') {
      return 'Yuki Tsunoda';
    }
    if (pilotImage == '../assetsPiloto/daniel_ricciardo.png') {
      return 'Daniel Ricciardo';
    }
    if (pilotImage == '../assetsPiloto/esteban_ocon.png') {
      return 'Esteban Ocon';
    }
    if (pilotImage == '../assetsPiloto/pierre_gasly.png') {
      return 'Pierre Gasly';
    }
    if (pilotImage == '../assetsPiloto/fernando_alonso.png') {
      return 'Fernando Alonso';
    }
    if (pilotImage == '../assetsPiloto/lance_stroll.png') {
      return 'Lance Stroll';
    }
    if (pilotImage == '../assetsPiloto/carlos_sainz.png') {
      return 'Carlos Sainz';
    }
    if (pilotImage == '../assetsPiloto/charles_leclerc.png') {
      return 'Charles Leclerc';
    }
    if (pilotImage == '../assetsPiloto/kevin_magnussen.png') {
      return 'Kevin Magnussen';
    }
    if (pilotImage == '../assetsPiloto/nico_hulkenberg.png') {
      return 'Nico Hulkenberg';
    }
    if (pilotImage == '../assetsPiloto/guanyu_zhou.png') {
      return 'Guanyu Zhou';
    }
    if (pilotImage == '../assetsPiloto/valtteri_bottas.png') {
      return 'Valtteri Bottas';
    }
    if (pilotImage == '../assetsPiloto/lando_norris.png') {
      return 'Lando Norris';
    }
    if (pilotImage == '../assetsPiloto/oscar_piastri.png') {
      return 'Oscar Piastri';
    }
    if (pilotImage == '../assetsPiloto/george_russell.png') {
      return 'George Russell';
    }
    if (pilotImage == '../assetsPiloto/lewis_hamilton.png') {
      return 'Lewis Hamilton';
    }
    if (pilotImage == '../assetsPiloto/max_verstappen.png') {
      return 'Max Verstappen';
    }
    if (pilotImage == '../assetsPiloto/sergio_perez.png') {
      return 'Sergio Perez';
    }
    if (pilotImage == '../assetsPiloto/alexander_albon.png') {
      return 'Alexander Albon';
    }
    if (pilotImage == '../assetsPiloto/logan_sargeant.png') {
      return 'Logan Sargeant';
    }
    return '';
  }

  final List<String> _teamImages = [
    '../assetsEscuderia/alphatauri.png',
    '../assetsEscuderia/alpine.png',
    '../assetsEscuderia/aston.png',
    '../assetsEscuderia/ferrari.png',
    '../assetsEscuderia/haas.png',
    '../assetsEscuderia/kick.png',
    '../assetsEscuderia/mclaren.png',
    '../assetsEscuderia/mercedes.png',
    '../assetsEscuderia/redbull.png',
    '../assetsEscuderia/williams.png',
  ];
}

class GamePage extends StatefulWidget {
  final String selectedTeamImage;
  final String selectedPilotImage; 

  const GamePage({Key? key, required this.selectedTeamImage, required this.selectedPilotImage}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  static const double carWidth = 400.0; // Ancho del coche
  static const double carHeight = 100.0; // Alto del coche
  static const double gravity = 1.6;
  late double carPosition;
  double carVelocity = 0.0; // Inicializar la velocidad
  late bool canJump;
  List<double> obstaclePositions = [];
  late Timer timer;
  static const double minObstacleSpacing = 3 * carWidth; // Separación mínima entre obstáculos
  int score = 0; // Variable para almacenar la puntuación
  static const double baseSpeed = 14.0; // Velocidad base
  double obstacleSpeed = baseSpeed; // Velocidad de los obstáculos
  static const int maxSpeedScore = 3000; // Puntuación máxima para incrementar la velocidad

  @override
  void initState() {
    super.initState();
    carPosition = 0.0;
    canJump = true;
    timer = Timer.periodic(const Duration(milliseconds: 20), (Timer t) => moveObjects());
  }

  void moveObjects() {
    setState(() {
      carVelocity += gravity;
      carPosition += carVelocity;

      if (carPosition >= 0) {
        carPosition = 0;
        carVelocity = 0;
        canJump = true;
      }

      // Incrementa la puntuación cada vez que se avanza un fotograma
      score++;

      // Incrementa la velocidad cada 300 puntos hasta que la puntuación alcance los 3000
      if (score % 500 == 0 && score <= maxSpeedScore) {
        obstacleSpeed += 1.0;
      }

      // Genera un nuevo obstáculo aleatorio si se cumplen ciertas condiciones
      if (obstaclePositions.isEmpty || obstaclePositions.last < MediaQuery.of(context).size.width - minObstacleSpacing) {
        double lastObstaclePosition = obstaclePositions.isEmpty ? MediaQuery.of(context).size.width : obstaclePositions.last;
        double minSpacing = minObstacleSpacing; // Separación mínima entre obstáculos
        double maxSpacing = MediaQuery.of(context).size.width / 2; // Separación máxima entre obstáculos
        double newObstaclePosition = lastObstaclePosition + Random().nextDouble() * (maxSpacing - minSpacing) + minSpacing;
        obstaclePositions.add(newObstaclePosition);
      }

      // Mueve los obstáculos hacia la izquierda
      for (int i = 0; i < obstaclePositions.length; i++) {
        obstaclePositions[i] -= obstacleSpeed; // Usa la velocidad de los obstáculos

        if (obstaclePositions[i] + 50 > MediaQuery.of(context).size.width / 4 - carWidth / 2 &&
            obstaclePositions[i] < MediaQuery.of(context).size.width / 4 + carWidth / 2 &&
            carPosition + carHeight > 0) {
          timer.cancel();
          showDialog(
            barrierDismissible: false, 
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('¡Has perdido!'),
              content: Text('Puntuación: $score'),
              actions: [
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: const Text('Volver al inicio'),
              ),
            ],
          ),
        );
      }
    }
  });
}

  void jump() {
    if (canJump) {
      setState(() {
        carVelocity = -40;
        canJump = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: jump,
        child: Stack(
          children: [
            Image.asset(
              '../assetsJuego/circuitoFondo.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.75 - carHeight / 2 + carPosition,
              left: MediaQuery.of(context).size.width / 4 - carWidth / 2,
              child: Container(
                width: carWidth,
                height: carHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.selectedTeamImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            for (double obstaclePosition in obstaclePositions)
              Positioned(
                top: MediaQuery.of(context).size.height * 0.6, // Ajusta este valor para posicionar los conos más arriba
                left: obstaclePosition,
                child: Image.asset(
                  '../assetsJuego/cono.png',
                  width: 100,
                  height: 300,
                ),
              ),
            Positioned(
              top: 20, // Ajusta la posición vertical
              right: 20, // Ajusta la posición horizontal
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5), // Fondo negro semitransparente
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Muestra la imagen del piloto al lado de la puntuación
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        widget.selectedPilotImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'PUNTUACIÓN: $score',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}





