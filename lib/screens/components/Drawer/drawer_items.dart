import 'package:uiitask/screens/components/Drawer/drawer_item.dart';

class DrawItems {
  static const home = DrawerItem(title: 'Home');
  static const bookNanny = DrawerItem(title: 'Book A Nanny');
  static const howWorks = DrawerItem(title: 'How it Works');
  static const whyNameVanny = DrawerItem(title: 'Why Nanny Vanny');
  static const myBooking = DrawerItem(title: 'My Booking');
  static const myProfile = DrawerItem(title: 'My Profile');
  static const support = DrawerItem(title: 'Support');

  static final List<DrawerItem> all = [
    home,
    bookNanny,
    howWorks,
    whyNameVanny,
    myBooking,
    myProfile,
    support
  ];
}
