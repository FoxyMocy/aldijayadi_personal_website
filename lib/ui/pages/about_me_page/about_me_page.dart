part of '../pages.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100, right: 100),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 610,
                width: 450,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/profile_photo.png'))),
              ),
              SizedBox(
                width: 95,
              ),
              Expanded(
                  child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Journey',
                      style: headTextStyle.copyWith(fontSize: 48),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(txtJourney,
                        style: regularTextStyle.copyWith(fontSize: 18))
                  ],
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
