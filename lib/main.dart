import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dashboard.dart';
import 'error_page.dart';
import 'login.dart';

void main() {
  runApp( MyApp());
}
//final isLoggedIn = true;
bool isLoggedIn = true;
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: _router,
    );
  }
  final GoRouter _router = GoRouter(
    errorBuilder: (context, state) => const ErrorPage() ,
      redirect: (context, state) {
        if (isLoggedIn) {
         // return "/dashboard";
          return "/test";
        }else{
          return "/";
        }
      },
      routes: [
      GoRoute(path: "/" , builder: (context, state) => const Login()),
      GoRoute(path: "/dashboard" , builder: (context, state) => const Dashboard()),
  ]);
}
