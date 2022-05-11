# fluttersnslogin2205
플로터 SNS로그인 (2022년 05월 초기 소스 생성)

플로터 SNS Login Sample

구글 : 파이어베이스 사용
카카오로그인, 네이버로그인 인증서버 없이 구현 


# Android 에뮬레이터로 네이버로그인시 
 E/AndroidRuntime( 4533): java.lang.RuntimeException: Unable to start activity ComponentInfo{com.madmillgames.fluttersnslogin2205/com.navercorp.nid.oauth.activity.NidOAuthWebViewActivity}: java.lang.IllegalStateException: You need to use a Theme.AppCompat theme (or descendant) with this activity.

안드로이드 에뮬레이터에서 네이버 로그인시점에 연결안되느 문제가 있음 
릴리즈 버전(폰에서는)는 문제 없이 작동함. 

# pubspec.yaml 
firebase_core: ^1.8.0
firebase_auth: ^3.3.17
google_sign_in: ^5.3.0  #220506 최신버전 
flutter_kakao_login: ^3.3.0  
flutter_naver_login: ^1.3.1

