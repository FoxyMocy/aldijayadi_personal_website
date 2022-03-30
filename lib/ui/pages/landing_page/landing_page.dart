part of '../pages.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                      'Mobile App Developer',
                      style: regularTextStyle.copyWith(
                          fontSize: 64, color: kPrimaryColor),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                      width: 650,
                      child: RichText(
                          text: TextSpan(
                              text: 'Open for freelance ',
                              style: regularTextStyle.copyWith(
                                  fontSize: 18, color: kPrimaryColor),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'Mobile App Developer ',
                              style: regularTextStyle.copyWith(
                                  fontSize: 18,
                                  color: kPrimaryColor,
                                  fontWeight: bold),
                            ),
                            TextSpan(
                              text: 'or maybe ',
                              style: regularTextStyle.copyWith(
                                  fontSize: 18, color: kPrimaryColor),
                            ),
                            TextSpan(
                              text: 'Visual Designer. ',
                              style: regularTextStyle.copyWith(
                                  fontSize: 18,
                                  color: kPrimaryColor,
                                  fontWeight: bold),
                            ),
                            TextSpan(
                              text:
                                  'Press the or LinkedIn icon to contact me because the hire me and contact me buttons are still in progress.',
                              style: regularTextStyle.copyWith(
                                  fontSize: 18, color: kPrimaryColor),
                            ),
                            TextSpan(
                              text: 'Instagram ',
                              style: regularTextStyle.copyWith(
                                  fontSize: 18,
                                  color: kPrimaryColor,
                                  fontWeight: bold),
                            ),
                            TextSpan(
                              text: 'or ',
                              style: regularTextStyle.copyWith(
                                  fontSize: 18, color: kPrimaryColor),
                            ),
                            TextSpan(
                              text: 'LinkedIn ',
                              style: regularTextStyle.copyWith(
                                  fontSize: 18,
                                  color: kPrimaryColor,
                                  fontWeight: bold),
                            ),
                            TextSpan(
                              text:
                                  'icon to contact me because the hire me and contact me buttons are still in progress.',
                              style: regularTextStyle.copyWith(
                                  fontSize: 18, color: kPrimaryColor),
                            ),
                          ]))),
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
                        style: regularTextStyle.copyWith(
                          color: kWhiteColor,
                          fontWeight: bold,
                        ),
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
        ),
      ],
    );
  }
}
