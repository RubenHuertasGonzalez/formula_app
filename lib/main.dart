import 'dart:ui';
import 'package:flutter/material.dart';
import 'game.dart';

void main() {
  runApp(const MyApp());
}

class Pilot {
  final String number;
  final String name;
  final String team;
  final int trophies;
  final String carImage;
  final String flagImage;
  final int age;
  final String nationality;
  final String pilotImage;

  Pilot(this.number, this.name, this.team, this.trophies, this.carImage, this.flagImage, this.age, this.nationality, this.pilotImage);
}

class Circuit {
  final String name;
  final String country;
  final String longitude;
  final String image;
  final String curves;
  final String record;

  Circuit(this.name, this.country, this.longitude, this.image, this.curves, this.record);
}

class CampeonatoF1 {
  final String year;
  final String name;
  final String nationality;
  final String team;

  CampeonatoF1(this.year, this.name, this.nationality, this.team);
}

final List<Pilot> _pilots = [
  Pilot('1','Max Verstappen', 'Red Bull Racing', 3, '../assetsEscuderia/redbull.png', '../assetsBandera/netherlands_flag.png', 23, 'Holandés', '../assetsPiloto/max_verstappen.png'),
  Pilot('2','Logan Sargeant', 'Williams', 0, '../assetsEscuderia/williams.png', '../assetsBandera/usa_flag.png', 21, 'Americano', '../assetsPiloto/logan_sargeant.png'), 
  Pilot('3','Daniel Riciardo', 'AlphaTauri', 0, '../assetsEscuderia/alphatauri.png', '../assetsBandera/australia_flag.png', 32, 'Australiano', '../assetsPiloto/daniel_ricciardo.png'), 
  Pilot('4','Lando Norris', 'McLaren', 0, '../assetsEscuderia/mclaren.png', '../assetsBandera/uk_flag.png', 22, 'Británico', '../assetsPiloto/lando_norris.png'), 
  Pilot('10','Pierre Gasly', 'Alpine', 0, '../assetsEscuderia/alpine.png', '../assetsBandera/france_flag.png', 26, 'Francés', '../assetsPiloto/pierre_gasly.png'), 
  Pilot('11','Sergio Pérez', 'Red Bull Racing', 0, '../assetsEscuderia/redbull.png', '../assetsBandera/mexico_flag.png', 31, 'Mejicano', '../assetsPiloto/sergio_perez.png'), 
  Pilot('14','Fernando Alonso', 'Aston Martin', 2, '../assetsEscuderia/aston.png', '../assetsBandera/spain_flag.png', 40, 'Español', '../assetsPiloto/fernando_alonso.png'), 
  Pilot('16','Charles Leclerc', 'Ferrari', 0, '../assetsEscuderia/ferrari.png', '../assetsBandera/monaco_flag.png', 24, 'Monegasco', '../assetsPiloto/charles_leclerc.png'), 
  Pilot('18','Lance Stroll', 'Aston Martin', 0, '../assetsEscuderia/aston.png', '../assetsBandera/canada_flag.png', 23, 'Canadiense', '../assetsPiloto/lance_stroll.png'),
  Pilot('20','Kevin Magnussen', 'Haas F1 Team', 0, '../assetsEscuderia/haas.png', '../assetsBandera/denmark_flag.png', 29, 'Danés', '../assetsPiloto/kevin_magnussen.png'), 
  Pilot('22','Yuki Tsunoda', 'AlphaTauri', 0, '../assetsEscuderia/alphatauri.png', '../assetsBandera/japan_flag.png', 21, 'Japonés', '../assetsPiloto/yuki_tsunoda.png'), 
  Pilot('23','Alexander Albon', 'Williams', 0, '../assetsEscuderia/williams.png', '../assetsBandera/thailand_flag.png', 25, 'Tailandés', '../assetsPiloto/alexander_albon.png'),
  Pilot('24','Zhou Guanyu', 'Kick Sauber', 0, '../assetsEscuderia/kick.png', '../assetsBandera/china_flag.png', 22, 'Chino', '../assetsPiloto/guanyu_zhou.png'), 
  Pilot('27','Nico Hulkenberg', 'Haas F1 Team', 0, '../assetsEscuderia/haas.png', '../assetsBandera/germany_flag.png', 33, 'Alemán', '../assetsPiloto/nico_hulkenberg.png'), 
  Pilot('31','Esteban Ocon', 'Alpine', 0, '../assetsEscuderia/alpine.png', '../assetsBandera/france_flag.png', 25, 'Francés', '../assetsPiloto/esteban_ocon.png'), 
  Pilot('44','Lewis Hamilton', 'Mercedes', 7, '../assetsEscuderia/mercedes.png', '../assetsBandera/uk_flag.png', 37, 'Británico', '../assetsPiloto/lewis_hamilton.png'), 
  Pilot('55','Carlos Sainz', 'Ferrari', 0, '../assetsEscuderia/ferrari.png', '../assetsBandera/spain_flag.png', 27, 'Español', '../assetsPiloto/carlos_sainz.png'), 
  Pilot('63','George Russell', 'Mercedes', 0, '../assetsEscuderia/mercedes.png', '../assetsBandera/uk_flag.png', 24, 'Británico', '../assetsPiloto/george_russell.png'), 
  Pilot('77','Valtteri Bottas', 'Kick Sauber', 0, '../assetsEscuderia/kick.png', '../assetsBandera/finland_flag.png', 32, 'Finlandés', '../assetsPiloto/valtteri_bottas.png'),
  Pilot('81','Oscar Piastri', 'McLaren', 0, '../assetsEscuderia/mclaren.png', '../assetsBandera/australia_flag.png', 21, 'Australiano', '../assetsPiloto/oscar_piastri.png'), 
];

final List<Circuit> _circuits = [
  Circuit('Sakhir', 'Baréin', '6299 metros','../assetsCircuito/sakhir.png','15 (6 izda | 9 dcha)','Pedro de la Rosa - 1:31.447 - Año: (2005)'),
  Circuit('Jeddah International Street Circuit', 'Arabia Saudí', '5154 metros','../assetsCircuito/jeddah.png','27 (16 izda | 11 dcha)','Lewis Hamilton - 1:30.734 - Año: (2021)'),
  Circuit('Albert Park', 'Australia', '5303 metros','../assetsCircuito/albert_park.png','14 (6 izda | 8 dcha)','Sergio Pérez - 1:20.235 - Año: (2023)'),
  Circuit('Suzuka', 'Japón', '5807 metros','../assetsCircuito/suzuka.png','18 (9 izda | 9 dcha)','Lewis Hamilton - 1:30.983 - Año: (2019)'),
  Circuit('Shanghai', 'China', '5451 metros','../assetsCircuito/shanghai.png','16 (6 izda | 10 dcha)','Michael Schumacher - 1:32.238 - Año: (2004)'),
  Circuit('Hard Rock stadium Circuit', 'Miami', '5412 metros','../assetsCircuito/hard_rock.png','19 (11 izda | 8 dcha)','Max Verstappen - 1:29.708 - Año: (2023)'),
  Circuit('Imola', 'Emilia Romagna', '4909 metros','../assetsCircuito/imola.png','10 (9 izda | 10 dcha)','Lewis Hamilton - 01:15.484 - Año: (2020)'),
  Circuit('Montecarlo', 'Mónaco', '3340 metros','../assetsCircuito/montecarlo.png','19 (9 izda | 10 dcha)','Lewis Hamilton - 1:12.909 - Año: (2021)'),
  Circuit('Gilles Villeneuve', 'Canadá', '4361 metros','../assetsCircuito/gilles_villeneuve.png','12 (5 izda | 7 dcha)','Valtteri Bottas - 1:13.078 - Año: (2019)'),
  Circuit('Montmelo', 'España', '4627 metros','../assetsCircuito/montmelo.png','16 (8 izda | 8 dcha)','Max Verstappen - 1:16.330 - Año: (2023)'),
  Circuit('Red Bull Ring', 'Austria', '4326 metros','../assetsCircuito/redbull_ring.png','10 (3 izda | 7 dcha)','Carlos Sainz - 1:05.619 - Año: (2020)'),
  Circuit('Silverstone', 'Gran Bretaña', '5141 metros','../assetsCircuito/silverstone.png','18 (8 izda | 10 dcha)','Max Verstappen - 1:27.097 - Año: (2020)'),
  Circuit('Hungaroring', 'Hungría', '4381 metros','../assetsCircuito/hungaroring.png','14 (6 izda | 8 dcha)','Lewis Hamilton - 1:16.627 - Año: (2020)'),
  Circuit('Spa-Francorchamps', 'Bélgica', '7004 metros','../assetsCircuito/spa_francorchamps.png','19 (9 izda | 10 dcha)','Valtteri Bottas - 1:46.286 - Año: (2018)'),
  Circuit('Zandvoort', 'Países Bajos', '4307 metros','../assetsCircuito/zandvoort.png','14 (4 izda | 10 dcha)','Lewis Hamilton - 1:11.097 - Año: (2021)'),
  Circuit('Monza', 'Italia', '5793 metros','../assetsCircuito/monza.png','11 (4 izda | 7 dcha)','Barrichello - 1:21.046 - Año: (2004)'),
  Circuit('Baku City Circuit', 'Azerbaiyán', '6003 metros','../assetsCircuito/baku.png','20 (12 izda | 8 dcha)','Charles Leclerc - 1:43.009 - Año: (2019)'),
  Circuit('Marina Bay', 'Singapur', '4928 metros','../assetsCircuito/marina.png','19 (13 izda | 10 dcha)','Lewis Hamilton - 1:35.867 - Año: (2023)'),
  Circuit('Las Americas', 'Estados Unidos', '5516 metros','../assetsCircuito/americas.png','20 (14 izda | 6 dcha)','Charles Leclerc - 1:36.169 - Año: (2019)'),
  Circuit('Hermanos Rodriguez', 'México', '4304 metros','../assetsCircuito/rodriguez.png','16 (7 izda | 9 dcha)','Valtteri Bottas - 1:17.774 - Año: (2021)'),
  Circuit('Interlagos', 'Sao Paulo', '4309 metros','../assetsCircuito/interlagos.png','15 (9 izda | 6 dcha)','Valtteri Bottas - 1:10.540 - Año: (2018)'),
  Circuit('Las Vegas', 'Las Vegas', '3650 metros','../assetsCircuito/vegas.png','17 (11 izda | 6 dcha)','Oscar Piastri - 1:35.490 - Año: (2023)'),
  Circuit('Losail', 'Qatar', '5380 metros','../assetsCircuito/losail.png','16 (6 izda | 10 dcha)','Max Verstappen - 1:24.319 - Año: (2021)'),
  Circuit('Abu Dhabi', 'Emiratos Árabes', '5281 metros','../assetsCircuito/abu_dhabi.png','21 (12 izda | 9 dcha)','Max Verstappen - 1:26:103 - Año: (2021)')
];

List<CampeonatoF1> palmares = [
  CampeonatoF1('2023', 'Max Verstappen', 'Países Bajos', 'Red Bull'),
  CampeonatoF1('2022', 'Max Verstappen', 'Países Bajos', 'Red Bull'),
  CampeonatoF1('2021', 'Max Verstappen', 'Países Bajos', 'Red Bull'),
  CampeonatoF1('2020', 'Lewis Hamilton', 'Gran Bretaña', 'Mercedes'),
  CampeonatoF1('2019', 'Lewis Hamilton', 'Gran Bretaña', 'Mercedes'),
  CampeonatoF1('2018', 'Lewis Hamilton', 'Gran Bretaña', 'Mercedes'),
  CampeonatoF1('2017', 'Lewis Hamilton', 'Gran Bretaña', 'Mercedes'),
  CampeonatoF1('2016', 'Nico Rosberg', 'Alemania', 'Mercedes'),
  CampeonatoF1('2015', 'Lewis Hamilton', 'Gran Bretaña', 'Mercedes'),
  CampeonatoF1('2014', 'Lewis Hamilton', 'Gran Bretaña', 'Mercedes'),
  CampeonatoF1('2013', 'Sebastian Vettel', 'Alemania', 'Red Bull Renault'),
  CampeonatoF1('2012', 'Sebastian Vettel', 'Alemania', 'Red Bull Renault'),
  CampeonatoF1('2011', 'Sebastian Vettel', 'Alemania', 'Red Bull Renault'),
  CampeonatoF1('2010', 'Sebastian Vettel', 'Alemania', 'Red Bull Renault'),
  CampeonatoF1('2009', 'Jenson Button', 'Gran Bretaña', 'BrawnGP'),
  CampeonatoF1('2008', 'Lewis Hamilton', 'Gran Bretaña', 'McLaren'),
  CampeonatoF1('2007', 'Kimi Raikkonen', 'Finlandia', 'Ferrari'),
  CampeonatoF1('2006', 'Fernando Alonso', 'España', 'Renault'),
  CampeonatoF1('2005', 'Fernando Alonso', 'España', 'Renault'),
  CampeonatoF1('2004', 'M. Schumacher', 'Alemania', 'Ferrari'),
  CampeonatoF1('2003', 'M. Schumacher', 'Alemania', 'Ferrari'),
  CampeonatoF1('2002', 'M. Schumacher', 'Alemania', 'Ferrari'),
  CampeonatoF1('2001', 'M. Schumacher', 'Alemania', 'Ferrari'),
  CampeonatoF1('2000', 'M. Schumacher', 'Alemania', 'Ferrari'),
  CampeonatoF1('1999', 'M. Hakkinen', 'Finlandia', 'Ferrari'),
  CampeonatoF1('1998', 'M. Hakkinen', 'Finlandia', 'McLaren Mercedes'),
  CampeonatoF1('1997', 'J. Villeneuve', 'Canadá', 'Williams Renault'),
  CampeonatoF1('1996', 'D. Hill', 'Gran Bretaña', 'Williams Renault'),
  CampeonatoF1('1995', 'M. Schumacher', 'Alemania', 'Benetton Renault'),
  CampeonatoF1('1994', 'M. Schumacher', 'Alemania', 'Benetton Ford'),
  CampeonatoF1('1993', 'A. Prost', 'Francia', 'Williams Renault'),
  CampeonatoF1('1992', 'N. Mansell', 'Gran Bretaña', 'Williams Renault'),
  CampeonatoF1('1991', 'A. Senna', 'Brasil', 'McLaren Honda'),
  CampeonatoF1('1990', 'A. Senna', 'Brasil', 'McLaren Honda'),
  CampeonatoF1('1989', 'A. Prost', 'Francia', 'McLaren Honda'),
  CampeonatoF1('1988', 'A. Senna', 'Brasil', 'McLaren Honda'),
  CampeonatoF1('1987', 'N. Piquet', 'Brasil', 'Williams Honda'),
  CampeonatoF1('1986', 'A. Prost', 'Francia', 'Williams Honda'),
  CampeonatoF1('1985', 'A. Prost', 'Francia', 'McLaren Porsche'),
  CampeonatoF1('1984', 'N. Lauda', 'Austria', 'McLaren Porsche'),
  CampeonatoF1('1983', 'N. Piquet', 'Brasil', 'Ferrari'),
  CampeonatoF1('1982', 'K. Rosberg', 'Finlandia', 'Ferrari'),
  CampeonatoF1('1981', 'N. Piquet', 'Brasil', 'Williams Ford'),
  CampeonatoF1('1980', 'A. Jones', 'Australia', 'Williams Ford'),
  CampeonatoF1('1979', 'J. Scheckter', 'Sudáfrica', 'Ferrari'),
  CampeonatoF1('1978', 'M. Andretti', 'Estados Unidos', 'Lotus Ford'),
  CampeonatoF1('1977', 'N. Lauda', 'Austria', 'Ferrari'),
  CampeonatoF1('1976', 'J. Hunt', 'Gran Bretaña', 'Ferrari'),
  CampeonatoF1('1975', 'N. Lauda', 'Austria', 'Ferrari'),
  CampeonatoF1('1974', 'E. Fittipaldi', 'Brasil', 'McLaren Ford'),
  CampeonatoF1('1973', 'J. Stewart', 'Gran Bretaña', 'Lotus Ford'),
  CampeonatoF1('1972', 'E. Fittipaldi', 'Brasil', 'Lotus Ford'),
  CampeonatoF1('1971', 'J. Stewart', 'Gran Bretaña', 'Tyrrell Ford'),
  CampeonatoF1('1970', 'J. Rindt', 'Austria', 'Lotus Ford'),
  CampeonatoF1('1969', 'J. Stewart', 'Gran Bretaña', 'Matra Ford'),
  CampeonatoF1('1968', 'G. Hill', 'Gran Bretaña', 'Lotus Ford'),
  CampeonatoF1('1967', 'D. Hulme', 'Nueva Zelanda', 'Brabham Repco'),
  CampeonatoF1('1966', 'J. Brabham', 'Australia', 'Brabham Repco'),
  CampeonatoF1('1965', 'J. Clark', 'Gran Bretaña', 'Lotus Climax'),
  CampeonatoF1('1964', 'J. Surtees', 'Gran Bretaña', 'Ferrari'),
  CampeonatoF1('1963', 'J. Clark', 'Gran Bretaña', 'Lotus Climax'),
  CampeonatoF1('1962', 'G. Hill', 'Gran Bretaña', 'BRM'),
  CampeonatoF1('1961', 'P. Hill', 'Estados Unidos', 'Ferrari'),
  CampeonatoF1('1960', 'J. Brabham', 'Australia', 'Cooper Climax'),
  CampeonatoF1('1959', 'J. Brabham', 'Australia', 'Cooper Climax'),
  CampeonatoF1('1958', 'M. Hawthorn', 'Gran Bretaña', 'Vanwall'),
  CampeonatoF1('1957', 'J. M. Fangio', 'Argentina', 'Maserati'),
  CampeonatoF1('1956', 'J. M. Fangio', 'Argentina', 'Lancia/Ferrari'),
  CampeonatoF1('1955', 'J. M. Fangio', 'Argentina', 'Mercedes'),
  CampeonatoF1('1954', 'J. M. Fangio', 'Argentina', 'Mercedes/Maserati'),
  CampeonatoF1('1953', 'A. Ascari', 'Italia', 'Ferrari'),
  CampeonatoF1('1952', 'A. Ascari', 'Italia', 'Ferrari'),
  CampeonatoF1('1951', 'J. M. Fangio', 'Argentina', 'Alfa Romeo'),
  CampeonatoF1('1950', 'N. Farina', 'Italia', 'Alfa Romeo'),
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP FORMULA 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
          foregroundColor: Colors.black,
        ),
      ),
      home: const RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  String _searchText = '';
  bool _showPilots = true; // Variable to control whether to show pilots or circuits
  bool _showPalmares = false;

@override
Widget build(BuildContext context) {
  List<dynamic> dataToShow = _showPilots ? _pilots : _circuits;

  if (_showPalmares) {
    return Scaffold(
      appBar: AppBar(
        title: _buildAppBarTitle(), // Aquí se llama a la función para construir el título dinámico
        actions: [
          _buildMenu(),
        ],
      ),
      body: _buildPalmares(), // Se llama a la función para construir el cuerpo de palmares
    );
  } else {
    return Scaffold(
      appBar: AppBar(
        title: _buildAppBarTitle(), // Aquí se llama a la función para construir el título dinámico
        actions: [
          _buildMenu(),
        ],
      ),
      body: _buildBody(), // Se llama a la función para construir el cuerpo según el estado
    );
  }
}

// Función para construir el título de la AppBar dinámicamente
Widget _buildAppBarTitle() {
  if (_showPilots) {
    return const Text('PILOTOS');
  } else if (_showPalmares) {
    return const Text('PALMARES');
  } else {
    return const Text('CIRCUITOS');
  }
}

// Función para construir el cuerpo de la página según el estado
Widget _buildBody() {
  List<dynamic> dataToShow = _showPilots ? _pilots : _circuits;

  List<dynamic> filteredData = dataToShow.where((item) {
    if (item is Pilot) {
      return item.name.toLowerCase().contains(_searchText) ||
          item.team.toLowerCase().contains(_searchText);
    } else if (item is Circuit) {
      return item.name.toLowerCase().contains(_searchText) ||
          item.country.toLowerCase().contains(_searchText);
    }
    return false;
  }).toList();

  return Column(
    children: [
      _buildSearchBar(),
      Expanded(
        child: ListView.builder(
          itemCount: filteredData.length,
          itemBuilder: (context, index) {
            if (filteredData[index] is Pilot) {
              return _buildPilotListItem(filteredData[index]);
            } else if (filteredData[index] is Circuit) {
              return _buildCircuitListItem(filteredData[index]);
            }
            return SizedBox.shrink();
          },
        ),
      ),
    ],
  );
}



  Widget _buildSearchBar() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: _showPilots ? 'Buscar por nombre o escudería' : 'Buscar por nombre o país',
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: const Icon(Icons.search, color: Colors.grey),
          border: InputBorder.none,
        ),
        onChanged: (value) {
          setState(() {
            _searchText = value.toLowerCase();
          });
        },
      ),
    ),
  );
}


  Widget _buildMenu() {
    return PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(
          child: ListTile(
            title: const Text('PILOTOS'),
            onTap: () {
              setState(() {
                _showPilots = true;
                _showPalmares = false; 
              });
              Navigator.of(context).pop();
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            title: const Text('CIRCUITOS'),
            onTap: () {
              setState(() {
                _showPilots = false;
                _showPalmares = false; 
              });
              Navigator.of(context).pop();
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            title: const Text('PALMARÉS'),
            onTap: () {
              setState(() {
                _showPalmares = true;
                _showPilots = false; 
              });
              Navigator.of(context).pop(); // Close the menu
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            title: const Text('JUEGO'),
            onTap: () {
              Navigator.of(context).pop(); // Close the menu
              Navigator.push( // Navigate to the game screen
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
        ),
      ],
      child: const Icon(Icons.menu),
    );
  }

  Widget _buildPilotListItem(Pilot pilot) {
    return ListTile(
      onTap: () {
        _showPilotDetailDialog(pilot);
      },
      title: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Image.asset(
                  pilot.flagImage,
                  width: 50,
                  height: 30,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pilot.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  pilot.team,
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      trailing: Image.asset(
        pilot.carImage,
        width: 200,
        height: 200,
        alignment: Alignment.center,
      ),
      leading: Text(
        pilot.number,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildCircuitListItem(Circuit circuit) {
  return Card(
    margin: const EdgeInsets.all(8.0),
    elevation: 4,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            SizedBox(
              width: 550,
              height: 320,
              child: Image.asset(
                circuit.image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    circuit.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'País: ${circuit.country}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Longitud: ${circuit.longitude}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Curvas: ${circuit.curves}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Récord: ${circuit.record}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

    void _showPilotDetailDialog(Pilot pilot) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: SizedBox(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    pilot.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                    pilot.pilotImage,
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Edad: ${pilot.age}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Nacionalidad: ${pilot.nationality}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Equipo: ${pilot.team}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Trofeos: ${pilot.trophies}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Cerrar',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }


  void _showCircuitDetailDialog(Circuit circuit) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(circuit.name),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                circuit.image,
                width: 200,
                height: 200,
              ),
              Text('País: ${circuit.country}'),
              Text('Longitud: ${circuit.longitude} km'),
              Text('Curvas: ${circuit.curves}'),
              Text('Record: ${circuit.record}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }
}

Widget _buildPalmares() {
  return Expanded(
    child: AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: ListView.builder(
        itemCount: palmares.length,
        itemBuilder: (context, index) {
          final campeonato = palmares[index];
          return Padding(
            key: ValueKey<String>('palmares_$index'),
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                title: Text(
                  campeonato.year,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  '${campeonato.name} - ${campeonato.team}',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
}


