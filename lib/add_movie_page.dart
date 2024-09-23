import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'movie_model.dart';

class AddMoviePage extends StatefulWidget {
  final Function(Movie) onAddMovie;

  AddMoviePage({required this.onAddMovie});

  @override
  _AddMoviePageState createState() => _AddMoviePageState();
}

class _AddMoviePageState extends State<AddMoviePage> {
  final _titleController = TextEditingController();
  final _commentsController = TextEditingController();
  String? _imageUrl;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageUrl = pickedFile.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Adicionar Filme',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF651366),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF651366),
              Color(0xFFA71A5B),
              Color(0xFFE7204E),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Divider(height: 1, color: Colors.black),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      labelText: 'Título',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  TextField(
                    controller: _commentsController,
                    decoration: InputDecoration(
                      labelText: 'Comentários',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _pickImage,
                    child: Text('Selecionar Imagem'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF651366),
                      foregroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  if (_imageUrl != null)
                    Image.file(
                      File(_imageUrl!),
                      height: 100,
                      fit: BoxFit.cover,
                    )
                  else
                    Container(
                      height: 100,
                      color: Colors.white,
                      child: Center(child: Text('Nenhuma imagem selecionada', style: TextStyle(color: Colors.black))),
                    ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      final movie = Movie(
                        title: _titleController.text,
                        comments: _commentsController.text,
                        imageUrl: _imageUrl ?? '',
                      );
                      widget.onAddMovie(movie);
                      Navigator.pop(context);
                    },
                    child: Text('Adicionar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF651366),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
