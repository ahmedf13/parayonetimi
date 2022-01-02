import 'package:flutter/material.dart';
import 'package:para_yonetimi/core/init/navigation/navigation_route.dart';
import 'package:para_yonetimi/core/init/navigation/navigation_service.dart';
import 'package:para_yonetimi/features/authenticate/login/login_screen.dart';

/*
 Para Yönetinimi Yazılımı
  - Ana Sayfa:
    - İşlemler   : 
      - Gelir/Gider/Havale Ekleme :
        - Tarih Bilgisi :
        - Hesap         :
        - Kategori      :
        - Tutar         :
        - Not           :
        - Detaylar      :
      - Tarihine Göre Gelir/ Gider Çizelgesi
        - Aylık Toplam Gelir /Gider /Hepsi
        
    - İstatistik :
    - Hesaplar   :

  - Ayarlar:
    - Ayarlar   :
    - Hesaplar  :
    - Giriş Kodu:
    - Yedekle   :
    - Stil      :
    - İletişim  :
    - Yardım    :
    - Tavsiye   :
  - Authenticate:
    - OnBoard     :
    - Login       :
    - Forgot Pass :
    - New Acc     :




*/

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      home: const LoginScreen(),
    );
  }
}
