import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../common/alert_util.dart';
import '../common/theme_helper.dart';
import 'package:intl/intl.dart';
import 'package:flutter_tts/flutter_tts.dart';

String mystere = "";
String ssMystere1 = "";
String ssMystere2 = "";
String ssMystere3 = "";
String ssMystere4 = "";
String ssMystere5 = "";
String ssM1Text = "";
String ssM2Text = "";
String ssM3Text = "";
String ssM4Text = "";
String ssM5Text = "";
String jeCroixEnDieu = "Je crois en Dieu, le Père tout-puissant,\n"
    "Créateur du ciel et de la terre.\n"
    "Et en Jésus Christ, son Fils unique, notre Seigneur ;\n"
    "qui a été conçu du Saint Esprit, est né de la Vierge Marie,\n"
    "a souffert sous Ponce Pilate, a été crucifié,\n"
    "est mort et a été enseveli, est descendu aux enfers ;\n"
    "le troisième jour est ressuscité des morts,\n"
    "est monté aux cieux, est assis à la droite de Dieu le Père tout-puissant,\n"
    "d’où il viendra juger les vivants et les morts.\n"
    "Je crois en l’Esprit Saint, à la sainte Église catholique, à la communion des saints,\n"
    "à la rémission des péchés, à la résurrection de la chair, à la vie éternelle.";
String notrePere = "Notre Père, qui es aux cieux, \n"
    "que ton nom soit sanctifié, \n"
    "que ton règne vienne, \n"
    "que ta volonté soit faite sur la terre comme au ciel. \n"
    "Donne-nous aujourd’hui notre pain de ce jour. \n"
    "Pardonne-nous nos offenses, \n"
    "comme nous pardonnons aussi à ceux qui nous ont offensés. \n"
    "Et ne nous laisse pas entrer en tentation \n"
    "mais délivre-nous du Mal.";
String jeVousSalueMarie = "Je vous salue Marie, pleine de grâce ;\n"
    "Le Seigneur est avec vous.\n"
    "Vous êtes bénie entre toutes les femmes\n"
    "Et Jésus, le fruit de vos entrailles, est béni.\n"
    "Sainte Marie, Mère de Dieu,\n"
    "Priez pour nous pauvres pécheurs,\n"
    "Maintenant et à l’heure de notre mort.";

String valeur = "";
String valeurDefaut = "";
int premPassage = 0;

final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold));
final ButtonStyle styleS = ElevatedButton.styleFrom(
    textStyle: const TextStyle(
        fontSize: 16, fontWeight: FontWeight.normal, color: Colors.blueGrey));
final ButtonStyle styleRed = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    backgroundColor: Colors.deepOrange,
    shadowColor: Colors.deepOrange);
ButtonStyle style1 = styleRed;
ButtonStyle style2 = style;
ButtonStyle style3 = style;
ButtonStyle style4 = style;
ButtonStyle style5 = style;
ButtonStyle style6 = style;

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    if (premPassage == 0) {
      var date = DateTime.now();
      if (DateFormat('EEEE').format(date) == "Monday") {
        mystere = "Les Mystères Joyeux";
      }
      if (DateFormat('EEEE').format(date) == "Tuesday") {
        mystere = "Les Mystères Douloureux";
      }
      if (DateFormat('EEEE').format(date) == "Wednesday") {
        mystere = "Les Mystères Glorieux";
      }
      if (DateFormat('EEEE').format(date) == "Thursday") {
        mystere = "Les Mystères Lumineux";
      }
      if (DateFormat('EEEE').format(date) == "Friday") {
        mystere = "Les Mystères Douloureux";
      }
      if (DateFormat('EEEE').format(date) == "Saturday") {
        mystere = "Les Mystères Joyeux";
      }
      if (DateFormat('EEEE').format(date) == "Sunday") {
        mystere = "Les Mystères Joyeux";
      }

      valeur = mystere;
      valeurDefaut = mystere;
      premPassage = 1;
    }
    if (valeur == "Les Mystères Joyeux") {
      mystere = "Les Mystères Joyeux";
      ssMystere1 = "L'annonciation";
      ssMystere2 = "La visitation";
      ssMystere3 = "La nativité";
      ssMystere4 = "La présentation de Jésus au temple";
      ssMystere5 = "Le recouvrement de Jésus au temple";
      ssM1Text =
          "Le sixième mois, l’ange Gabriel fut envoyé par Dieu dans une ville de Galilée, appelée Nazareth, à une vierge, accordée en mariage à un homme de la maison de David, appelé Joseph ; et le nom de la vierge était Marie.";
      ssM2Text =
          "En ces jours-là, Marie se mit en route rapidement vers une ville de la montagne de Judée. Elle entra dans la maison de Zacharie et salua Élisabeth. Or, quand Élisabeth entendit la salutation de Marie, l’enfant tressaillit en elle. Alors, Élisabeth fut remplie de l’Esprit Saint, et s’écria d’une voie forte : “Tu es bénie entre toutes les femmes, et le fruit de tes entrailles est béni !";
      ssM3Text =
          "En ces jours-là, parut un édit de l’empereur, ordonnant de recenser toute la terre - ce premier recensement eut lieu lorsque Quirinius était gouverneur de Syrie. Et chacun allait se faire inscrire dans sa ville d’origine. Joseph, lui aussi, quitta la ville de Nazareth en Galilée, pour monter en Judée, à la ville de David appelée Bethléem, car il était de la maison et de la descendance de David. Il venait se faire inscrire avec Marie, son épouse, qui était enceinte. Or, pendant qu’ils étaient là, arrivèrent les jours où elle devait enfanter. Et elle mit au monde son fils premier-né ; elle l’emmaillota et le coucha dans une mangeoire, car il n’y avait pas de place pour eux dans la salle commune.";
      ssM4Text =
          "Quand arriva le huitième jour, celui de la circoncision, l’enfant reçut le nom de Jésus, le nom que l’ange lui avait donné avant sa conception. Quand arriva le jour fixé par la loi de Moïse pour la purification, les parents de Jésus le portèrent à Jérusalem pour le présenter au Seigneur, selon ce qui est écrit dans la Loi : Tout premier-né de sexe masculin sera consacré au Seigneur.";
      ssM5Text =
          "Chaque année, les parents de Jésus allaient à Jérusalem pour la fête de la Pâque. Quand il eut douze ans, ils firent le pèlerinage suivant la coutume. Comme ils s’en retournaient à la fin de la semaine, le jeune Jésus resta à Jérusalem sans que ses parents s’en aperçoivent. Pensant qu’il était avec leurs compagnons de route, ils firent une journée de chemin avant de le chercher parmi leurs parents et connaissances. Ne le trouvant pas, ils revinrent à Jérusalem en continuant à le chercher. C’est au bout de trois jours qu’ils le retrouvèrent dans le Temple, assis au milieu des docteurs de la Loi : il les écoutait et leur posait des questions, et tous ceux qui l’entendaient s’extasiaient sur son intelligence et sur ses réponses.";
    }
    if (valeur == "Les Mystères Douloureux") {
      mystere = "Les Mystères Douloureux";
      ssMystere1 = "L’agonie au Jardin des Oliviers";
      ssMystere2 = "La flagellation";
      ssMystere3 = "Le couronnement d’épines";
      ssMystere4 = "Le portement de croix";
      ssMystere5 = "La crucifixion et la mort de Jésus sur la croix";
      ssM1Text =
          "Alors Jésus parvient avec eux à un domaine appelé Gethsémani et leur dit : “Asseyez-vous ici, pendant que je vais là-bas pour prier.” Il emmena Pierre, ainsi que Jacques et Jean, les deux fils de Zébédée, et il commença à ressentir tristesse et angoisse. Il leur dit alors : “Mon âme est triste à en mourir. Restez ici et veillez avec moi.” Allant un peu plus loin, il tomba face contre terre en priant, et il disait : “Mon Père, s’il est possible, que cette coupe passe loin de moi ! Cependant, non pas comme moi, je veux, mais comme toi, tu veux.";
      ssM2Text =
          "Alors Pilate fit saisir Jésus pour qu’il soit flagellé. Les soldats tressèrent avec des épines une couronne qu’ils lui posèrent sur la tête ; puis ils le revêtirent d’un manteau pourpre. Ils s’avançaient vers lui et ils disaient : “Salut à toi, roi des Juifs !” Et ils le giflaient.";
      ssM3Text =
          "Alors les soldats du gouverneur emmenèrent Jésus dans la salle du Prétoire et rassemblèrent autour de lui toute la garde. Ils lui enlevèrent ses vêtements et le couvrirent d’un manteau rouge. Puis, avec des épines, ils tressèrent une couronne, et la posèrent sur sa tête ; ils lui mirent un roseau dans la main droite et, pour se moquer de lui, ils s’agenouillaient devant lui en disant : “Salut, roi des Juifs !";
      ssM4Text =
          "Et ils réquisitionnent, pour porter sa croix, un passant, Simon de Cyrène, le père d’Alexandre et de Rufus, qui revenait des champs. Et ils amènent Jésus au lieu dit Golgotha, ce qui se traduit : Lieu-du-Crâne (ou Calvaire).";
      ssM5Text =
          "Lorsqu’ils furent arrivés au lieu dit : Le Crâne (ou Calvaire), là ils crucifièrent Jésus, avec les deux malfaiteurs, l’un à droite et l’autre à gauche. Jésus disait : “Père, pardonne-leur : ils ne savent pas ce qu’ils font.” (…) C’était déjà environ la sixième heure (c’est-à-dire : midi) ; l’obscurité se fit sur toute la terre jusqu’à la neuvième heure, car le soleil s’était caché. Le rideau du Sanctuaire se déchira par le milieu. Alors, Jésus poussa un grand cri : “Père, entre tes mains je remets mon esprit.” Et après avoir dit cela, il expira.";
    }
    if (valeur == "Les Mystères Glorieux") {
      mystere = "Les Mystères Glorieux";
      ssMystere1 = "La Résurrection";
      ssMystere2 = "L’Ascension";
      ssMystere3 = "La Pentecôte";
      ssMystere4 = "L’Assomption";
      ssMystere5 = "Le Couronnement de la Vierge Marie";
      ssM1Text =
          "Le premier jour de la semaine, de grand matin, les femmes se rendirent au sépulcre, portant des aromates qu’elles avaient préparés. Elles trouvèrent la pierre roulée sur le côté du tombeau. Elles entrèrent, mais ne trouvèrent pas le corps du Seigneur Jésus. Elles ne savaient que penser, lorsque deux hommes se présentèrent à elles, avec un vêtement éblouissant. Saisies de crainte, elles baissaient le visage vers le sol. Ils leur dirent : “Pourquoi cherchez-vous le Vivant parmi les morts ? Il n’est pas ici, il est ressuscité.";
      ssM2Text =
          "Le Seigneur Jésus, après leur avoir parlé, fut enlevé au ciel et s’assit à la droite de Dieu.";
      ssM3Text =
          "Quand arriva le jour de la Pentecôte, au terme des cinquante jours, ils se trouvaient réunis tous ensemble. Soudain un bruit survint du ciel comme un violent coup de vent : la maison où ils étaient assis en fut remplie tout entière. Alors leur apparurent des langues qu’on aurait dites de feu, qui se partageaient, et il s’en posa une sur chacun d’eux. Tous furent remplis d’Esprit Saint : ils se mirent à parler en d’autres langues, et chacun s’exprimait selon le don de l’Esprit.";
      ssM4Text =
          "Il s’est penché sur son humble servante ; désormais tous les âges me diront bienheureuse. Le Puissant fit pour moi des merveilles ; Saint est son nom !";
      ssM5Text =
          "Un signe grandiose apparut dans le ciel : une Femme, ayant le soleil pour manteau, la lune sous les pieds, et sur la tête une couronne de douze étoiles. ";
    }
    if (valeur == "Les Mystères Lumineux") {
      mystere = "Les Mystères Lumineux";
      ssMystere1 = "Le bapteme du Christ";
      ssMystere2 = "Le miracle  de Cana";
      ssMystere3 = "L’annonce du Royaume";
      ssMystere4 = "La Transfiguration";
      ssMystere5 = "L'Institution de l’Eucharistie";
      ssM1Text =
          "Dès que Jésus fut baptisé, il remonta de l’eau, et voici que les cieux s’ouvrirent : il vit l’Esprit de Dieu descendre comme une colombe et venir sur lui. Et des cieux, une voix disait : “Celui-ci est mon Fils bien-aimé, en qui je trouve ma joie.";
      ssM2Text =
          "Le troisième jour, il y eut un mariage à Cana de Galilée. La mère de Jésus était là. Jésus aussi avait été invité au mariage avec ses disciples. Or, on manqua de vin. La mère de Jésus lui dit : “Ils n’ont pas de vin.” Jésus lui répond : “Femme, que me veux-tu ? Mon heure n’est pas encore venue.” Sa mère dit à ceux qui servaient : “Tout ce qu’il vous dira, faites-le.";
      ssM3Text =
          "Les temps sont accomplis : le règne de Dieu est tout proche. Convertissez-vous et croyez à l’Évangile.";
      ssM4Text =
          "Six jours après, Jésus prend avec lui Pierre, Jacques et Jean son frère, et il les emmène à l’écart, sur une haute montagne. Il fut transfiguré devant eux ; son visage devint brillant comme le soleil, et ses vêtements, blancs comme la lumière.";
      ssM5Text =
          "Pendant le repas, Jésus, ayant pris du pain et prononcé la bénédiction, le rompit et, le donnant aux disciples, il dit : “Prenez, mangez : ceci est mon corps.";
    }

    return SafeArea(
      child: Scaffold(
          key: _key,
          drawer: navigationDrawer(),
          body: Container(
            alignment: Alignment.center,
            decoration: ThemeHelper.fullScreenBgBoxDecoration(),
            child: Column(
              children: [
                //drawerToggleButton(),
                Column(
                  children: [
                    headerText(mystere),
                    const SizedBox(height: 32),
                    ...homeScreenButtons(context),
                    const SizedBox(height: 32),
                    bottomText("Amen")
                  ],
                ),
              ],
            ),
          ),
          appBar: AppBar(
              title: const Text('Réciter le Chapelet'),
              backgroundColor: const Color.fromARGB(255, 22, 131, 153),
              actions: [
                DropdownButton(
                  value: valeur,
                  items: const [
                    //add items in the dropdown
                    DropdownMenuItem(
                        value: "Les Mystères Joyeux",
                        child: Text("Les Mystères Joyeux")),
                    DropdownMenuItem(
                      value: "Les Mystères Douloureux",
                      child: Text("Les Mystères Douloureux"),
                    ),
                    DropdownMenuItem(
                      value: "Les Mystères Glorieux",
                      child: Text("Les Mystères Glorieux"),
                    ),
                    DropdownMenuItem(
                      value: "Les Mystères Lumineux",
                      child: Text("Les Mystères Lumineux"),
                    ),
                  ],
                  onChanged: (value) {
                    //get value when changed
                    valeur = value.toString();
                    Navigator.pushReplacementNamed(
                        context, HomeScreen.routeName);
                    //print("You selected $value");
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.access_time),
                  tooltip: 'Remet au mystère de la date du jour',
                  onPressed: () {
                    premPassage = 0;
                    Navigator.pushReplacementNamed(
                        context, HomeScreen.routeName);
                  },
                ),
              ])),
    );
  }

  List<String> list = <String>[
    'Les Mystères Joyeux',
    'Les Mystères Douloureux',
    'Les mystères glorieux',
    'Les mystères lumineux'
  ];

  Drawer navigationDrawer() {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
        children: [
          SizedBox(
            height: 150,
            child: DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  border: Border.all(
                    color: Colors.black,
                    width: 8,
                  )),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Aide pour réciter le Chapelet",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  Text(
                    "Version: 1.00",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 35,
            child: ListTile(
              title: const Text('Ecran d accueil'),
              onTap: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
            ),
          ),
          const SizedBox(
            height: 35,
            child: Divider(
              thickness: 4,
            ),
          ),
          SizedBox(
            height: 35,
            child: ListTile(
              title: const Text('CREDO'),
              onTap: () {
                AlertUtil.showAlert(context, "Je crois en Dieu", jeCroixEnDieu);
              },
            ),
          ),
          SizedBox(
            height: 35,
            child: ListTile(
              title: const Text('Je confesse à Dieu'),
              onTap: () {
                AlertUtil.showAlert(
                    context,
                    "Je confesse à Dieu",
                    "Je confesse à Dieu tout-puissant,"
                        "Je reconnais devant vous, frères et sœurs, \n"
                        "que j’ai péché en pensée, en parole, \n"
                        "par action et par omission ; \n"
                        "oui, j’ai vraiment péché. \n"
                        "C’est pourquoi je supplie la bienheureuse Vierge Marie, \n"
                        "les anges et tous les saints, \n"
                        "et vous aussi, frères et sœurs, \n"
                        "de prier pour moi le Seigneur notre Dieu.");
              },
            ),
          ),
          const SizedBox(
            height: 35,
            child: Divider(
              thickness: 4,
            ),
          ),
          SizedBox(
            height: 35,
            child: ListTile(
              title: const Text('A propos'),
              onTap: () {
                AlertUtil.showAlert(
                    context,
                    "Aide pour réciter le Chapelet",
                    "Cette application vous accompagne pour réciter le chapelet. \n"
                        "Chaque jour vous avez les muystères du jour. Ceux que dans le monde entier les chrétiens récitent en même temps.\n"
                        "Pour vous aider à compter les dizaines, il suffit de cliquer à chaque fois sur le bouton illuminé en rouge. \n"
                        "Bon chapelet ! \n\n"
                        "Ce logiciel est Freeware. Il peut être distribué librement. \n"
                        "Le texte contenu ne doit pas être modifié. \n © 2024  AC");
              },
            ),
          ),
          SizedBox(
            height: 35,
            child: ListTile(
              title: const Text('Quitter le programme'),
              onTap: () {
                if (Platform.isAndroid) {
                  SystemNavigator.pop();
                } else if (Platform.isIOS) {
                  exit(0);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Text headerText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 30,
          color: Colors.black87,//ThemeHelper.accentColor,
          fontWeight: FontWeight.bold,
          shadows: const [
            Shadow(
                color: Colors.black87,//ThemeHelper.shadowColor,
                offset: Offset(-5, 5),
                blurRadius: 30)
          ]),
    );
  }

  Text bottomText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 26,
          color: Colors.black45,
          fontWeight: FontWeight.normal,
          shadows: [
            Shadow(
              color: ThemeHelper.primaryColor,
            )
          ]),
    );
  }

  List<Widget> homeScreenButtons(BuildContext context) {
    return [
      Column(
        children: [
          const Column(children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Text("Ca commence ici :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.deepOrangeAccent),
                    textAlign: TextAlign.left))
          ]),
          Row(children: [
            ElevatedButton(
              style: style1,
              onPressed: () {
                style1 = style;
                style2 = styleRed;
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                flutterTts.speak(jeCroixEnDieu);
                AlertUtil.showAlert(context, "Je crois en Dieu", jeCroixEnDieu);
              },
              child: const Text('Je crois en Dieu'),
            ),
          ]),
          Column(children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
            child: Container(
              width: 350,
                decoration: const BoxDecoration(
                    //color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(ssMystere1,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black54),
                        textAlign: TextAlign.left))))
          ]),
          Row(children: [
            ElevatedButton(
              style: style2,
              onPressed: () {
                style2 = style;
                style3 = styleRed;
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                flutterTts.speak(ssM1Text);
                AlertUtil.showAlert(context, ssMystere1, ssM1Text);
              },
              child: const Text("1er    Mystère   "),
            ),
          ]),
          Column(children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    width: 350,
                decoration: const BoxDecoration(
                    //color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(ssMystere2,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black54),
                        textAlign: TextAlign.left))))
          ]),
          Row(children: [
            ElevatedButton(
              style: style3,
              onPressed: () {
                style3 = style;
                style4 = styleRed;
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                flutterTts.speak(ssM2Text);
                AlertUtil.showAlert(context, ssMystere2, ssM2Text);
              },
              child: const Text("2ème Mystère   "),
            ),
          ]),
          Column(children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    width: 350,
                decoration: const BoxDecoration(
                    //color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(ssMystere3,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black54),
                        textAlign: TextAlign.left))))
          ]),
          Row(children: [
            ElevatedButton(
              style: style4,
              onPressed: () {
                style4 = style;
                style5 = styleRed;
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                flutterTts.speak(ssM3Text);
                AlertUtil.showAlert(context, ssMystere3, ssM3Text);
              },
              child: const Text("3ème Mystère   "),
            ),
          ]),
          Column(children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 350,
              decoration: const BoxDecoration(
                  //color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(ssMystere4,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black54),
                      textAlign: TextAlign.start)),
            ),)
          ]),
          Row(children: [
            ElevatedButton(
              style: style5,
              onPressed: () {
                style5 = style;
                style6 = styleRed;
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                flutterTts.speak(ssM4Text);
                AlertUtil.showAlert(context, ssMystere4, ssM4Text);
              },
              child: const Text("4ème Mystère   "),
            ),
          ]),
          Column(children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    width: 350,
                decoration: const BoxDecoration(
                    //color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(ssMystere5,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black54),
                        textAlign: TextAlign.start)))
            )]),
          Row(children: [
            ElevatedButton(
              style: style6,
              onPressed: () {
                style6 = style;
                style1 = styleRed;
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                flutterTts.speak(ssM5Text);
                AlertUtil.showAlert(context, ssMystere5, ssM5Text);
              },
              child: const Text("5ème Mystère   "),
            ),
          ]),
          const Column(children: <Widget>[
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "\n  *: cliquez sur le mystère pour afficher le texte correspondant au mystère.\n"
                    "   La couleur rouge sur le mystère permet de repérer où on en est dans notre prière. \n"
                    "   à chaque clic sur le mystère en rouge, le rouge passe au mystère suivant."))
          ]),
        ],
      )
    ];
  }
}
