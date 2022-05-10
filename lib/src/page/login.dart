import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttersnslogin2205/src/page/FlutterKakaoLoginView.dart';
import 'package:fluttersnslogin2205/src/page/FlutterNaverLoginView.dart';

import 'package:google_sign_in/google_sign_in.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SNS Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              color: Colors.grey.withOpacity(0.3),
              onPressed: signInWithGoogle,
              child: Text("Google Login"),
            ),
            FlatButton(
              color: Colors.grey.withOpacity(0.3),
              child: Text('kakao Login'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FlutterKakaoLoginView()),
                );
              },
            ),
            FlatButton(
              color: Colors.grey.withOpacity(0.3),
              child: Text('Naver Login'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FlutterNaverLoginView()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
