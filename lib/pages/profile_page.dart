import 'package:first_project/pages/login_page.dart';
import 'package:material_ui/material_ui.dart';

class ProfilePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profilim')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ProfileImage(),
          SizedBox(height: 16),
          Center(child: ProfileName(name: 'Ahmet MADEN')),
          SizedBox(height: 8),
          Center(child: ProfileTitle(job: 'Yazılımcı')),
          Divider(),
          Text(
            'Hakkımda',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Merhaba, ben Ahmet MADEN. Flutter ve Dart ile mobil uygulama geliştirme konusunda deneyimliyim.',
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('admin@ahmetmaden.net'),
          ),

          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Telefon'),
            subtitle: Text('+90 533 203 59 51'),
          ),

          ListTile(
            leading: Icon(Icons.language),
            title: Text('Dil'),
            subtitle: Text('Türkçe'),
          ),

          SizedBox(height: 24),

          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Profilimi Düzenle'),
            ),
          ),

          SizedBox(height: 12),
          OutlinedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Çıkış Yap'),
                  content: Text('Hesabından çıkmak istediğinden emin misin?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Vazgeç'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                          (route) => false,
                        );
                      },
                      child: Text('Çıkış Yap'),
                    ),
                  ],
                ),
              );
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.red),
            child: Text('Çıkış Yap'),
          ),
        ],
      ),
    );
  }
}

class ProfileTitle extends StatelessWidget {
  const new({super.key, required this.job});
  final String job;
  @override
  Widget build(BuildContext context) {
    return Text(job, style: TextStyle(fontSize: 28, color: Colors.grey));
  }
}

class ProfileName extends StatelessWidget {
  const new({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50));
  }
}
