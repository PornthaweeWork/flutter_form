// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_form/color/palette.dart';
import 'package:flutter_svg/svg.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.kToDark,
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          slivers: <Widget>[
            buildHeader(context),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  buildContent(),
                  Container(
                    color: Colors.white,
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: Image.asset('assets/images/content-7.png'),
                      ),
                    ],
                ),
                  ),
                ],
              ),
            ),
          ],
        ),
        top: true,
        bottom: true,
        left: false,
        right: false,
      ),
    );
  }

  Widget buildContent() {
    return Container(
            padding: EdgeInsets.only(left: 24,right: 24),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24.0),
                topLeft: Radius.circular(24.0),
                ),
              color: Colors.white,
            ),
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                      child: Text(
                        "โหราศาสตร์น่ำเอี๊ยง",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Palette.textRed,
                          fontFamily: 'PSL',letterSpacing:0.2
                          ),
                        ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                      child: Text(
                        "堂南陽",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Palette.textRed,
                          fontFamily: 'PSL'
                          ),
                        ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: Image.asset('assets/images/content-1.png'),
                    ),
                  ],
                ),
                buildTextHeader(text:"น่ำเอี๊ยง แสงอาทิตย์จากแดนใต้"),
                buildTextParagraph(
                  text:"“น่ำเอี๊ยง” (Numeiang) แปลความหมายได้ว่า “น่ำ” (Num) หมายถึง ทิศใต้ ซึ่งเป็นทิศแห่ง ความเป็นมงคล ทั้งยังซึมซาบพลังแห่งแสงจาก ดวงอาทิตย์ได้อย่างเต็มที่ เต็มไปด้วยพลังชี่ และ สื่อถึงความสมัครสมานสามัคคี ส่วน “เอี๊ยง” (eiang) หมายถึง พระอาทิตย์ สื่อถึงความดีงาม แห่งพลังหยาง แสงสว่าง ความอบอุ่น ความมี ชีวิตชีวา และเป็นเครื่องนำทางสู่ความรุ่งเรืองของ ชีวิต “น่ำเอี๊ยง” (Numeiang) จึงหมายถึง แสงอาทิตย์จากแดนใต้ที่เปี่ยมไปด้วยความดีงาม และความยิ่งใหญ่"
                ),
                buildLine(paddingTop: 24),
                buildTextHeader(text:"ผู้ก่อตั้งน่ำเอี๊ยง"),
                buildTextParagraph(
                  text:"นายเฮียง แซ่โง้ว หรือ ซินแสเฮียง ท่านเกิดเมื่อปี พ.ศ. 2463 เป็นคนเชื้อสายจีนแต้จิ๋ว ถิ่นกำเนิดอยู่ ณ มณฑลกวางตุ้ง ประเทศจีน ท่านเดินทางมายัง ประเทศไทยในปี 2482 โดยนำ ความรู้ “ด้านโหราศาสตร์” ที่ตนศึกษามาตั้งแต่วัยเยาว์ เมื่อครั้งอยู่ที่เมืองจีนมายึดเป็นอาชีพ"
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: Image.asset('assets/images/content-2.png'),
                    ),
                  ],
                ),
                buildTextParagraph(
                  text:"ซินแสเฮียงเชี่ยวชาญด้านการทำนายดวงชะตา หลากหลายรูปแบบ ทั้งการดูโหงวเฮ้ง การขึ้นดวง (ปาจื้อ) การดูฤกษ์งามยามมงคลต่าง ๆ ด้วยความ เชื่อว่า โชคชะตาของมนุษย์ล้วนต่างกัน ท่านจึง หวังที่จะเป็น ผู้บอกเล่าให้ผู้คนเข้าใจในดวงชะตา ของตัวเอง และปรับเปลี่ยนวิถีชีวิตให้เหมาะสม ด้วยชื่อเสียงเรื่องความแม่นยำทำให้ท่านได้รับ คำเชิญจากผู้คนในหลากหลายภูมิภาค จนในที่สุด จึงก่อตั้ง “สำนักโหราศาสตร์น่ำเอี๊ยง” ที่พระนคร อันเป็นจุดเริ่มต้นของน่ำเอี๊ยง และเริ่มผลิตปฏิทิน น่ำเอี๊ยงขึ้นในเวลาต่อมา",
                  paddingTop: 24
                ),
                buildLine(paddingTop: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: Image.asset('assets/images/content-3.png'),
                    ),
                  ],
                ),
                buildTextHeader(text:"โรงพิมพ์ปฏิทินและตําราน่ำเอี๊ยง"),
                buildTextParagraph(
                  text:"พ.ศ. 2529 ได้มีจัดตั้งโรงพิมพ์เพื่อตีพิมพ์ปฏิทิน โหราศาสตร์น่ําเอี๊ยง พัฒนาทั้งด้านการผลิต มีการ นํานวัตกรรมแท่นพิมพ์เข้ามา และด้านเนื้อหานํา โหราศาสตร์จีนผนวกเข้ากับเนื้อหาปฏิทินไทย ปรับ เป็นรูปแบบรายเดือน รายวัน และปฏิทินตั้งโต๊ะ เพื่อให้เข้าถึงวิถีชีวิตคนไทยมากที่สุด"
                ),
                buildLine(paddingTop: 24),
                buildTextHeader(text:"ปัจจุบันสืบทอดความรู้ด้านโหราศาสตร์จีน และพัฒนาอย่างไม่หยุดยั้ง"),
                buildTextParagraph(
                  text:"มีการนําเทคโนโลยีเข้ามาพัฒนาเป็นโรงพิมพ์ปฏิทิน ครบวงจรและทันสมัย ทั้งนี้ซินแสคนปัจจุบันยังคง สืบทอดความรู้ด้าน โหราศาสตร์จีนอันทรงคุณค่า พร้อมบริการให้คําปรึกษาฤกษ์มงคลอย่างใกล้ชิด สมดังชื่อ “น่ําเอี๊ยง” แสงอาทิตย์มงคลแห่งแดนใต้ ที่ยังคงส่องสว่างไม่จางหายสืบไป"
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: Image.asset('assets/images/content-4.png'),
                    ),
                  ],
                ),
                buildTextParagraph(
                  text:"ปฏิทินน่ำเอี๊ยงไม่ได้เป็นเพียงปฏิทินบอกวัน เดือน ปีเท่านั้น แต่ยังช่วยบอกฤกษ์ยามมงคล ข้อควร ระวังในการประกอบกิจกรรมต่าง ๆ ตามหลัก โหราศาสตร์จีนโบราณ ปฏิทินน่ําเอี๊ยงจึงเปรียบ เสมือนเพื่อน หรือคู่คิดในการดําเนินชีวิตประจําวัน ของผู้คนมาทุกยุคสมัย ดังปณิธานของซินแส ผู้ก่อตั้งน่ําเอี๊ยงที่เชื่อว่า “หากเราดําเนินชีวิตตาม จังหวะเวลาที่เหมาะสมย่อมส่งผลให้ชีวิตราบรื่น ไร้อุปสรรค”",
                  paddingTop: 24
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: Image.asset('assets/images/content-5.png'),
                    ),
                  ],
                ),
                buildLine(paddingTop: 24),
                buildTextHeader(text:"จุดเริ่มต้นของแอปปฏิทินมงคลน่ำเอี๊ยง"),
                buildTextParagraph(
                  text:"เมื่อเทคโนโลยีทําให้ผู้คนทุกเพศทุกวัยเข้าถึงข้อมูล ต่าง ๆ ได้ง่ายเพียงปลายนิ้วสัมผัส ประกอบกับ โทรศัพท์มือถือเข้ามามีบทบาทในการใช้ชีวิตทุกด้าน ปฏิทินน่ำเอี๊ยงจึงปรับเปลี่ยนรูปแบบให้สะดวก ใช้งานง่าย เข้ากับไลฟ์สไตล์การใช้ชีวิตในปัจจุบัน มากขึ้น"
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: Image.asset('assets/images/content-6.png'),
                    ),
                  ],
                ),
              ],
            ),
          );
  }

  Padding buildLine({double paddingTop = 0.0, double paddingDown = 0.0}) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop, bottom: paddingDown),
      child: Divider(
        color: Color.fromRGBO(209, 209, 209, 1),
        thickness: 1,
        height: 1,
      ),
    );
  }

  Row buildTextParagraph({String? text, double paddingTop = 12}) {
    return Row(
      children: [
        Expanded(child: 
          Padding(
          padding: EdgeInsets.only(top: paddingTop),
          child: Text(
            "$text",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(49, 49, 49, 1),
              fontFamily: 'PSL-Text',
              letterSpacing: 0.1,
              height: 1
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildTextHeader({String? text}) {
    return  Row(
      children: [
        Expanded(child:
          Padding(
          padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
          child: Text(
            '$text',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Palette.textRed,
              fontFamily: 'PSL',
              letterSpacing: 0.3
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildHeader(BuildContext context) {
    return SliverAppBar(
          expandedHeight: 70,
          titleSpacing: 0,
          leadingWidth: 60,
          leading: ElevatedButton.icon(
            onPressed: () => Navigator.of(context).pop(),
            icon: SvgPicture.asset('assets/icons/back.svg'),
            label: Text(''),
            style: ElevatedButton.styleFrom(
              foregroundColor: Color.fromRGBO(186, 0, 13, 1),
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
          ),
          centerTitle: false,
          title: Text(
            'เกี่ยวกับ',
            style: TextStyle(
              fontSize: 32,
              color: Color.fromRGBO(186, 0, 13, 1),
              fontFamily: 'PSL',
              height: 1
            ),
          ),
        );
  }

}

