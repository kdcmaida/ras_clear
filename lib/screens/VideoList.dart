import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ras_clear/model/playlist.dart';
import 'package:ras_clear/screens/player_screen.dart';
import 'package:ras_clear/widget/VideoItem.dart';
import 'dart:io';
import 'package:admob_flutter/admob_flutter.dart';

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
        youtubelist.add(PlayList('mewar part 1', 'jo25NCCYiaY', 'video'));
        youtubelist.add(PlayList('mewar part 2', 'HJyj6GKv1FI', 'video'));
        youtubelist.add(PlayList('mewar part 3', 'PEm26FdLB04', 'video'));
        youtubelist.add(PlayList('marvar 1st', 'UuRRWAuxuUQ', 'video'));
        youtubelist.add(PlayList('marvar 2nd', 'gUPXjOSR_U4', 'video'));
        youtubelist.add(PlayList('bikaner 1st', 'onf30TccAxo', 'video'));
        youtubelist.add(PlayList('bikaner 2nd', 'QUD8CVjltLc', 'video'));
        youtubelist.add(PlayList('Chohan 1st', 'soJ6hF4WnYA', 'video'));
        youtubelist.add(PlayList('Chohan 2nd', 'JbuopuYCuwQ', 'video'));
        youtubelist.add(PlayList('boondi', 'DDM-xNr6bYo', 'video'));
        youtubelist.add(PlayList('boondi', 'DDM-xNr6bYo', 'adview'));
        youtubelist
            .add(PlayList('kota & Nadol Chohan', 'n4A6RXujhsg', 'video'));
        youtubelist.add(PlayList('jaipur 1', 'fGmFEul14gU', 'video'));
        youtubelist.add(PlayList('jaipur 2', 'EDPuqRUCipo', 'video'));
        youtubelist.add(PlayList('jaipur 3', 'tJ2Gs-rr5Ic', 'video'));
      } else if (this.tool_title == 'RAS SCIENCE') {
        youtubelist.add(PlayList(
            'Nano Technology C1P1 RAS science videos-What is nano Technology, generations of nano Technology',
            'TinXbX2kVGE',
            'video'));
        youtubelist.add(PlayList(
            'Nano Technology C1P2 RAS Science Videos -Carbon Nano Tube,Nano tech.,use of Nano Tech.',
            'DcKamNsUwUg',
            'video'));
        youtubelist.add(PlayList(
            'NANO TECH. C1P3 RAS SCIENCE Nano v/s General drug, Nano v/s General surgery,nano wires,smart dust',
            'sxFPPk8Lsu4',
            'video'));
        youtubelist.add(PlayList(
            'Nano Technology Revision And Conclusion C1P4, 3d printing process and its benefit for india',
            'rmDZ0t-i9Nw',
            'video'));
        youtubelist.add(PlayList(
            'Nuclear technology C2P1-RAS Science videos,nuclear fusion and nuclear fission,india nuclear reactor',
            'Kn1CEDUU1pg',
            'video'));
        youtubelist.add(PlayList(
            'Nuclear technology C2P2 -Fast breedor reactor,india 3 stage nuclear programme,radio isotopes and use',
            'CVG5elnEAKY',
            'video'));
        youtubelist.add(PlayList(
            'Nuclear Tech. RAS C2P3-uses of radio isotopes,nuclear drugs, institutions working,ITER,INO',
            'sktTIdpv1KU',
            'video'));
        youtubelist.add(PlayList(
            'Nuclear Technology (RAS) Revision and Conclusion C2P4, isotopes, Reactor, Nuclear drugs,ITER, INO',
            'xf6aNMFXmlk',
            'video'));
        youtubelist.add(PlayList(
            'Telecommunication C3P1 RAS- Indian telecom industry with brief history,optical fiber',
            '2tezmdWA5os',
            'video'));
        youtubelist.add(PlayList(
            'Telecommunication C3P2 RAS-Satellite phone,mobile jammer,TDMA,FDMA,CDMA,GSM Working,WI-FI,Bluetooth',
            'pJZFilhaShQ',
            'video'));
        youtubelist.add(PlayList(
            'Telecommunication C3P2 RAS-Satellite phone,mobile jammer,TDMA,FDMA,CDMA,GSM Working,WI-FI,Bluetooth',
            'pJZFilhaShQ',
            'adview'));
        youtubelist.add(PlayList(
            'Telecommunication C3P3 RAS-TRAI its working,MNP,Telecom sector uses,telecom policy 2018',
            'kyeq9ZanLv0',
            'video'));
        youtubelist.add(PlayList(
            'Telecommunication C3P4 RAS-Revision of indian telecom policy 2018,CDMA,GSM,MNP,OPTICAL & COPPER WIRE',
            'xSf7pPjdSSs',
            'video'));
        youtubelist.add(PlayList(
            'Electro Magnetic wave C4P1 RAS-cosmic rays,gamma,x,uv,visible ray,infrared ,radio wave,radar use',
            'f9NsLe2t3vA',
            'video'));
        youtubelist.add(PlayList(
            'Electromagnetic Waves C4P2 RAS Science video- REVISION e-commerce,e-govrnance,communication systems',
            'sDzsLnzMRMs',
            'video'));
        youtubelist.add(PlayList(
            'Defence C5P1 RAS- Ballistic & cruise missile and difference,IGMDP Program"PRITHVI,AGNI,NAG MISSILE"',
            'b-a6MhVdbYI',
            'video'));
        youtubelist.add(PlayList(
            'Defence C5P2 RAS-Bhramos,Nirbhay,Astra,Barak missile,Interceptor misile diffence system,role of DRDO',
            'pSFW5SV7UQs',
            'video'));
        youtubelist.add(PlayList(
            'Defence C5P3 RAS- Biological & Chemical weapons, Treaties to abolish these weapons, Muntra',
            'GzWd0aSdh_8',
            'video'));
        youtubelist.add(PlayList('Defence C5P4 RAS Science & Tech.- Conclusion',
            'k3m4QHEgGWg', 'video'));
        youtubelist.add(PlayList(
            'States of matter C6P1-Plasma state,bose einstien condensate,classical & modern states of matter',
            'oeTXGldbokA',
            'video'));
        youtubelist.add(PlayList(
            'Allotropes of carbon C7P1-Diamond,Graphite,fullrene,Black carbon,Coke,Charcoal,Coal,',
            'WYGfz7O1eTk',
            'video'));
        youtubelist.add(PlayList(
            'Allotropes of carbon C7P1-Diamond,Graphite,fullrene,Black carbon,Coke,Charcoal,Coal,',
            'WYGfz7O1eTk',
            'adview'));
        youtubelist.add(PlayList(
            'Ph C8P1 RAS-PH Definition,fomula,importance of pH in general life,remedies to maintain pH',
            'QqkPdEFAVqw',
            'video'));
        youtubelist.add(PlayList(
            'Corrosion C9P1 RAS-definition,process of corrosion,methods to prevent corrosion,electroplating,alloy',
            'i0ecXClx1NU',
            'video'));
        youtubelist.add(PlayList(
            'Polymers C10P1 RAS SCIENCE VIDEO-definition,types of polymers,polyethene and polyster properties',
            'xfNVtiY9_UM',
            'video'));
        youtubelist.add(PlayList(
            'POLYMERS C10P2 RAS Science video-nylon 66,teflon,reyon,poly viny chloride,bakelite making process',
            'u7CGzwNUoZw',
            'video'));
        youtubelist.add(PlayList(
            'CATALYST C11P1 RAS SCIENCE VIDEO-Catalyst Definition,properties of catalyst ,types of catalysts',
            'eInbcdw_sQk',
            'video'));
        youtubelist.add(PlayList(
            'Quality Of Water C16P1 ras mainsvideo-Quality Of Water,ideal water,ph,TDS,Nitrate,turbidity of water',
            'IDsM7eobj7M',
            'video'));
        youtubelist.add(PlayList(
            'Quality of Water C16P2 RAS mains videos,katadian filter,ultra filter,reverse osmosis (r.o.),clorine',
            '-0USMNbLehU',
            'video'));
        youtubelist.add(PlayList(
            'Ecosystem C20P1 DEFINITION AND WORK OF ECOSYSTEM,HOMEOSTASIS,FOOD CHAIN,TRANSFER OF ENERGY IN ECOLOG',
            'dI1Y25BQV2Q',
            'video'));
        youtubelist.add(PlayList(
            'Ecosystem C20P2 RAS-gross & net ecological efficiency,bio magnification & solution,algal bloom',
            'SdsLrWGD9DY',
            'video'));
        youtubelist.add(PlayList(
            'Ecosystem C20P3 RAS- wet lands ,montrex record,eco sensitive zone,coral reef ,coral bleaching',
            '4srNoPNLTeY',
            'video'));
        youtubelist.add(PlayList(
            'Ecosystem C20P3 RAS- wet lands ,montrex record,eco sensitive zone,coral reef ,coral bleaching',
            '4srNoPNLTeY',
            'adview'));
        youtubelist.add(PlayList(
            'Composition of Atmosphere C21P1 RAS MAINS -Biogeochemical cycle, H2O & CO2 Cycle',
            '6CC8i4uO9yM',
            'video'));
        youtubelist.add(PlayList(
            'COMPOSITION OF ENVIRONMENT C21P2 RAS MAINS-CONCLUSION OF C20&C21 ,NITROGEN CYCLE',
            'gq-P46lNivw',
            'video'));
        youtubelist.add(PlayList(
            'Water resources RAS Mains C25P1-water resources and techniques of traditional water conservation',
            'dS4zT44fodo',
            'video'));
        youtubelist.add(PlayList(
            'WATER RESOURCES C25P2 RASMAINS- water resources and techniques of traditional water resources',
            'wvP-lxxcdas',
            'video'));
        youtubelist.add(PlayList(
            'Wild LIfe Protection C24P1-स्वस्थाने-बहिस्थाने,राष्ट्रीय पार्क,अभ्यारण्य,मृगवन,आखेट निषेध क्षेत्र',
            '0gPPm8rVqAE',
            'video'));
        youtubelist.add(PlayList(
            'Biotechnology c14p1 ras science videos-biotechnology and biofuels & biofuelpolicy 2018,R&D Technique',
            'ljl1Wv2ztIo',
            'video'));
        youtubelist.add(PlayList(
            'Biotechnology c14p2 ras science videos-biotechnology and biofuels & biofuelpolicy 2018,R&D Technique',
            '0IIOWZ3BsJE',
            'video'));
        youtubelist.add(PlayList(
            'Biotechnology C14P3 ras science videos-biotechnology and GREEN bio tech,Flvr Savr,Hashi,Golden rice',
            'sVk-EZxR6gw',
            'video'));
        youtubelist.add(PlayList(
            'Biotechnology C14P4 ras science videos-Blue & white biotechnology,bio tech. uses for environment',
            'AUOaNqLt7bA',
            'video'));
        youtubelist.add(PlayList(
            'Biotechnology C14P5 ras science videos-red bio technology,bio generic thraputics,bio sensors,cloning',
            '8nmE90SjO38',
            'video'));
        youtubelist.add(PlayList(
            'Biotechnology C14P5 ras science videos-red bio technology,bio generic thraputics,bio sensors,cloning',
            '8nmE90SjO38',
            'adview'));
        youtubelist.add(PlayList(
            'Biotechnology C14P6 ras science videos-Pro & Cons of cloning,human genome project,conclusion',
            'CeTmS2te4M8',
            'video'));
        youtubelist.add(PlayList(
            'सार्वजनिक स्वास्थ्य उपक्रम C18P1-health & public health definition,प्राथमिक एवं सामुदायिक स्वास्थ्य',
            '8aFYl7IOL_0',
            'video'));
        youtubelist.add(PlayList(
            'सार्वजनिक स्वास्थ्य उपक्रम C18P2-आयुष्मान भारत मिशन,प्रधानमंत्री जन औषधि योजना,अन्य सरकारी योजना',
            'rL6gWqZMBS4',
            'video'));
        youtubelist.add(PlayList(
            'सार्वजनिक स्वास्थ्य उपक्रम C18P3-health & public health definition,प्राथमिक एवं सामुदायिक स्वास्थ्य',
            'elXtXY03jT8',
            'video'));
        youtubelist.add(PlayList(
            'Environment pollution C23P1 RAS Science videos-environment degradation and pollution definition etc',
            'hYZl_WD9yW8',
            'video'));
        youtubelist.add(PlayList(
            'Environment pollution C23P2 RAS Science videos-वायु ,ध्वनि ,रेडिओधर्मी प्रदूषण कारण ,प्रभाव ,हल',
            '_wbffweX6_U',
            'video'));
        youtubelist.add(PlayList(
            'पर्यावरण प्रदूषण C23P3 ठोस अपशिष्ट परिभाषा एवं प्रकार ,अपशिष्ट प्रबंधन नियम 2011 RAS Science videos',
            'uuAnTcO4Z9o',
            'video'));
        youtubelist.add(PlayList(
            'पर्यावरण प्रदूषण C23P4 e-अपशिष्ट परिभाषा एवं प्रबंधन,Conclusion RAS Science videos',
            'ohPXcROLuqc',
            'video'));
        youtubelist.add(PlayList(
            'जलवायु परिवर्तन C22P1 RAS Science videos-नव्यकरणीय एवं अनव्यकरणीय ऊर्जा एवं इनके स्रोत,प्राकृतिक गैस',
            'kWO8wGpJMHY',
            'video'));
        youtubelist.add(PlayList(
            'जलवायु परिवर्तन C22P2 RAS Science video-शैल गैस उत्पादन,विधि,coal bed methane,UCG,offsore wind power',
            '_8VaXrbDuSQ',
            'video'));
        youtubelist.add(PlayList(
            'जलवायु परिवर्तन C22P2 RAS Science video-शैल गैस उत्पादन,विधि,coal bed methane,UCG,offsore wind power',
            '_8VaXrbDuSQ',
            'adview'));
        youtubelist.add(PlayList(
            'जलवायु परिवर्तन C22P3 Green house effect(हरित गृह प्रभाव ),इसके कारण,प्रभाव,दुष्परिणाम,प्रमुख गैसें',
            '8zGFEh8DTUw',
            'video'));
        youtubelist.add(PlayList(
            'जलवायु परिवर्तन C22P4 जलवायु परिवर्तन रोकने के उपाय ,क्वोटो प्रोटोकॉल शर्तें व् उद्देश्य',
            'tLeeUZZncjA',
            'video'));
        youtubelist.add(PlayList(
            'जलवायु परिवर्तन C22P5- पेरिस जलवायु समझौता ,किगाली समझौता ,COP-24 एवं निष्कर्ष',
            'y4kGreUF4R4',
            'video'));
        youtubelist.add(PlayList(
            'मानव अंग C13P1-मानव श्वसन तंत्र एवं श्वसन क्रियाविधि ,सम्बंधित बीमारी',
            'nFUAtxXQErc',
            'video'));
        youtubelist.add(PlayList(
            'मानव परिसंचरण तंत्र C13P2-हृदय ,रक्त के कार्य ,महाधमनी ,महाशिरा ,हृदय एवं फेफड़ों की कार्यविधि',
            'blVGIIvCh7E',
            'video'));
        youtubelist.add(PlayList(
            'मानव पाचन तंत्र C13P3 RAS science video', '9rK2k6PUFvw', 'video'));
        youtubelist.add(PlayList('मानव उत्सर्जन तंत्र C13P4 RAS Science videos',
            'W02v4swzEo4', 'video'));
        youtubelist.add(PlayList(
            'नर जनन तंत्र c13p5 ras science video-नर जनन अंग के कार्य',
            '7bLWWWk6HD8',
            'video'));
        youtubelist.add(PlayList(
            'मादा जनन तंत्र C13P6 ras science video-मादा जनन अंग की संरचना एवं कार्य',
            'fVcOT7GhBLU',
            'video'));
      } else if (this.tool_title == 'RAJASTHAN GEOGRAPHY') {
        youtubelist
            .add(PlayList('Rajasthan geography -01', '1nyRMj1JYeU', 'video'));
        youtubelist
            .add(PlayList('Rajasthan geography-02', 'Y7fP6A6e2h8', 'video'));
        youtubelist.add(PlayList(
            'Rajasthan geography-03 Rajasthan interstate boundries',
            'X1sz2hwLsLE',
            'video'));
        youtubelist
            .add(PlayList('Rajasthan Geography-04', 'YHKSCus7Cps', 'video'));
        youtubelist.add(PlayList(
            'rajasthan geography-05,north western desert area,arid and semi arid zone',
            'AaqAeqhtqIU',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan geography-06,राजस्थान के भौतिक प्रभाग, उ.प. मरुस्थलीय प्रदेश एवं उसकी विशेषताएँ',
            'k8PWN-Yj7L8',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-07, अरावली प्रदेश एवं इसकी प्रमुख छोटी एवं दर्रे',
            'PaY8lGaQjAs',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-08 राजस्थान का दक्षिण पूर्वी मैदानी प्रदेश',
            'TwxVuSo79aE',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-09 राजस्थान का दक्षिणि पूर्वी पठारी भाग',
            '1XFrLFT7fyI',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-10 अरब सागरीय अपवाह तंत्र',
            'gJQ_LEvNPVA',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-10 अरब सागरीय अपवाह तंत्र',
            'gJQ_LEvNPVA',
            'adview'));
        youtubelist
            .add(PlayList('RAJASTHAN GEOGRAPHY-11', 'XxxKnuRZu7A', 'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-12 चम्बल नदी अपवाह तंत्र ras mains,ras pre,1st grade,2nd grade,patwari,gramsevak',
            'hojPl425-TE',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-13RAS Mainsबंगाल की खाड़ी में गिरने वाली नदियां जैसे -बनास ,आयड़ ,गंभीर ,पार्बती',
            'h8gGV9wy33A',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-14 क्षील मीठे एवं खारे पानी की क्षील ras mains,patwar,1st grade,reet,rtet,',
            'gTpRM12dcYM',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-15 क्षील मीठे एवं खारे पानी की क्षील ras mains,patwar,1st grade,reet,rtet',
            'S_iY609KcIE',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-16 राजस्थान की मृदा एवं उनका वितरण ras mains,patwar,1st grade,reet,rtet,police',
            'w16nMFxowDM',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-17 राजस्थान की मृदा एवं उनका वितरण ras mains,patwar,1st grade,reet,rtet,police',
            'H8sq5nqbjfU',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-18 वन नीति एवं राजस्थान की वनगणना ras mains,patwar,1st grade,reet,rtet',
            'ZqP5uqzfgg8',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-19 राजस्थान की वनस्पति एवं उनकी विशेषताएं ras mains,patwar,1st grade,reet,rtet',
            'q-EjmG4E1U4',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-20 स्वस्थाने-बहिस्थाने,राष्ट्रीय पार्क,अभ्यारण्य,मृगवन,आखेट निषेध क्षेत्र',
            'prUUCrfIN_k',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-20 स्वस्थाने-बहिस्थाने,राष्ट्रीय पार्क,अभ्यारण्य,मृगवन,आखेट निषेध क्षेत्र',
            'prUUCrfIN_k',
            'adview'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-21 सिंचाई परियोजना ras mains,patwar,1st grade,reet,rtet,rajasthan police,bstc',
            'lxEhalECkCQ',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-22 सिंचाई परियोजना ras mains,patwar,1st grade,reet,rtet,rajasthan police,bstc',
            'wHSyusmba5M',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-23 खनिज एवं ऊर्जा संसाधन ras mains,patwar,1st grade,reet,rajasthan police,bstc',
            'KLcALVp8Pm4',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-24 खनिज एवं ऊर्जा संसाधन ras mains,patwar,1st grade,reet,rtet,rajasthan police',
            'vEmKXnQV8dM',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-25 खनिज एवं ऊर्जा संसाधन ras mains,patwar,1st grade,reet,rtet,rajasthan police',
            'AIKQHRrcKtk',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-26 राजस्थान की जनगणना ras mains,patwar,1st grade,reet,rtet,rajasthanpolice,bstc',
            'X9Ct8LmmiKk',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-27 राजस्थान की जनगणना ras mains,patwar,1st grade,reet,rtet,rajasthanpolice,bstc',
            'lHsleE3QPZk',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-28 राजस्थान की जनजातियाँ I ras mains,patwar,1st grade,reet,rajasthan police,bstc',
            'FhVmbhnkQkI',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-29 राजस्थान की जनजातियाँ II ras mains,patwar,1st grade,reet,rajastan police,bstc',
            '3XXgldVgdiw',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-30 राजस्थान की पशु सम्पदा ras mains,patwar,1st grade,reet,rajasthan police,bstc',
            'dzGdn-QdLcg',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-30 राजस्थान की पशु सम्पदा ras mains,patwar,1st grade,reet,rajasthan police,bstc',
            'dzGdn-QdLcg',
            'adview'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-31 राजस्थान की पशु सम्पदा पार्ट 2ras,patwar,1st grade,reet,rajasthan police,bstc',
            'UFpTKErr-jI',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-32 राजस्थान की कृषि ras,patwar,1st grade,reet,rajasthan police,bstc',
            'tIEPIKLuhUw',
            'video'));
        youtubelist.add(PlayList(
            'Rajasthan Geography-33 राजस्थान की कृषि part 2 ras,patwar,1st grade,reet,rajasthan police,bstc',
            'eTwIKAa8wIo',
            'video'));
      } else if (this.tool_title == 'CHRONOLOGY AND OTHER GUIDES DISCUSSION') {
        youtubelist.add(PlayList('', '', 'video'));
        youtubelist.add(PlayList('', '', 'video'));
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
          if (this.youtubelist[position].viewtype=='video') {
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
          } else {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: ClipRRect(
                // rounded corners ad.
                borderRadius: BorderRadius.circular(40.0),
                child: AdmobBanner(
                  adUnitId: getBannerAdUnitId(),
                  adSize: AdmobBannerSize.LEADERBOARD,
                ),
              ),
            );
          }
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

  String getBannerAdUnitId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
    }
    return null;
  }
}
