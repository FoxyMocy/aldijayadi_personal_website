part of '../pages.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  @override
  Widget build(BuildContext context) {

    return  Container(
            margin: EdgeInsets.only(left: 100, right: 100),
            height: 654,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 700,
                      child: Text(
                        'Hello!',
                        style: headTextStyle.copyWith(),
                      ),
                    ),
                    Container(
                      width: 700,
                      child: Text(
                        "I'm Aldi Jayadi,",
                        style: headTextStyle.copyWith(),
                      ),
                    ),
                    Container(
                      width: 700,
                      child: Text(
                        'Mobile App Programmer',
                        style: regularTextStyle.copyWith(
                            fontSize: 64, color: kPrimaryColor),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: 700,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vitae luctus mi.Ut congue neque at ex faucibus, non luctus urna feugiat. Morbi a consequat diam. Nullam convallis ex id aliquet ultricies.',
                        style: regularTextStyle.copyWith(
                            fontSize: 18, color: kPrimaryColor),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(14)),
                        child: Center(
                            child: Text(
                          'Hire Me',
                          style: regularTextStyle.copyWith(color: kWhiteColor),
                        )),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 505,
                  height: 642,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/personal_photo.png'),
                          fit: BoxFit.contain)),
                )
              ],
            ),
          );
  }
}
