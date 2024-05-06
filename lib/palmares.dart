import 'package:flutter/material.dart';

class CampeonatoF1 {
  final String anyo;
  final String nombre;
  final String pais;
  final String equipo;

  CampeonatoF1(this.anyo, this.nombre, this.pais, this.equipo);
}

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

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Palmarés de la Fórmula 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Palmarés de la Fórmula 1'),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue[200]!, Colors.blue[900]!],
            ),
          ),
          child: ListView.builder(
            itemCount: palmares.length,
            itemBuilder: (context, index) {
              final campeonato = palmares[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text(
                      '${campeonato.anyo} - ${campeonato.nombre}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${campeonato.pais}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Equipo: ${campeonato.equipo}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
