import 'package:flutter/material.dart';
import 'package:fireflutter/screens/dashboard_screen.dart';

class DevScreen extends StatelessWidget {
  const DevScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
           Padding(
  padding: const EdgeInsets.only(bottom: 0, right: 300),
  child: InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return DashboardPage(); // Ganti dengan nama halaman "home" yang sesuai.
        }),
      );
    },
    child: SizedBox(
      height: 126,
      width: 113,
      child: Image.asset('assets/images/Union.png'),
    ),
  ),
),

            Padding(
              padding: const EdgeInsets.only(bottom: 0, left: 0),
              child: Text(
                "Dev Profile",
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'poppinsregular',
                  color: Colors.blue, // Ganti warna teks
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: 150,
                width: 150,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage("assets/images/bob.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0, left: 10),
              child: Text(
                "Bob Byan Handoko",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'poppinsregular',
                  color: Colors.black, // Ganti warna teks
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0, left: 10),
              child: Text(
                "Mobile Designer",
                style: TextStyle(
                  fontSize: 11,
                  fontFamily: 'poppinsregular',
                  color: Color(0xFFFF0000), // Ganti warna teks
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45, right: 290),
              child: Text(
                "Email",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'poppinsregular',
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 9, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "bobbyanhp@gmail.com",
                  hintStyle: TextStyle(
                    color: Colors.grey, // Ganti warna teks hint sesuai kebutuhan
                  ),
                  filled: true,
                  fillColor: Colors.white, // Ganti latar belakang ke putih
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 280),
              child: Text(
                "Phone",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'poppinsregular',
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 9, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "+6282120569078",
                  hintStyle: TextStyle(
                    color: Colors.grey, // Ganti warna teks hint sesuai kebutuhan
                  ),
                  filled: true,
                  fillColor: Colors.white, // Ganti latar belakang ke putih
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 260),
              child: Text(
                "Address",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'poppinsregular',
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 9, right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Srigunting Street No.8 Bandung West Java",
                  hintStyle: TextStyle(
                    color: Colors.grey, // Ganti warna teks hint sesuai kebutuhan
                  ),
                  filled: true,
                  fillColor: Colors.white, // Ganti latar belakang ke putih
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
