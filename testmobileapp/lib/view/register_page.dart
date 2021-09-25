import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testmobileapp/view/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
    GlobalKey _globalkey = GlobalKey<FormState>();
    TextEditingController _namaController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passController = TextEditingController();
    TextEditingController _confirmPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(35),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Register", style: GoogleFonts.poppins(
                  color: const Color.fromRGBO(32, 144, 207, 1),
                  fontSize: 28,
                  fontWeight: FontWeight.w600
                ),),
                const SizedBox(height: 15),
                Text("Selamat Datang! Silahkan lengkapi form dibawah ini untuk melakukan registrasi.", 
                textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.grey[700],
                    fontSize: 12,
                  ),
                  softWrap: true,
                ),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [BoxShadow(blurRadius: 4,color: Colors.grey)],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Form(
                        key: _globalkey,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(15),
                              child: TextFormField(
                                controller: _namaController,
                                keyboardType: TextInputType.name,
                                style: GoogleFonts.nunitoSans(
                                  color: Colors.grey[750],
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                                decoration: InputDecoration(
                                  hintText: "Nama Lengkap",
                                  hintStyle: GoogleFonts.nunitoSans(
                                    color: Colors.grey[450],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(9),
                                    borderSide: const BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(15),
                              child: TextFormField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                style: GoogleFonts.nunitoSans(
                                  color: Colors.grey[750],
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: GoogleFonts.nunitoSans(
                                    color: Colors.grey[450],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(9),
                                    borderSide: const BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(15),
                              child: TextFormField(
                                controller: _passController,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                style: GoogleFonts.nunitoSans(
                                  color: Colors.grey[750],
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: GoogleFonts.nunitoSans(
                                    color: Colors.grey[450],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(9),
                                    borderSide: const BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(15),
                              child: TextFormField(
                                controller: _confirmPassController,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                style: GoogleFonts.nunitoSans(
                                  color: Colors.grey[750],
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                                decoration: InputDecoration(
                                  hintText: "Konfirmasi Password",
                                  hintStyle: GoogleFonts.nunitoSans(
                                    color: Colors.grey[450],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(9),
                                    borderSide: const BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ]
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(250, 50),
                          backgroundColor: const Color.fromRGBO(32, 144, 207, 1),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          shadowColor: const Color.fromRGBO(32, 144, 207, 1),
                          elevation: 5
                        ),
                        child: Text(
                          "Register",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          ),
                        onPressed: (){} ,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Sudah punya akun? ',
                              style: GoogleFonts.poppins(
                                  color: const Color.fromRGBO(130, 130, 130, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400)),
                          TextButton(
                            onPressed: () {
                              Get.to(const LoginPage());
                            },
                            child: Text(
                              "Masuk",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color.fromRGBO(32, 144, 207, 1)),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}