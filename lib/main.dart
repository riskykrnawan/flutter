import 'dart:convert';

import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class Movie {
  final String imdbId; 
  final String poster; 
  final String title; 
  final String year; 

  Movie({required this.imdbId, required this.title, required this.poster, required this.year}); 

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      imdbId: json["imdbID"], 
      poster: json["Poster"], 
      title: json["Title"], 
      year: json["Year"]
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/one': (context) => const PageOne(),
        '/api': (context) => API(),
      }
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Masuk'),
          onPressed: () {
            Navigator.pushNamed(context, '/one');
          }
        ),
      ),
    );
  }
}


class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/my-bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
              child: SizedBox(
                width: double.infinity,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      SizedBox(
                        height: 80.0,
                      ),
                      CircleAvatar(
                        radius: 65.0,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/profile.jpg'
                        ),
                        radius: 63.0,
                      ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Risky Kurniawan",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "2009106050",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                    ],
                  ),
                ),
              )
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              width: 170,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  primary: Color.fromARGB(255, 0, 9, 66),
                ), onPressed: () { Navigator.pushNamed(context, '/api'); },
                child:  Container(
                    height: 25,
                    alignment: Alignment.center,
                    child: const Text("API"),
                  ),
                )
            ),
            Text("Klik Tombol Untuk Lihat API")
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 0, 9, 66),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: const <Widget>[
        SizedBox(width: 10)
      ],
    );
  }
}


class API extends StatefulWidget {
  @override 
  _API createState() => _API(); 
}

class _API extends State<API> {
  List<Movie> _movies = <Movie>[]; 

  @override
  void initState() {
    super.initState(); 
    _storeAllMovie(); 
  }

  void _storeAllMovie() async {
    final movies = await _fetchAllMovies();
    setState(() {
      _movies = movies; 
    });
  }

  Future<List<Movie>> _fetchAllMovies() async {    
    final response = 
      await http.get(Uri.parse('http://www.omdbapi.com/?apikey=ff9f2726&s=Avengers'));

    final result = jsonDecode(response.body);
    Iterable list = result["Search"];

    return (response.statusCode == 200) 
      ? list.map((movie) => Movie.fromJson(movie)).toList()
        : throw Exception("Failed to load movies!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tugas 2",
      home: Scaffold(
        appBar: buildAppBar(context),
        body: MoviesWidget(movies: _movies)
      )
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 0, 9, 66),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: const <Widget>[
        SizedBox(width: 10)
      ],
    );
  }
}

class MoviesWidget extends StatelessWidget {
  const MoviesWidget({required this.movies});
  
  final List<Movie> movies; 

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return GestureDetector(
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Maaf Detail belum tersedia!'),
            ),
          ),
          child: Card(
            child: Row(children: [
              SizedBox(
                width: 115, 
                child: ClipRRect(
                  child: Image.network(movie.poster), 
                  borderRadius: BorderRadius.circular(5),
                ),
              ), 
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,  
                    children: [
                      Text(
                        movie.title,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text("(${movie.year})")
                    ],
                  ),
                ),
              ),
            ],
            ),
          ),
        );
      }
    );
    
  }

}