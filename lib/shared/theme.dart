import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 18.0;

Color kPrimaryColor = const Color(0xff286F6C);
Color kBlackColor = const Color(0xff051E34);
Color kBackgroundColor = const Color(0xffF8F7F1);
Color kGreyColor = const Color(0xff8F8F8F);
Color kWhiteColor = const Color(0xffFFFFFF);
Color kRedColor = const Color(0xffEF5350);
Color kTransparentColor = Colors.transparent;

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight black = FontWeight.w900;

TextStyle regularTextStyle =
    GoogleFonts.roboto(color: kBlackColor, fontWeight: regular);
TextStyle titleTextStyle =
    GoogleFonts.roboto(color: kBlackColor, fontSize: 16, fontWeight: bold);
TextStyle subTitleTextStyle =
    GoogleFonts.roboto(color: kBlackColor, fontSize: 12, fontWeight: regular);
TextStyle informTextStyle =
    GoogleFonts.roboto(color: kGreyColor, fontSize: 10, fontWeight: regular);
TextStyle headTextStyle =
    GoogleFonts.novaSquare(color: kPrimaryColor, fontSize: 64);

String txtJourney =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed quam at lacus volutpat dignissim. Ut diam arcu, venenatis ac egestas eu, laoreet nec ante. Vivamus volutpat eu metus at lobortis. Donec finibus fringilla ligula in laoreet. Fusce convallis in lorem vitae mollis. Fusce tempor at dolor et blandit. Morbi non sapien tincidunt, ultrices nulla eget, convallis risus. Nulla sagittis eros sodales augue lobortis, in tincidunt lectus facilisis. Etiam sed nunc sit amet arcu condimentum rutrum. Vivamus tincidunt urna eu augue gravida elementum. In commodo congue est, et gravida dolor molestie quis. Vestibulum convallis ut neque et egestas. Mauris quis dui dictum, malesuada nibh at, vehicula sapien. Nam semper vulputate ante mollis efficitur.\n" +
        "\nSed finibus, felis non viverra mollis, ante quam tincidunt tortor, vel blandit orci nisi sit amet nisi. Suspendisse vel fermentum lorem, nec tincidunt arcu. Vestibulum dapibus massa vitae ante finibus ornare. Vivamus non porttitor sem. Morbi sit amet velit a nulla molestie pellentesque. Nunc ut gravida leo. Ut ac porta diam, id tempus massa. Donec laoreet erat sed suscipit venenatis. Aenean id varius libero. Maecenas laoreet lectus id sapien mattis gravida. Donec cursus nibh aliquam mi tincidunt pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas risus ante, placerat nec tellus sed, semper mattis massa.";

String txtProject = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed quam at lacus volutpat dignissim. Ut diam arcu, venenatis ac egestas eu, laoreet nec ante. Vivamus volutpat eu metus at lobortis. Donec finibus fringilla ligula in laoreet. Fusce convallis in lorem vitae mollis. Fusce tempor at dolor et blandit. Morbi non sapien tincidunt, ultrices nulla eget, convallis risus. Nulla sagittis eros sodales augue lobortis, in tincidunt lectus facilisis. Etiam sed nunc sit amet arcu condimentum rutrum. Vivamus tincidunt urna eu augue gravida elementum. In commodo congue est, et gravida dolor molestie quis. Vestibulum convallis ut neque et egestas. Mauris quis dui dictum, malesuada nibh at, vehicula sapien. Nam semper vulputate ante mollis efficitur.";

String txtIpAcademy = "Aplikasi Moodle Mobile yang di kustomisasi sesuai permintaan dari Indonesia Power Academy untuk menunjang pembelajaran dan pelatihan pegawai.\n- Kustomisasi tampilan dan penambahan fitur absensi dengan QR Code. \n- Aplikasi "+
"menggunakan bahasa pemrograman Ionic dan Angular.\n- Mengunggah aplikasi ke Google Play Store dan Apple App Store.";

String txtAlfa = "Aplikasi Moodle Mobile yang di kustomisasi sesuai permintaan dari PT Sumber Alfaria Trijaya Tbk untuk menunjang pelatihan pegawai."+
"\n-Kustomisasi tampilan. "+
"\n-Aplikasi menggunakan bahasa pemrograman Ionic dan Angular."+
"\n-Mengunggah aplikasi ke Google Play Store dan Apple App Store.";