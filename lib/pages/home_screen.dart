import 'package:auth_supabase/auth/auth_service.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final authService = AuthService();

  void logout () async{
    try {
      await authService.signOut();
    } catch (e) {
      print('Erro: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Perfil')),
        actions: [
          IconButton(onPressed: logout, icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: Center(
    ),
    );
  }
}