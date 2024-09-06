import 'package:flutter/material.dart';
import 'package:nab_consult_menu/datas/menu_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyMenu(),
    );
  }
}

class MyMenu extends StatelessWidget {
  const MyMenu({super.key});

  @override
  Widget build(BuildContext context) {
    List<MenuModel> menuData = [
      MenuModel(
        menuIcon: Icon(
          Icons.calendar_today,
          size: MediaQuery.of(context).size.width / 8,
        ),
        menuText: "Mon calendrier",
      ),
      MenuModel(
        menuIcon: const Icon(Icons.event),
        menuText: "Mes réservations",
      ),
      MenuModel(
          menuIcon: const Icon(Icons.list_alt_rounded),
          menuText: "Comptes clients"),
      MenuModel(
        menuIcon: const Icon(Icons.person_add),
        menuText: "Créer un utilisateur",
      ),
      MenuModel(
        menuIcon: const Icon(Icons.groups),
        menuText: "Formateurs",
      ),
      MenuModel(
        menuIcon: const Icon(Icons.school),
        menuText: "Mon espace",
      ),
      MenuModel(
        menuIcon: const Icon(Icons.account_circle),
        menuText: "Mon compte",
      ),
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: () {}, child: const Icon(Icons.home)),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    mainAxisExtent: 100,
                    maxCrossAxisExtent: 200,
                  ),
                  itemCount: menuData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Expanded(
                              child: Icon(menuData[index].menuIcon, ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {},
                                child: Text(menuData[index].menuText,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
