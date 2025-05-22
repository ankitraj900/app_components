import 'package:flutter/material.dart';
import 'package:app_components/app_components.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VeloxPAYS Login Demo',
      theme: VeloxPAYSTheme.theme,
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _remember = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 56,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text('Login', style: theme.textTheme.headlineMedium),
              const SizedBox(height: 32),
              Text('Email Address', style: theme.textTheme.bodyLarge),
              const SizedBox(height: 8),
              AppTextField(
                controller: _emailController,
                hintText: 'ankit@gmail.com',
                prefixIcon: Icons.mail,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 24),
              Text('Password', style: theme.textTheme.bodyLarge),
              const SizedBox(height: 8),
              AppTextField(
                controller: _passwordController,
                hintText: '********************',
                prefixIcon: Icons.lock,
                isPassword: true,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Checkbox(
                    value: _remember,
                    onChanged: (val) => setState(() => _remember = val ?? false),
                  ),
                  const Text('Remember'),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('New users?'),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Sign Up Here',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
} 