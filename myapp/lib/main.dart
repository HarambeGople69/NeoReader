import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'bindings/our_bindings.dart';
import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (child, widget) {
        return GetMaterialApp(
          // useInheritedMediaQuery: true,
          // locale: DevicePreview.locale(context),
          title: "NeoReader",
          initialBinding: MyBinding(),
          // useInheritedMediaQuery: true,
          builder: (context, widget) {
            // ScreenUtil.setContext(context);
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: widget!);
          },
          home: HomePage(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          // theme: ThemeData(
          //   scaffoldBackgroundColor:
          //       Provider.of<CurrentTheme>(context).darkTheme == false
          //           ? Color.fromARGB(255, 255, 255, 255)
          //           : null,
          //   brightness: Provider.of<CurrentTheme>(context).darkTheme
          //       ? Brightness.dark
          //       : Brightness.light,
          //   // primarySwatch: Colors.amber,
          // ),
        );
      },
      // child: LoginScreen(),
    );
  }
}
