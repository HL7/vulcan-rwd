Alias: $ICD10CM = http://hl7.org/fhir/sid/icd-10-cm
Alias: $RxNorm = http://www.nlm.nih.gov/research/umls/rxnorm
Alias: $NDC = http://hl7.org/fhir/sid/ndc
Alias: $EMEAPRODS = http://example.org/emeaproducts

ValueSet: ExampleACSConditionCodes
Title: "ACS Example Condition Codes"
Description: "An example value set of ICD-10 codes for the Acute Coronary Syndrome use case."
* ^experimental = true
* $ICD10CM#I24.0
* $ICD10CM#I21
* $ICD10CM#I21.9
* $ICD10CM#I25.720
* $ICD10CM#I25.710
* $ICD10CM#I25.760
* $ICD10CM#I25.700
* $ICD10CM#I25.750
* $ICD10CM#I25.730
* $ICD10CM#I25.790
* $ICD10CM#I25.110
* $ICD10CM#I21.A1
* $ICD10CM#I21.4
* $ICD10CM#I21.A9
* $ICD10CM#I21.A
* $ICD10CM#I21.02
* $ICD10CM#I21.21
* $ICD10CM#I21.01
* $ICD10CM#I21.09
* $ICD10CM#I21.19
* $ICD10CM#I21.29
* $ICD10CM#I21.11
* $ICD10CM#I21.0
* $ICD10CM#I21.1
* $ICD10CM#I21.2
* $ICD10CM#I21.3
* $ICD10CM#I22
* $ICD10CM#I22.0
* $ICD10CM#I22.1
* $ICD10CM#I22.8
* $ICD10CM#I22.9
* $ICD10CM#I22.2
* $ICD10CM#I20.0

ValueSet: ExampleACSOralAntiplatelets
Title: "ACS Example Oral Antiplatelet Drug Codes"
Description: "An example value set of drug codes for oral antiplatelets for the Acute Coronary Syndrome use case."
* ^experimental = true
* codes from valueset ExampleClopidogrelCodes
* codes from valueset ExampleTicagrelorCodes
* codes from valueset ExamplePrasugrelCodes

ValueSet: ExampleClopidogrelCodes
Title: "ACS Example Clopidogrel Codes"
Description: "An example value set of codes for Clopidogrel for the Acute Coronary Syndrome use case."
* ^experimental = true
* $RxNorm#236991
* $RxNorm#1181790
* $RxNorm#1181791
* $RxNorm#32968
* $RxNorm#749195
* $NDC#50228012190
* $RxNorm#749196
* $NDC#43547048503
* $NDC#50268018412
* $NDC#43547048510
* $NDC#69367019430
* $NDC#69367019405
* $NDC#62034001773
* $NDC#64679031503
* $NDC#50268018411
* $NDC#55648031500
* $NDC#62034001711
* $NDC#16729021946
* $NDC#31722090201
* $NDC#55111067106
* $NDC#31722090290
* $NDC#55648031502
* $NDC#55111067131
* $NDC#55111067190
* $NDC#64679031501
* $NDC#55111067178
* $NDC#55111067179
* $NDC#55111067181
* $NDC#55648031501
* $NDC#64679031504
* $NDC#16729021945
* $NDC#16729021910
* $NDC#55111067130
* $NDC#64679031502
* $NDC#55111067101
* $NDC#68084075225
* $NDC#55111067148
* $NDC#60505353205
* $NDC#50228012105
* $NDC#51079055801
* $NDC#42543071401
* $NDC#55648031504
* $NDC#42543071490
* $NDC#51079055803
* $NDC#31722090205
* $NDC#60429011033
* $NDC#55111067105
* $NDC#16729021975
* $NDC#50228012130
* $NDC#68084075295
* $NDC#42543071430
* $NDC#42543071405
* $NDC#904646707
* $NDC#31722090230
* $NDC#63653133202
* $RxNorm#749198
* $NDC#63653133203
* $RxNorm#749197
* $NDC#435470485
* $NDC#425430714
* $NDC#3783628
* $NDC#167290219
* $NDC#510790558
* $NDC#556480315
* $NDC#646790315
* $NDC#680840537
* $NDC#317220902
* $RxNorm#329449
* $NDC#68071489803
* $NDC#65862035761
* $NDC#68788746309
* $NDC#68788746303
* $NDC#68645059090
* $NDC#68788746306
* $NDC#50228012405
* $NDC#50090130000
* $NDC#50228012490
* $NDC#70518047101
* $NDC#31722090105
* $NDC#61919073790
* $NDC#70518189800
* $RxNorm#309362
* $NDC#63629804501
* $NDC#31722090190
* $NDC#71335123201
* $NDC#70518151000
* $NDC#71335123202
* $NDC#53002167200
* $NDC#71335123204
* $NDC#53002167203
* $NDC#71335075203
* $NDC#70518213600
* $NDC#71335075204
* $NDC#71335123203
* $NDC#71399750002
* $NDC#70518107901
* $NDC#43547048403
* $NDC#71335075201
* $NDC#68788723803
* $NDC#71335075202
* $NDC#71205007330
* $NDC#71399750001
* $NDC#70518138300
* $NDC#71399750003
* $NDC#67046010021
* $NDC#71399750005
* $NDC#67046010015
* $NDC#71399750009
* $NDC#70518071700
* $NDC#43547048409
* $NDC#67046009915
* $NDC#43547048450
* $NDC#67046009914
* $NDC#68788723806
* $NDC#67046009960
* $NDC#68788723809
* $NDC#67046010028
* $NDC#70518107902
* $NDC#67046009921
* $NDC#71205007360
* $NDC#67046009907
* $NDC#71205007390
* $NDC#71717010109
* $NDC#67046010007
* $NDC#76519101602
* $NDC#67046009920
* $NDC#71093014204
* $NDC#70518075000
* $NDC#68071426809
* $NDC#67046010030
* $NDC#70518099100
* $NDC#67046010060
* $NDC#71335008001
* $NDC#67046010014
* $NDC#71335008002
* $NDC#67046009930
* $NDC#51407003210
* $NDC#67046009928
* $NDC#51407003230
* $NDC#71717010150
* $NDC#51407003290
* $NDC#71717010103
* $NDC#70400010110
* $NDC#68071413803
* $NDC#70400010130
* $NDC#76519101603
* $NDC#70400010190
* $NDC#71093014205
* $NDC#64980034303
* $NDC#70518047102
* $NDC#71335140902
* $NDC#55700057090
* $NDC#71335140904
* $NDC#70518099000
* $NDC#70710141700
* $NDC#71335008003
* $NDC#70771106209
* $NDC#71335008004
* $NDC#63187063990
* $NDC#71335058101
* $NDC#70771106205
* $NDC#71335058102
* $NDC#70710141703
* $NDC#71335058103
* $NDC#70518047100
* $NDC#71335058104
* $NDC#64980034309
* $NDC#31722090101
* $NDC#64980034350
* $NDC#70518107900
* $NDC#69117101001
* $NDC#50090491800
* $NDC#615801430
* $NDC#71335140901
* $NDC#68071403103
* $NDC#71335140903
* $NDC#43353026930
* $NDC#70518040000
* $NDC#615801405
* $NDC#69117101004
* $NDC#69117101002
* $NDC#70771106200
* $NDC#63629685701
* $NDC#68071331909
* $NDC#70710141705
* $NDC#50090259800
* $NDC#68071402303
* $NDC#65862035799
* $NDC#70771106203
* $NDC#93731498
* $NDC#63187063930
* $NDC#47335089481
* $NDC#68788632409
* $NDC#66116049430
* $NDC#63187036260
* $NDC#13668014190
* $NDC#69117101003
* $NDC#68788632403
* $NDC#70786006003
* $NDC#33342006007
* $NDC#68788632406
* $NDC#33261098730
* $NDC#615801439
* $NDC#60505025304
* $NDC#63187036230
* $NDC#16729021815
* $NDC#63187036290
* $NDC#64679031404
* $NDC#70518040001
* $NDC#68645043054
* $NDC#68071405709
* $NDC#70710141709
* $NDC#51079055701
* $NDC#50436998603
* $NDC#63629472802
* $NDC#43353026960
* $NDC#68788978506
* $NDC#68071157809
* $NDC#70882011630
* $NDC#47335089413
* $NDC#63187063960
* $NDC#47335089419
* $NDC#70786006001
* $NDC#68084060901
* $NDC#54458088816
* $NDC#55648031400
* $NDC#50090259801
* $NDC#60505025305
* $NDC#60505025301
* $NDC#47335089418
* $NDC#63629472801
* $NDC#60429030190
* $NDC#55111019630
* $NDC#33342006015
* $NDC#60429030110
* $NDC#65862035730
* $NDC#13668014110
* $NDC#68645044370
* $NDC#93731456
* $NDC#68788978509
* $NDC#55648031401
* $NDC#68071153303
* $NDC#16729021816
* $NDC#63629472803
* $NDC#65862035710
* $NDC#64679031401
* $NDC#60505025303
* $NDC#68084060911
* $NDC#65862035705
* $NDC#50436998601
* $NDC#13668014130
* $NDC#13668014174
* $NDC#33342006012
* $NDC#93731405
* $NDC#33261098790
* $NDC#65862035701
* $NDC#55154337600
* $NDC#43063037190
* $NDC#378362793
* $NDC#60429030130
* $NDC#904629461
* $NDC#51079055720
* $NDC#13668014101
* $NDC#13668014105
* $NDC#55111019690
* $NDC#64679031402
* $NDC#55648031404
* $NDC#43063037130
* $NDC#65162041409
* $NDC#63629472804
* $NDC#62034001501
* $NDC#47335089483
* $NDC#68151311809
* $NDC#65162041411
* $NDC#65862035790
* $NDC#53808061602
* $NDC#55111019601
* $NDC#55648031402
* $NDC#58118035706
* $NDC#68788978503
* $NDC#53808080602
* $NDC#378362777
* $NDC#33261098760
* $NDC#50228012410
* $NDC#43063037160
* $NDC#68084053611
* $NDC#58118035709
* $NDC#13668014144
* $NDC#58118035703
* $NDC#65162041450
* $NDC#53808100201
* $NDC#42543071305
* $NDC#42543071330
* $NDC#378362705
* $NDC#53808100202
* $NDC#55111019605
* $NDC#615771930
* $NDC#55154538800
* $NDC#31722090130
* $NDC#60505025302
* $NDC#16729021846
* $NDC#33261098700
* $NDC#55648031403
* $NDC#16729021810
* $NDC#60505399203
* $NDC#64679031403
* $NDC#62034001590
* $NDC#62034001530
* $NDC#61919000730
* $NDC#58118035708
* $NDC#68084053601
* $NDC#65162041403
* $NDC#615771939
* $NDC#64205035730
* $NDC#62034001577
* $NDC#50228012430
* $NDC#615771905
* $NDC#42543071390
* $NDC#42543071301
* $NDC#42543071310
* $NDC#53808102501
* $NDC#53808103101
* $NDC#33342006010
* $NDC#31722090110
* $RxNorm#213169
* $NDC#52959077830
* $NDC#63653117105
* $NDC#55289091115
* $NDC#67544050460
* $NDC#55289091130
* $NDC#13411011703
* $NDC#53808076301
* $NDC#13411011706
* $NDC#63629159801
* $NDC#67046060430
* $NDC#63629159804
* $NDC#63653117106
* $NDC#33261052830
* $NDC#66105011909
* $NDC#58864074830
* $NDC#63874056410
* $NDC#63874056490
* $NDC#66105011903
* $NDC#63629159803
* $NDC#63629159802
* $NDC#66105011901
* $NDC#67544050430
* $NDC#66105011906
* $NDC#13411011702
* $NDC#13411011709
* $NDC#66105011915
* $NDC#63874056430
* $NDC#13411011701
* $NDC#63653117103
* $NDC#63653117101
* $NDC#67544050474
* $RxNorm#573094
* $NDC#717170101
* $NDC#435470484
* $NDC#765191016
* $NDC#713350581
* $NDC#680711578
* $NDC#705180400
* $NDC#680714031
* $NDC#651620414
* $NDC#687886324
* $NDC#617860276
* $NDC#707860060
* $NDC#333420060
* $NDC#425430713
* $NDC#687887463
* $NDC#705180991
* $NDC#619190737
* $NDC#713351409
* $NDC#680714138
* $NDC#631870362
* $NDC#500904918
* $NDC#707101417
* $NDC#617860972
* $NDC#3783627
* $NDC#707711062
* $NDC#6157719
* $NDC#636294728
* $NDC#510790557
* $NDC#937314
* $NDC#544580888
* $NDC#551545388
* $NDC#607600735
* $NDC#167290218
* $NDC#661160494
* $NDC#538081025
* $NDC#686450430
* $NDC#556480314
* $NDC#619190007
* $NDC#646790314
* $NDC#317220901
* $NDC#686450443
* $NDC#521250174
* $NDC#551546278
* $RxNorm#1163766
* $RxNorm#374583
* $RxNorm#368301
* $RxNorm#1163767
* $NDC#502680184
* $NDC#636531332
* $NDC#693670194
* $NDC#502280121
* $NDC#620340017
* $NDC#551110671
* $NDC#551543488
* $NDC#605053532
* $NDC#9046467
* $NDC#604290110
* $NDC#680840752
* $NDC#551542022
* $NDC#705180195
* $NDC#9046294
* $NDC#136680141
* $NDC#551543376
* $NDC#430630371
* $NDC#493490995
* $NDC#493490990
* $NDC#521250046
* $NDC#686450590
* $NDC#500902082
* $NDC#500901300
* $NDC#636298045
* $NDC#705181898
* $NDC#705182136
* $NDC#530021672
* $NDC#705181383
* $NDC#713351232
* $NDC#713350752
* $NDC#687887238
* $NDC#680714268
* $NDC#712050073
* $NDC#705180990
* $NDC#713997500
* $NDC#705181079
* $NDC#433530269
* $NDC#572370189
* $NDC#710930142
* $NDC#691171010
* $NDC#514070032
* $NDC#705180717
* $NDC#557000570
* $NDC#708820116
* $NDC#649800343
* $NDC#504369986
* $NDC#704000101
* $NDC#636531171
* $NDC#713350080
* $NDC#605050253
* $NDC#6158014
* $NDC#605053992
* $NDC#631870639
* $NDC#687889785
* $NDC#636296857
* $NDC#670460099
* $NDC#216950665
* $NDC#680711533
* $NDC#502280124
* $NDC#680713319
* $NDC#521250960
* $NDC#680714023
* $NDC#538080616
* $NDC#680714057
* $NDC#538080806
* $NDC#538080763
* $NDC#538081002
* $NDC#548684070
* $NDC#551110196
* $NDC#548686336
* $NDC#552890911
* $NDC#332610987
* $NDC#581180357
* $NDC#473350894
* $NDC#658620357
* $NDC#521250879
* $NDC#670460604
* $NDC#604290301
* $NDC#680840536
* $NDC#620340015
* $NDC#642050357
* $NDC#681513118
* $NDC#617860123
* $NDC#521250243
* $NDC#680840609
* $NDC#551546683
* $NDC#551542016
* $NDC#545694700
* $NDC#636291598
* $NDC#499990402
* $NDC#165900288
* $NDC#242360824
* $NDC#680714898
* $NDC#500902598
* $NDC#705180750
* $NDC#705181510
* $NDC#670460100
* $NDC#705180471
* $NDC#538081031
* $NDC#50090208200
* $NDC#50090208201
* $NDC#70518019500
* $NDC#57237018999
* $NDC#57237018930
* $NDC#57237018905
* $NDC#57237018990
* $NDC#60429030101
* $NDC#60429030177
* $NDC#54868633601
* $NDC#54868633600
* $NDC#54458088810
* $NDC#60760073590
* $NDC#60760073530
* $NDC#54868407002
* $NDC#54868407000
* $NDC#54868407001
* $NDC#16590028860
* $NDC#16590028890
* $NDC#16590028830
* $NDC#21695066530
* $NDC#21695066590
* $NDC#13668014171
* $NDC#378362805
* $NDC#247187400
* $NDC#247187430
* $NDC#247187477
* $NDC#247187460
* $NDC#247187490
* $NDC#61786097219
* $NDC#64679031500
* $NDC#64679031400
* $NDC#55154668307
* $NDC#55154668304
* $NDC#55154348806
* $NDC#49999040230
* $NDC#49999040290
* $NDC#55154202200
* $NDC#55154201600
* $NDC#61786012319
* $NDC#50090130101
* $NDC#50090130100
* $NDC#54569632700
* $NDC#54569632701
* $NDC#54569470000
* $NDC#54569470002
* $NDC#61786027620
* $NDC#61786027619
* $NDC#55154627809
* $NDC#61786027602
* $NDC#68258600603
* $NDC#68084053795
* $NDC#52125024302
* $NDC#52125024319
* $NDC#52125087902
* $NDC#52125096002
* $NDC#68084053725
* $NDC#42254039590
* $NDC#42254023890
* $NDC#42254023830
* $NDC#42254039530
* $NDC#49349099519
* $NDC#49349099002
* $NDC#51138024630
* $NDC#52125004602
* $NDC#52125017402
* $NDC#24236082423
* $NDC#66267129903
* $NDC#66267069660
* $NDC#66267069615
* $NDC#49848000190
* $NDC#60505353202
* $NDC#60505353200
* $NDC#378362877
* $NDC#378362893
* $NDC#55048007830
* $NDC#68258607309
* $NDC#68258607303
* $NDC#60429030160
* $NDC#59762670002
* $NDC#54868554600
* $NDC#55154201607
* $NDC#53360133203
* $NDC#58016001407
* $NDC#58016001410
* $NDC#58016001406
* $NDC#49856025303
* $NDC#49856025304
* $NDC#67228026106
* $NDC#58016001401
* $NDC#58016001404
* $NDC#58016001409
* $NDC#67228026103
* $NDC#67544065131
* $NDC#58016001403
* $NDC#58016001408
* $NDC#49856025302
* $NDC#58016001402
* $NDC#58016001405
* $NDC#49856025301
* $NDC#58016091015
* $NDC#58016091027
* $NDC#58016091044
* $NDC#58016091079
* $NDC#58016091083
* $NDC#58016091001
* $NDC#58016091012
* $NDC#58016091089
* $NDC#24236036502
* $NDC#58016091076
* $NDC#58016091060
* $NDC#67216017101
* $NDC#58016091024
* $NDC#58016091040
* $NDC#58016091070
* $NDC#58016091069
* $NDC#58016091032
* $NDC#58016091042
* $NDC#58016091092
* $NDC#58016091091
* $NDC#58016091021
* $NDC#58016091067
* $NDC#58016091090
* $NDC#58016091004
* $NDC#58016091006
* $NDC#58016091026
* $NDC#58016091007
* $NDC#58016091081
* $NDC#67216017103
* $NDC#58016091028
* $NDC#35919117100
* $NDC#58016091084
* $NDC#58016091030
* $NDC#58016091080
* $NDC#58016091003
* $NDC#58016091000
* $NDC#24236082402
* $NDC#67216017106
* $NDC#58016091016
* $NDC#62584013150
* $NDC#58016091008
* $NDC#58016091010
* $NDC#58016091072
* $NDC#58016091097
* $NDC#58016091020
* $NDC#58016091098
* $NDC#615458331
* $NDC#58016091018
* $NDC#58016091005
* $NDC#62301007171
* $NDC#58016091073
* $NDC#58016091087
* $NDC#58016091045
* $NDC#58016091096
* $NDC#53360117100
* $NDC#67216017105
* $NDC#58016091014
* $NDC#58016091002
* $NDC#58016091050
* $NDC#58016091082
* $NDC#24236036501
* $NDC#58016091048
* $NDC#58016091099
* $NDC#58016091075
* $NDC#58016091036
* $NDC#58016091025
* $NDC#58016091035
* $NDC#58016091056
* $NDC#615458339
* $NDC#58016091009
* $NDC#58016091071
* $NDC#58016091077
* $NDC#58016001490
* $NDC#58016001400
* $NDC#49999086230
* $NDC#247227330
* $NDC#58016001430
* $NDC#247227360
* $NDC#58016001460
* $NDC#63653117110
* $NDC#63653117104
* $NDC#68115085590
* $NDC#63653117130
* $NDC#63653117109
* $NDC#68115085560
* $NDC#68115085530
* $NDC#615458363

ValueSet: ExamplePrasugrelCodes
Title: "ACS Example Prasugrel Codes"
Description: "An example value set of codes for Prasugrel for the Acute Coronary Syndrome use case."
* ^experimental = true
* $RxNorm#1173221
* $RxNorm#1173222
* $RxNorm#613391
* $RxNorm#855810
* $NDC#16729027310
* $NDC#60687041221
* $NDC#60687041211
* $NDC#48792782101
* $NDC#65862083010
* $NDC#65162000203
* $NDC#60505464303
* $NDC#65862083030
* $RxNorm#855812
* $NDC#67877060530
* $NDC#50090411800
* $NDC#65862083003
* $NDC#66993057630
* $NDC#43817024001
* $NDC#440060530
* $NDC#51407024830
* $NDC#378518693
* $RxNorm#855816
* $NDC#2512307
* $NDC#2512330
* $NDC#2512377
* $NDC#2512301
* $RxNorm#855814
* $NDC#606870412
* $NDC#651620002
* $NDC#167290273
* $NDC#514070248
* $NDC#4400605
* $NDC#3785186
* $NDC#500904118
* $NDC#605054643
* $NDC#438170240
* $NDC#658620830
* $NDC#678770605
* $RxNorm#855817
* $NDC#48792782201
* $NDC#16729027210
* $NDC#65162000103
* $NDC#67877060430
* $NDC#60505464203
* $NDC#43817023901
* $NDC#65862082910
* $RxNorm#855818
* $NDC#65862082903
* $NDC#66993057530
* $NDC#65862082930
* $NDC#378518593
* $NDC#440060430
* $NDC#51407024730
* $RxNorm#855820
* $NDC#2512152
* $NDC#2512101
* $NDC#2512130
* $RxNorm#855819
* $NDC#651620001
* $NDC#167290272
* $NDC#4400604
* $NDC#514070247
* $NDC#3785185
* $NDC#438170239
* $NDC#605054642
* $NDC#658620829
* $NDC#678770604
* $RxNorm#1165745
* $RxNorm#855811
* $RxNorm#855815
* $RxNorm#1165746
* $RxNorm#847020
* $NDC#25123
* $NDC#487927821
* $NDC#669930576
* $NDC#548686238
* $NDC#551541831
* $NDC#669930575
* $NDC#487927822
* $NDC#25121
* $NDC#54868623800
* $NDC#378518605
* $NDC#378518677
* $NDC#55154183100
* $NDC#378518505
* $NDC#378518577
* $NDC#54569627500
* $NDC#2475930
* $NDC#2475901
* $NDC#2475977
* $NDC#2476030
* $NDC#2476076
* $NDC#2475961

ValueSet: ExampleTicagrelorCodes
Title: "ACS Example Ticagrelor Codes"
Description: "An example value set of codes for Ticagrelor for the Acute Coronary Syndrome use case."
* ^experimental = true
* $RxNorm#1176340
* $RxNorm#1176341
* $RxNorm#1116632
* $RxNorm#1666331
* $RxNorm#1666332
* $RxNorm#1666334
* $RxNorm#1666333
* $RxNorm#1116633
* $RxNorm#1116635
* $RxNorm#1116639
* $NDC#186077718
* $NDC#186077728
* $RxNorm#1116637
* $RxNorm#1157089
* $RxNorm#1116634
* $RxNorm#1116638
* $RxNorm#1157090
* $NDC#186077694
* $NDC#186077660
* $NDC#1860776
* $NDC#69238113401
* $NDC#69238113406
* $NDC#55154961808
* $NDC#186077739
* $NDC#186077708
* $NDC#186077760
* $NDC#55154961800
* $NDC#692381134
* $NDC#1860777
* $NDC#636295292
* $NDC#551549618
* $NDC#63629529201

ValueSet: ExampleAntiTNFAConditionCodes
Title: "AntiTNFA Example Condition Codes"
Description: "An example value set of ICD-10 codes for the Anti-TNFA use case for Crohn's Disease."
* ^experimental = true
* $ICD10CM#K50.0
* $ICD10CM#K50.00
* $ICD10CM#K50.01
* $ICD10CM#K50.011
* $ICD10CM#K50.012
* $ICD10CM#K50.013
* $ICD10CM#K50.014
* $ICD10CM#K50.018
* $ICD10CM#K50.019
* $ICD10CM#K50.1
* $ICD10CM#K50.10
* $ICD10CM#K50.11
* $ICD10CM#K50.111
* $ICD10CM#K50.112
* $ICD10CM#K50.113
* $ICD10CM#K50.114
* $ICD10CM#K50.118
* $ICD10CM#K50.119
* $ICD10CM#K50.8
* $ICD10CM#K50.80
* $ICD10CM#K50.81
* $ICD10CM#K50.811
* $ICD10CM#K50.812
* $ICD10CM#K50.813
* $ICD10CM#K50.814
* $ICD10CM#K50.818
* $ICD10CM#K50.819
* $ICD10CM#K50.9
* $ICD10CM#K50.90
* $ICD10CM#K50.91
* $ICD10CM#K50.911
* $ICD10CM#K50.912
* $ICD10CM#K50.913
* $ICD10CM#K50.914
* $ICD10CM#K50.918
* $ICD10CM#K50.919

ValueSet: ExampleAntiTNFADrugCodes
Title: "AntiTNFA Example Drug Codes"
Description: "An example value set of EMEA product codes for Hyrimoz and Zessly drug products."
* ^experimental = true
* $EMEAPRODS#EMEA/H/C/004647
* $EMEAPRODS#EMEA/H/C/004320
