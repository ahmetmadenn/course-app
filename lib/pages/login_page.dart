import 'package:first_project/pages/main_shell.dart';
import 'package:material_ui/material_ui.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            SizedBox(height: 48),
            Icon(Icons.school, size: 80, color: colors.primary),
            SizedBox(height: 16),
            Text(
              'Hoş Geldiniz!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 8),

            Text(
              'Derslerine devam etmek için giriş yap',
              style: TextStyle(fontSize: 16, color: Colors.grey),

              textAlign: TextAlign.center,
            ),

            SizedBox(height: 40),

            TextField(
              keyboardType: TextInputType.emailAddress,

              decoration: InputDecoration(
                labelText: 'E-posta',
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            SizedBox(height: 16),

            TextField(
              obscureText: obscurePassword,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    obscurePassword ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      obscurePassword = !obscurePassword;
                    });
                  },
                ),
                labelText: 'Parola',
                prefixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            SizedBox(height: 24),

            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MainShell()),
                );
              },

              style: FilledButton.styleFrom(minimumSize: Size.fromHeight(52)),

              child: Text('Giriş Yap!'),
            ),
          ],
        ),
      ),
    );
  }
}
