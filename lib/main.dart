import 'package:auth_supabase/auth/auth_gate.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://gobynhquhqmkeqhnqsas.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdvYnluaHF1aHFta2VxaG5xc2FzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzcwNDQ0NjksImV4cCI6MjA1MjYyMDQ2OX0.A4oIzbT67W8XWSSxK6un28UWDqdBZwyVfXsPJbQWIkE',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: AuthGate(),
    );
  }
}