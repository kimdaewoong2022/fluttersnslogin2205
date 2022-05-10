import UIKit
import Flutter
import KakaoSDKCommon
import KakaoSDKAuth
import NaverThirdPartyLogin

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    // kakao start // 여기부분 그냥 주석처리해도 됨.
    KakaoSDKCommon.initSDK(appKey: "6d7ed146b3a06bb691e6f5977d5086c4")
    // kakao end
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  //네이버 SNS 로그인 추가 
    override func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
    var applicationResult = false
    if (!applicationResult) {
       applicationResult = NaverThirdPartyLoginConnection.getSharedInstance().application(app, open: url, options: options)
    }
    // if you use other application url process, please add code here.
    
    if (!applicationResult) {
       applicationResult = super.application(app, open: url, options: options)
    }
    return applicationResult
  }

}
