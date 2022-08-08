import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomeRoute(),
    );
  }
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            HotNewsItem(),
            NewsItem(),
          ],
        ),
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  const NewsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              color: Colors.black12,
              padding: const EdgeInsets.all(8),
              child: const Text(
                "BĐS",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 8,
              bottom: 12,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 16,
                    ),
                    child: Text(
                      "Vietceramics khai trương showroom Him Lam Quận 7",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    "https://cdn.24h.com.vn/upload/3-2022/images/2022-08-06/Ket-qua-bong-da-Newcastle---Nottingham-Forest-Tan-cong-vu-bao-van-may-ngoanh-mat-Vong-1-Ngoai-hang-A-2022-08-06t152036z_510084302_up1ei8616m9li_rtrmadp-1659801557-88-width740height416.jpg",
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: const [
                    Text(
                      "CafeF",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                          fontSize: 13),
                    ),
                    TextWithIcon(
                      text: Text("14h trước"),
                      icon: Icon(
                        Icons.access_time,
                        size: 12,
                        color: Colors.black45,
                      ),
                    ),
                    TextWithIcon(
                      text: Text("23"),
                      icon: Icon(
                        Icons.chat,
                        size: 12,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.more_horiz_outlined,
                size: 16,
              )
            ],
          )
        ],
      ),
    );
  }
}

class TextWithIcon extends StatelessWidget {
  const TextWithIcon({
    Key? key,
    required this.text,
    this.icon,
  }) : super(key: key);

  final Text text;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 13),
      child: Row(
        children: [
          icon != null ? icon! : Container(),
          const VerticalDivider(
            width: 4,
          ),
          text,
        ],
      ),
    );
  }
}

class HotNewsItem extends StatelessWidget {
  const HotNewsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 343 / 270,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                "https://cdnmedia.webthethao.vn/uploads/2022-06-14/chovy-mvp-gen.jpg",
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.grey.withOpacity(0.0),
                      Colors.black,
                    ],
                    stops: const [
                      0.0,
                      1.0,
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "CafeF",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: Text(
                        "Cập nhật BCTC quý 2 ngày 27/7: Lợi nhuận PVS, HBC, Sacombank giảm, một công ty than gây bất ngờ lớn ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Text(
                      "26/07/2022 11:16",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
