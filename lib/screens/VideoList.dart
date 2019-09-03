import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ras_clear/model/playlist.dart';
import 'package:ras_clear/screens/player_screen.dart';
import 'package:ras_clear/widget/VideoItem.dart';

class VideoList extends StatefulWidget {
  final String tool_title;

  VideoList(this.tool_title);

  @override
  _VideoListState createState() => _VideoListState(this.tool_title);
}

class _VideoListState extends State<VideoList> {
  final String tool_title;

  _VideoListState(this.tool_title);

  List<PlayList> youtubelist;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    if (youtubelist == null) {
      youtubelist = List<PlayList>();
      if (this.tool_title == 'RAJASTHAN HISTORY') {
        youtubelist.add(PlayList('mewar part 1', 'jo25NCCYiaY'));
        youtubelist.add(PlayList('mewar part 2', 'HJyj6GKv1FI'));
        youtubelist.add(PlayList('mewar part 3', 'PEm26FdLB04'));
        youtubelist.add(PlayList('marvar 1st', 'UuRRWAuxuUQ'));
        youtubelist.add(PlayList('marvar 2nd', 'gUPXjOSR_U4'));
        youtubelist.add(PlayList('bikaner 1st', 'onf30TccAxo'));
        youtubelist.add(PlayList('bikaner 2nd', 'QUD8CVjltLc'));
        youtubelist.add(PlayList('Chohan 1st', 'soJ6hF4WnYA'));
        youtubelist.add(PlayList('Chohan 2nd', 'JbuopuYCuwQ'));
        youtubelist.add(PlayList('boondi', 'DDM-xNr6bYo'));
        youtubelist.add(PlayList('kota & Nadol Chohan', 'n4A6RXujhsg'));
        youtubelist.add(PlayList('jaipur 1', 'fGmFEul14gU'));
        youtubelist.add(PlayList('jaipur 2', 'EDPuqRUCipo'));
        youtubelist.add(PlayList('jaipur 3', 'tJ2Gs-rr5Ic'));
      } else if (this.tool_title == 'RAS SCIENCE') {
        youtubelist.add(PlayList(
            'Nano Technology C1P1 RAS science videos-What is nano Technology, generations of nano Technology',
            'TinXbX2kVGE'));
        youtubelist.add(PlayList(
            'Nano Technology C1P2 RAS Science Videos -Carbon Nano Tube,Nano tech.,use of Nano Tech.',
            'DcKamNsUwUg'));
        youtubelist.add(PlayList(
            'NANO TECH. C1P3 RAS SCIENCE Nano v/s General drug, Nano v/s General surgery,nano wires,smart dust',
            'sxFPPk8Lsu4'));
        youtubelist.add(PlayList(
            'Nano Technology Revision And Conclusion C1P4, 3d printing process and its benefit for india',
            'rmDZ0t-i9Nw'));
        youtubelist.add(PlayList(
            'Nuclear technology C2P1-RAS Science videos,nuclear fusion and nuclear fission,india nuclear reactor',
            'Kn1CEDUU1pg'));
        youtubelist.add(PlayList(
            'Nuclear technology C2P2 -Fast breedor reactor,india 3 stage nuclear programme,radio isotopes and use',
            'CVG5elnEAKY'));
        youtubelist.add(PlayList(
            'Nuclear Tech. RAS C2P3-uses of radio isotopes,nuclear drugs, institutions working,ITER,INO',
            'sktTIdpv1KU'));
        youtubelist.add(PlayList(
            'Nuclear Technology (RAS) Revision and Conclusion C2P4, isotopes, Reactor, Nuclear drugs,ITER, INO',
            'xf6aNMFXmlk'));
        youtubelist.add(PlayList(
            'Telecommunication C3P1 RAS- Indian telecom industry with brief history,optical fiber',
            '2tezmdWA5os'));
        youtubelist.add(PlayList(
            'Telecommunication C3P2 RAS-Satellite phone,mobile jammer,TDMA,FDMA,CDMA,GSM Working,WI-FI,Bluetooth',
            'pJZFilhaShQ'));
        youtubelist.add(PlayList(
            'Telecommunication C3P3 RAS-TRAI its working,MNP,Telecom sector uses,telecom policy 2018',
            'kyeq9ZanLv0'));
        youtubelist.add(PlayList(
            'Telecommunication C3P4 RAS-Revision of indian telecom policy 2018,CDMA,GSM,MNP,OPTICAL & COPPER WIRE',
            'xSf7pPjdSSs'));
        youtubelist.add(PlayList(
            'Electro Magnetic wave C4P1 RAS-cosmic rays,gamma,x,uv,visible ray,infrared ,radio wave,radar use',
            'f9NsLe2t3vA'));
        youtubelist.add(PlayList(
            'Electromagnetic Waves C4P2 RAS Science video- REVISION e-commerce,e-govrnance,communication systems',
            'sDzsLnzMRMs'));
        youtubelist.add(PlayList(
            'Defence C5P1 RAS- Ballistic & cruise missile and difference,IGMDP Program"PRITHVI,AGNI,NAG MISSILE"',
            'b-a6MhVdbYI'));
        youtubelist.add(PlayList(
            'Defence C5P2 RAS-Bhramos,Nirbhay,Astra,Barak missile,Interceptor misile diffence system,role of DRDO',
            'pSFW5SV7UQs'));
        youtubelist.add(PlayList(
            'Defence C5P3 RAS- Biological & Chemical weapons, Treaties to abolish these weapons, Muntra',
            'GzWd0aSdh_8'));
        youtubelist.add(PlayList(
            'Defence C5P4 RAS Science & Tech.- Conclusion', 'k3m4QHEgGWg'));
        youtubelist.add(PlayList(
            'States of matter C6P1-Plasma state,bose einstien condensate,classical & modern states of matter',
            'oeTXGldbokA'));
        youtubelist.add(PlayList(
            'Allotropes of carbon C7P1-Diamond,Graphite,fullrene,Black carbon,Coke,Charcoal,Coal,',
            'WYGfz7O1eTk'));
        youtubelist.add(PlayList(
            'Ph C8P1 RAS-PH Definition,fomula,importance of pH in general life,remedies to maintain pH',
            'QqkPdEFAVqw'));
        youtubelist.add(PlayList(
            'Corrosion C9P1 RAS-definition,process of corrosion,methods to prevent corrosion,electroplating,alloy',
            'i0ecXClx1NU'));
        youtubelist.add(PlayList(
            'Polymers C10P1 RAS SCIENCE VIDEO-definition,types of polymers,polyethene and polyster properties',
            'xfNVtiY9_UM'));
        youtubelist.add(PlayList(
            'POLYMERS C10P2 RAS Science video-nylon 66,teflon,reyon,poly viny chloride,bakelite making process',
            'u7CGzwNUoZw'));
        youtubelist.add(PlayList(
            'CATALYST C11P1 RAS SCIENCE VIDEO-Catalyst Definition,properties of catalyst ,types of catalysts',
            'eInbcdw_sQk'));
        youtubelist.add(PlayList(
            'Quality Of Water C16P1 ras mainsvideo-Quality Of Water,ideal water,ph,TDS,Nitrate,turbidity of water',
            'IDsM7eobj7M'));
        youtubelist.add(PlayList(
            'Quality of Water C16P2 RAS mains videos,katadian filter,ultra filter,reverse osmosis (r.o.),clorine',
            '-0USMNbLehU'));
        youtubelist.add(PlayList(
            'Ecosystem C20P1 DEFINITION AND WORK OF ECOSYSTEM,HOMEOSTASIS,FOOD CHAIN,TRANSFER OF ENERGY IN ECOLOG',
            'dI1Y25BQV2Q'));
        youtubelist.add(PlayList(
            'Ecosystem C20P2 RAS-gross & net ecological efficiency,bio magnification & solution,algal bloom',
            'SdsLrWGD9DY'));
        youtubelist.add(PlayList(
            'Ecosystem C20P3 RAS- wet lands ,montrex record,eco sensitive zone,coral reef ,coral bleaching',
            '4srNoPNLTeY'));
        youtubelist.add(PlayList(
            'Composition of Atmosphere C21P1 RAS MAINS -Biogeochemical cycle, H2O & CO2 Cycle',
            '6CC8i4uO9yM'));
        youtubelist.add(PlayList(
            'COMPOSITION OF ENVIRONMENT C21P2 RAS MAINS-CONCLUSION OF C20&C21 ,NITROGEN CYCLE',
            'gq-P46lNivw'));
        youtubelist.add(PlayList(
            'Water resources RAS Mains C25P1-water resources and techniques of traditional water conservation',
            'dS4zT44fodo'));
        youtubelist.add(PlayList(
            'WATER RESOURCES C25P2 RASMAINS- water resources and techniques of traditional water resources',
            'wvP-lxxcdas'));
        youtubelist.add(PlayList(
            'Wild LIfe Protection C24P1-स्वस्थाने-बहिस्थाने,राष्ट्रीय पार्क,अभ्यारण्य,मृगवन,आखेट निषेध क्षेत्र',
            '0gPPm8rVqAE'));
        youtubelist.add(PlayList(
            'Biotechnology c14p1 ras science videos-biotechnology and biofuels & biofuelpolicy 2018,R&D Technique',
            'ljl1Wv2ztIo'));
        youtubelist.add(PlayList(
            'Biotechnology c14p2 ras science videos-biotechnology and biofuels & biofuelpolicy 2018,R&D Technique',
            '0IIOWZ3BsJE'));
        youtubelist.add(PlayList(
            'Biotechnology C14P3 ras science videos-biotechnology and GREEN bio tech,Flvr Savr,Hashi,Golden rice',
            'sVk-EZxR6gw'));
        youtubelist.add(PlayList(
            'Biotechnology C14P4 ras science videos-Blue & white biotechnology,bio tech. uses for environment',
            'AUOaNqLt7bA'));
        youtubelist.add(PlayList(
            'Biotechnology C14P5 ras science videos-red bio technology,bio generic thraputics,bio sensors,cloning',
            '8nmE90SjO38'));
        youtubelist.add(PlayList(
            'Biotechnology C14P6 ras science videos-Pro & Cons of cloning,human genome project,conclusion',
            'CeTmS2te4M8'));
        youtubelist.add(PlayList(
            'सार्वजनिक स्वास्थ्य उपक्रम C18P1-health & public health definition,प्राथमिक एवं सामुदायिक स्वास्थ्य',
            '8aFYl7IOL_0'));
        youtubelist.add(PlayList(
            'सार्वजनिक स्वास्थ्य उपक्रम C18P2-आयुष्मान भारत मिशन,प्रधानमंत्री जन औषधि योजना,अन्य सरकारी योजना',
            'rL6gWqZMBS4'));
        youtubelist.add(PlayList(
            'सार्वजनिक स्वास्थ्य उपक्रम C18P3-health & public health definition,प्राथमिक एवं सामुदायिक स्वास्थ्य',
            'elXtXY03jT8'));
        youtubelist.add(PlayList(
            'Environment pollution C23P1 RAS Science videos-environment degradation and pollution definition etc',
            'hYZl_WD9yW8'));
        youtubelist.add(PlayList(
            'Environment pollution C23P2 RAS Science videos-वायु ,ध्वनि ,रेडिओधर्मी प्रदूषण कारण ,प्रभाव ,हल',
            '_wbffweX6_U'));
        youtubelist.add(PlayList(
            'पर्यावरण प्रदूषण C23P3 ठोस अपशिष्ट परिभाषा एवं प्रकार ,अपशिष्ट प्रबंधन नियम 2011 RAS Science videos',
            'uuAnTcO4Z9o'));
        youtubelist.add(PlayList(
            'पर्यावरण प्रदूषण C23P4 e-अपशिष्ट परिभाषा एवं प्रबंधन,Conclusion RAS Science videos',
            'ohPXcROLuqc'));
        youtubelist.add(PlayList(
            'जलवायु परिवर्तन C22P1 RAS Science videos-नव्यकरणीय एवं अनव्यकरणीय ऊर्जा एवं इनके स्रोत,प्राकृतिक गैस',
            'kWO8wGpJMHY'));
        youtubelist.add(PlayList(
            'जलवायु परिवर्तन C22P2 RAS Science video-शैल गैस उत्पादन,विधि,coal bed methane,UCG,offsore wind power',
            '_8VaXrbDuSQ'));
        youtubelist.add(PlayList(
            'जलवायु परिवर्तन C22P3 Green house effect(हरित गृह प्रभाव ),इसके कारण,प्रभाव,दुष्परिणाम,प्रमुख गैसें',
            '8zGFEh8DTUw'));
        youtubelist.add(PlayList(
            'जलवायु परिवर्तन C22P4 जलवायु परिवर्तन रोकने के उपाय ,क्वोटो प्रोटोकॉल शर्तें व् उद्देश्य',
            'tLeeUZZncjA'));
        youtubelist.add(PlayList(
            'जलवायु परिवर्तन C22P5- पेरिस जलवायु समझौता ,किगाली समझौता ,COP-24 एवं निष्कर्ष',
            'y4kGreUF4R4'));
        youtubelist.add(PlayList(
            'मानव अंग C13P1-मानव श्वसन तंत्र एवं श्वसन क्रियाविधि ,सम्बंधित बीमारी',
            'nFUAtxXQErc'));
        youtubelist.add(PlayList(
            'मानव परिसंचरण तंत्र C13P2-हृदय ,रक्त के कार्य ,महाधमनी ,महाशिरा ,हृदय एवं फेफड़ों की कार्यविधि',
            'blVGIIvCh7E'));
        youtubelist.add(
            PlayList('मानव पाचन तंत्र C13P3 RAS science video', '9rK2k6PUFvw'));
        youtubelist.add(PlayList(
            'मानव उत्सर्जन तंत्र C13P4 RAS Science videos', 'W02v4swzEo4'));
        youtubelist.add(PlayList(
            'नर जनन तंत्र c13p5 ras science video-नर जनन अंग के कार्य',
            '7bLWWWk6HD8'));
        youtubelist.add(PlayList(
            'मादा जनन तंत्र C13P6 ras science video-मादा जनन अंग की संरचना एवं कार्य',
            'fVcOT7GhBLU'));
//        youtubelist.add(PlayList('', ''));
//        youtubelist.add(PlayList('', ''));
//        youtubelist.add(PlayList('', ''));
      }
      setState(() {
        this.count = youtubelist.length;
      });
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            this.tool_title,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: getNoteListView());
  }

  ListView getNoteListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) {
          return Card(
              color: Colors.white,
              elevation: 2.0,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.play_arrow),
                  ),
                  title: Text(
                    this.youtubelist[position].ListTitle,
                    style: titleStyle,
                  ),
                  onTap: () {
                    debugPrint('ListTile Tapped');
                    navigateToDetail(this.youtubelist[position]);
                  },
                ),
              ));
        });
  }

  void navigateToDetail(PlayList list) async {
    bool result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Player(list);
    }));

    if (result == true) {
//      updateListView();
    }
  }
}
