import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.green, const Color.fromARGB(255, 244, 238, 54), const Color.fromARGB(255, 184, 73, 73)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Material(
          color: Colors.transparent,
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.transparent,image: DecorationImage(image: AssetImage("assets/a.png"),fit: BoxFit.cover)),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('assets/p.png'),
                  ),
                  accountName: Text(
                    'Fruits App',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  accountEmail:Text('aswinsaji5@gmail.com')),
              MenuList(
                title: 'Dashboard',
                iconName: Icons.home,
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const DashBoardScreen()));
                },
              ),
              MenuList(
                title: 'Profile',
                iconName: Icons.person,
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const ProfileScreen()));
                },
              ),
              MenuList(
                title: 'Support Ticket',
                iconName: Icons.support,
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const SupportScreen()));
                },
              ),
              MenuList(
                title: 'Referral',
                iconName: Icons.person,
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const ReferralScreen()));
                },
              ),
              MenuList(
                title: 'Stacking',
                iconName: Icons.shield,
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const StackingScreen()));
                },
              ),
              MenuList(
                title: 'Gaming',
                iconName: Icons.sports_esports,
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const AllGamingScreen()));
                },
              ),
              MenuList(
                title: 'AI Trading',
                iconName: Icons.shield,
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const AllTradingScreen()));
                },
              ),
              // MenuList(
              //   title: 'Deposit Wallet',
              //   iconName: Icons.group,
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const DepositWalletScreen()));
              //   },
              // ),
              MenuList(
                title: 'Wallet',
                iconName: Icons.wallet,
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const DepositWalletScreen()));
                },
              ),
              MenuList(
                title: 'Internal Transfer Wallet',
                iconName: Icons.support,
                onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => GridViewWidget()));
                },
              ),
              MenuList(
                title: 'Withdrawal',
                iconName: Icons.attach_money,
                onTap: () {
                 
                },
              ),
              // MenuList(
              //   title: 'Trading Withdraw',
              //   iconName: Icons.attach_money,
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const TradingWithdrawelScreen()));
              //   },
              // ),
    
              MenuList(
                title: 'Logout',
                iconName: Icons.exit_to_app,
                onTap: () {
                  showAlertDialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: const Text(
        "CANCEL",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: const Text(
        "OK",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
       
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text(
        "Logout",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      content: const Text(
        "Are you sure you want to exit the app ?",
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class MenuList extends StatelessWidget {
  final String title;
  final IconData iconName;
  final Function() onTap;
  const MenuList(
      {super.key,
      required this.title,
      required this.iconName,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color.fromARGB(248, 241, 241, 241),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(iconName, color: const Color.fromARGB(255, 20, 19, 19)),
      ),
      title: Text(
        title,
        style: const TextStyle(
            color: Color.fromARGB(255, 2, 1, 1), fontWeight: FontWeight.w400, fontSize: 14),
      ),
      onTap: () {
        onTap();
      },
    );
  }
}
