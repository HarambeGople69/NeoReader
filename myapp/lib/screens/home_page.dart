import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/widgets/our_sized_box.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OR Code Generator"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setSp(10),
          vertical: ScreenUtil().setSp(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              QrImage(
                data: "data",
                backgroundColor: Colors.white,
                size: 200,
              ),
              OurSizedBox(),
              Center(
                child: Text("Home Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
