import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://zqzzzbwkdekgcxeqfzgd.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inpxenp6YndrZGVrZ2N4ZXFmemdkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQzNDE0MjAsImV4cCI6MjAyOTkxNzQyMH0.r6ydiIpDRUz0-Zwh2Mz0IMm3enyoefRQpJUqgh3FYVM',
  );
  runApp(const MyApp());
}

