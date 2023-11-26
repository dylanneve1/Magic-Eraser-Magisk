gms=/data/data/com.google.android.gms/databases/phenotype.db
sqlite=$MODPATH/addon/sqlite3
app=/data/app/*

chmod 0755 $sqlite

flaglogfile=/sdcard/Pixelify/flaglog.txt

gacc="$("$sqlite" "$gms" "SELECT DISTINCT(user) FROM Flags WHERE user != '';")"

AUDIO_ERASER=0a0d6e697869655f6e6f6e5f747075129601124f68747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f6e697869652d6173736574732f7333326734733132302e74666c6974652e656e6320a095ee082a28363537343265663566386433323132363234646131653864393034623037656434383330653332653a147333326734733132302e74666c6974652e656e63129001124c68747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f6e697869652d6173736574732f6333327366632e74666c6974652e656e6320d0eefa022a28376231356433393063633561326535316633366336626236623765653163633566373461626439333a116333327366632e74666c6974652e656e631880c60a321e636f6d2e676f6f676c652e616e64726f69642e617070732e70686f746f735000
MAGIC_EDITOR=0a0475646f6e129501124e68747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f75646f6e2d6173736574732f666c726276326631362e74666c6974652e656e6320c0c9c6012a28616566616233396163613633353466616261643638623738643466336535656131333231303661393a14666c726276326631362e74666c6974652e656e63129f01125368747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f75646f6e2d6173736574732f6d7276313266706e3736386633322e74666c6974652e656e6320e0b2f60f2a28393430663239623137313064383331616437383431306633663438613536646636366461303932363a196d7276313266706e3736386633322e74666c6974652e656e63129501124e68747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f75646f6e2d6173736574732f72666d3531327161742e74666c6974652e656e632090be8e012a28346166303832333637393539656431613433363235303533346139303063646637303233373334373a1472666d3531327161742e74666c6974652e656e63128d01124a68747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f75646f6e2d6173736574732f72697377732e74666c6974652e656e6320a0f3c5022a28623336633364343561656232306431343632376437376639623137616631383931353137656531363a1072697377732e74666c6974652e656e63129101124c68747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f75646f6e2d6173736574732f6d62776d6631352e74666c6974652e656e6320e0fbdc082a28613939373661653432343262623432646363383731333833653736393330613239313138393861643a126d62776d6631352e74666c6974652e656e63129301124d68747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f75646f6e2d6173736574732f707463776c3830312e74666c6974652e656e6320f0ada1022a28623262306563353734383262663661326365326431363032663931386139326664646366363664313a13707463776c3830312e74666c6974652e656e63129501124e68747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f75646f6e2d6173736574732f726d3334636c736d652e74666c6974652e656e6320b086e4012a28343463393435356264363566646539303533323237316532323637616337353933663936616339613a14726d3334636c736d652e74666c6974652e656e63128701124768747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f75646f6e2d6173736574732f73732e74666c6974652e656e6320f081f8022a28373639306564376637346430643030626365316162303764343864333836363061633636336462333a0d73732e74666c6974652e656e631880c60a321e636f6d2e676f6f676c652e616e64726f69642e617070732e70686f746f735002
ME3=0a0a6d65335f706978656c129501125068747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f706c3363776c382e74666c6974652e656e6320f0ada1022a28383864303331363536626535393663663138306330383566623332366232363233386238323963353a12706c3363776c382e74666c6974652e656e63128b01124c68747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f687373646176352e70622e656e6320a0012a28376231346232343935363761663936363936396531393234363531663131653064393239616633353a0e687373646176352e70622e656e6312ac01125c68747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f687373646c3862346f76352e333230783332302e74666c6974652e656e6320e0d9552a28333333363466646364393264396634383231643064343866303934316230616261313866613761633a1e687373646c3862346f76352e333230783332302e74666c6974652e656e63129101124e68747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f72697377732e74666c6974652e656e6320a0f3c5022a28663938656237336661303431306435396633613465613237323165623061303033633531353165373a1072697377732e74666c6974652e656e63129101124e68747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f72707377732e74666c6974652e656e6320a088a2022a28353535326431383438366465376634646334376636613834316533356533386136363039393232383a1072707377732e74666c6974652e656e63129101124e68747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f72697377612e74666c6974652e656e632088fcc5022a28303432303261346665356562343564663663333435616436373635653837303039663464633131323a1072697377612e74666c6974652e656e63129501125068747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f687269323632632e74666c6974652e656e6320e0eea2022a28633563643863306566366663616332363830323535636463653632396461336465346530633131393a12687269323632632e74666c6974652e656e6312a801125a68747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f707373646c386276322e333030783330302e74666c6974652e656e6320b099552a28393765646661636431306338313834346433336538653132646438333938326435623566303034333a1c707373646c386276322e333030783330302e74666c6974652e656e6312ad01125c68747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f707373646c386276322e3132303078313230302e74666c6974652e656e632080a1eb012a28346531653161323835306265616538616563356333623438303333323839633262663430346661623a1e707373646c386276322e3132303078313230302e74666c6974652e656e6312b401126068747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f64735f66656174757265735f6e6f2e3330305f313230302e74666c6974652e656e632090c40a2a28613033313834353839313635383563306533666436383762346539666431353332333432383631373a2264735f66656174757265735f6e6f2e3330305f313230302e74666c6974652e656e63128f01124d68747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f7266736d2e74666c6974652e656e632090be8e012a28386665316266323561363332373037356630313834333731356233333066646161396261646431373a0f7266736d2e74666c6974652e656e63129901125268747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f706c3363776c3531332e74666c6974652e656e632080c69b012a28663461646130343037373364326162633165653934343639626435333362666538303430396531653a14706c3363776c3531332e74666c6974652e656e63128d01124d68747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f70737364617631312e70622e656e632090022a28356261356330313666353930663332396431636566316630393564653062656533376131356462383a0f70737364617631312e70622e656e63128b01124c68747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f707373646176322e70622e656e632080042a28323531396366613861333133373064343661656531646332613133373361376233383535613465333a0e707373646176322e70622e656e63128f01124d68747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f72616f642e74666c6974652e656e6320b0d594032a28313837313030393665313834393932366430376365346666343532653535343230333134623635353a0f72616f642e74666c6974652e656e63129f01125568747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f68635f3235365f7267625f622e74666c6974652e656e6320b0dca5012a28323331666239626164363039366238653334306363303766386264343863616535366364653731393a1768635f3235365f7267625f622e74666c6974652e656e63129501125068747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f7269735f6f626a2e74666c6974652e656e6320d0ddc5022a28383463326536626132363033356161396234313665626466393134323464366564653039656565613a127269735f6f626a2e74666c6974652e656e63128b01124b68747470733a2f2f7777772e677374617469632e636f6d2f70686f746f732d6d692d6d6f64656c732f70726570726f636573736564362d6173736574732f73732e74666c6974652e656e6320f081f8022a28613962613966343466393439353830663831333639303835643264386238343039396539383735663a0d73732e74666c6974652e656e63129001124968747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f75646f6e2d6173736574732f737376322e74666c6974652e656e6320f081f8022a28303662393266646534666564306664316661613133666264343132363035393138383965373235383a1473735f3039323032332e74666c6974652e656e6312a201125468747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f6d65332d6173736574732f6d675f656e635f6a745f3038303932332e74666c6974652e656e6320b0e6e96e2a28333661383262656230396361656334356439616131646131313233323862336332336533636335653a1b6d675f656e635f6a745f3038303932332e74666c6974652e656e63129401124d68747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f6d65332d6173736574732f6d675f6465635f6a742e74666c6974652e656e6320d0a6fb202a28353964383962613432326566383336646530333361633461356230373863306163383938613835313a146d675f6465635f6a742e74666c6974652e656e63128c01124968747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f6d65332d6173736574732f6d675f75702e74666c6974652e656e6320b086ff312a28353465633836646161636165636233653265623134653635633837343439316564633734303165663a106d675f75702e74666c6974652e656e631880c60a321e636f6d2e676f6f676c652e616e64726f69642e617070732e70686f746f735003
BESTTAKE=81999bdb991d5944a2c044929a1d1d1c1cce8bcbd91b0b99dbdbd9db194b98dbdb4bdc1a1bdd1bdccbdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbd8db998b9d199b1a5d194b995b98c82822f5448a8a1898d898984d0d8e59998d8d588cd94e4d4c99584d4c4d4d8d4d184d4d0ccdcd0ccc58cc8ccd988d4e8398db998b9d199b1a5d194b995b98c4a44044935a1d1d1c1cce8bcbd91b0b99dbdbd9db194b98dbdb4bdc1a1bdd1bdccbdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbd8db9997dcdbcb9d199b1a5d194b995b98c834317e830a8a0c8d4c4e4d18cc4d8cd99919184e598ccd4d194d8d5958cc0e0d0d8c0cce0ccc8d98d90c19984e4d4e8458db9997dcdbcb9d199b1a5d194b995b98c4a20044919a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbd8db999b0b9d199b1a5d194b995b98c8203ba6c04a8a190ccdcc4d98cc8d990c190c8dcccc99988c188c584d4dce0dd88d0d1959184cd98c188dd90c4e0cce83d8db999b0b9d199b1a5d194b995b98c49f84909a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbd99858dbcb9c188b995b98c82c090a8a18ccd9198d58594e0d4c598e58584d8e0d8cd88c4d1998cccc8c8d8d4d4cce4c0d98ccd98d8d8c994e82d99858dbcb9c188b995b98c4a2804491da1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbd99917d8dbcb9d199b1a5d194b995b98c8343bf3004a8a194e58cd0c8dcc0dd90c8c4e4d8e0d0e59584d0c0d4e0d598e58d8cc4d0d0d0d0c198c1858d919598e84199917d8dbcb9d199b1a5d194b995b98c4a00044909a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbd99b0b9d185cdacb995b98c8242d39404a8a188c4e0e4c9999990dd9584d8d190cd919990c0ccd190d4dcc4d0d4c8c18ccd90dd8ce4d191918d84e82d99b0b9d185cdacb995b98c4a18044915a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbd99b17d8dbcb9d185cdacb995b98c83024ed008a8a0cd90d994c5958cdd98e4c0e4d4d8cd90e0c8dce4d0c194d4d184d0e4c8c4d998d8c8dcd4e0e4dcd8e83999b17d8dbcb9d185cdacb995b98c4a40044929a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbda0c9b0c184c590c0b9d199b1a5d194b995b98c8383ba8808a8a18cc8c9858cc4cce0d98cc4c4d4c194dce4ccd0d8cd88e594cce195918cc0dcc18cc4ccd98cc59998e84da0c9b0c184c590c0b9d199b1a5d194b995b98c49f84909a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbda185d8d4b9c188b995b98c828004a8a0d8cccce0c598e0dd95918cc8ccd0d0cd9594c98cc8e18d98e0c0d0cd90dd90d8d4e184d0d4c4dce4e82da185d8d4b9c188b995b98c4a10044911a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbda188b9d199b1a5d194b995b98c8282964018a8a190d0c8dce59990cd9594e18cc984c188c4c4c4e0c4c0d0d4dd84c990dd8cc18990dd859588d588cce835a188b9d199b1a5d194b995b98c4a3c044929a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbda1b0e188d1bdd8d4b9d199b1a5d194b995b98c8202b954a8a18cc0e0d4e58cd4d598c988d99188d8d58990e0d4d99194c8d4c590c4d0c188d58cd0c4c4ccc59590e84da1b0e188d1bdd8d4b9d199b1a5d194b995b98c4a14044915a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbdb18dd0b9d199b1a5d194b995b98c8242d408a8a0d0c18ce4d8e0e1898588dd88c0e199998cdce0c8e0c0d4ccd0e1918d98e0c4dd98d8c8d4c4cd8cc8e839b18dd0b9d199b1a5d194b995b98c4a30044921a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbdb1b9d8c8c598b9d199b1a5d194b995b98c83c35b1418a8a0c8c8e18cccdd90d5958cc8e0d8e594ccc4e594c4c4d0c8d8d194dce0c8d994ccd988d8c8c8d594d4e845b1b9d8c8c598b9d199b1a5d194b995b98c4a2804491da1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbdb5b8c8d4d8b9d199b1a5d194b995b98c82432b9c08a8a0d8d8dd88cce0e4dd84c4c584c0c584c188d98590dcc98d98c98cdd88c0dcc4e584d988c998d598d8e841b5b8c8d4d8b9d199b1a5d194b995b98c4a28044921a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbdb5b9b1b4b989a5b985c9e5c188b995b98c834008a8a0c8dd8588d8c8d4d0c188dd84d0c8e0dd94c190ccdd90c0d18594d0e18d998cc8dd90c594c8c58d88e845b5b9b1b4b989a5b985c9e5c188b995b98c4a18044915a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbdb9a188b9d199b1a5d194b995b98c8202933c14a8a1998584c4ccd8e1959195898ce4c8ccdce0c0c0c98d84c584c0e4d998d99598ccc188d0e4d0dcc18ce839b9a188b9d199b1a5d194b995b98c4a18044915a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbdc1b5b4b9d199b1a5d194b995b98c83c272140ca8a1998d8994c990cccd98d8d988d984d8e0e0c8d184d8e58584dcd5959188d598d184cd90dce0e59184e839c1b5b4b9d199b1a5d194b995b98c4a2804491da1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbdc1b5b58dbcb9d199b1a5d194b995b98c82c39ab014a8a0dcd4e4c4cd98d0d18cc19598e588d588cccd88d988e590d4dd8588c0c58d94d0d8d19590c0d4d588e841c1b5b58dbcb9d199b1a5d194b995b98c4a18044915a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbdc1bdccb9d199b1a5d194b995b98c8282b3981ca8a198e585859190d194e194c1858988e0c4e590d988d594c0e58d94ccc190d8c0d8e0d0e4e4e0d0c18ce839c1bdccb9d199b1a5d194b995b98c4a30044921a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbdc1bdcd7dcdbcb9d199b1a5d194b995b98c82c2b79c14a8a184e0c0d8d8dce58d90e0c18d859998cce0c0cd90dce0e0e184d5858cc8dcd9918cc58cc0d8e0c188e845c1bdcd7dcdbcb9d199b1a5d194b995b98c4a40044929a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbdc9999db4d4c4c9c4b9d199b1a5d194b995b98c8242fa3804a8a0c8dcd4d8ccc589919984cd98cd998d8d9194e0c584e18d8d90e1859188c994c59598d0e594e4c8e4e84dc9999db4d4c4c9c4b9d199b1a5d194b995b98c4a30044921a1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbdc9c1cd999990b9d199b1a5d194b995b98c8203438c04a8a198c8c18cdcdd90c8d99184e0dcd4d99594dcc0d8e4d4c984c98ce0dcc8dd8994d18984d4d4c0e4cce845c9c1cd999990b9d199b1a5d194b995b98c4a4804492da1d1d1c1cce8bcbddddddcb99dcdd185d1a58cb98dbdb4bdc1a1bdd1bdccb5b5a4b5b5bd9195b1ccbd99bdb991d594b585cdcd95d1ccbdc9c1cd9999917d8dbcb9d199b1a5d194b995b98c82c3226008a8a0c4ccd188c184c8d8c4e191859590d4d18d90c4dd8cd190e0dcdcc58588d18cdcd4d0dce18994d584e851c9c1cd9999917d8dbcb9d199b1a5d194b995b98c62031828c8798dbdb4b99dbdbd9db194b985b991c9bda590b985c1c1ccb9c1a1bdd1bdcd400
GPHOTOS=0a060a04333031360a060a04333031390a060a04343132330a060a04343136350a0a0a0834353335313734380a0a0a0834353336343738300a0a0a0834353336393630320a0a0a0834353337383037330a0a0a0834353338373930330a0a0a0834353431353330310a0a0a0834353432303931320a0a0a083435343136393832
ERASER=0a056d6f636869129001124c68747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f6d6f6368692d6173736574732f7066646d70372e74666c6974652e656e6320f084f80a2a28323533326537643639313930353063326137366234393265663934323933616237366633373030313a117066646d70372e74666c6974652e656e63128f01124c68747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f6d6f6368692d6173736574732f7066646d74772e74666c6974652e656e6320b0c7262a28316364646531376565636439633639626533316532613964316139626266343461386435643533653a117066646d74772e74666c6974652e656e63129001124c68747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f6d6f6368692d6173736574732f7066647266662e74666c6974652e656e6320b0e6e4042a28333561363938363139333633343866373335393330623566616635363638656636373731363761633a117066647266662e74666c6974652e656e63128f01124c68747470733a2f2f646c2e676f6f676c652e636f6d2f70686f746f732f70686f746f732d6d692d6d6f64656c732f6d6f6368692d6173736574732f647266616d772e74666c6974652e656e6320d095362a28613730626161383962653266663936366666366330623234646333623033666137333936373731313a11647266616d772e74666c6974652e656e631880c60a321e636f6d2e676f6f676c652e616e64726f69642e617070732e70686f746f735002

db_edit() {
    sleep .05
    name=$1
    type=$2
    if [ $type == "extensionVal" ]; then
        val=$4
        all_flags=$3
    else
        val=$3
        shift
        shift
        shift
        all_flags=$@
    fi
    OFLAGS="$("$sqlite" "$gms" "SELECT * FROM FlagOverrides WHERE packageName='$name';")"
    if [ $type == "stringVal" ]; then
        val="'$val'"
    fi
    echo "" >>$flaglogfile
    echo "========================" >>$flaglogfile
    echo "- $name patching started" >>$flaglogfile
    for i in $all_flags; do
        FF="$(echo \"$OFLAGS\" | grep $i | head -1)"
        UPDATEFLAGS=0
        echo "" >>$flaglogfile
        echo "Flag Name: $name" >>$flaglogfile
        if [ -z "$FF" ]; then
            UPDATEFLAGS=1
        elif [ "$(echo \"$FF\" | cut -d\| -f6)" != "$val" ]; then
            UPDATEFLAGS=1
            mkdir -p $MODPATH/flags
            rm -rf $MODPATH/sql.txt
            touch $MODPATH/sql.txt
            $sqlite $gms "DELETE FROM FlagOverrides WHERE packageName='$name' AND name='$i'" &>$MODPATH/sql.txt
            echo "different value of $i present" >>$flaglogfile
            echo "Patching Status: $(cat $MODPATH/sql.txt)" >>$flaglogfile
            if [ ! -z "$(cat $MODPATH/sql.txt | grep 'Error:')" ]; then
                mkdir -p $MODPATH/flags_$type/$name
                echo "$val" >>$MODPATH/flags_$type/$name/$i
                UPDATEFLAGS=0
                echo "Error removing different value of $i" >>$flaglogfile
            fi
        else
            echo "Flag $i already present" >>$flaglogfile
        fi
        if [ $UPDATEFLAGS -eq 1 ]; then
            #$sqlite $gms "DELETE FROM FlagOverrides WHERE packageName='$name' AND name='$i'"
            #sleep .001
            rm -rf $MODPATH/sql.txt
            touch $MODPATH/sql.txt
            if [ $type == "extensionVal" ]; then
                $sqlite $gms "INSERT INTO FlagOverrides(packageName, user, name, flagType, extensionVal, committed) VALUES('$name', '', '$i', 0, x'$val', 0)" &>$MODPATH/sql.txt
            else
                $sqlite $gms "INSERT INTO FlagOverrides(packageName, user, name, flagType, $type, committed) VALUES('$name', '', '$i', 0, $val, 0)" &>$MODPATH/sql.txt
            fi
            echo "patching $i" >>$flaglogfile
            echo "Patching Status: $(cat $MODPATH/sql.txt)" >>$flaglogfile
            if [ ! -z "$(cat $MODPATH/sql.txt | grep 'Error:')" ]; then
                mkdir -p $MODPATH/flags_$type/$name
                echo "Error Patching $i adding it for next boot" >>$flaglogfile
                echo "$val" >>$MODPATH/flags_$type/$name/$i
                return
            fi
            sleep .001
            #$sqlite $gms "INSERT INTO FlagOverrides(packageName, user, name, flagType, $type, committed) VALUES('$name', '', '$i', 0, $val, 1)"
            #sleep .001
            #$sqlite $gms "UPDATE Flags SET $type='$val' WHERE packageName='$name' AND name='$i'"
            for j in $gacc; do
                rm -rf $MODPATH/sql.txt
                touch $MODPATH/sql.txt
                if [ $type == "extensionVal" ]; then
                    $sqlite $gms "INSERT INTO FlagOverrides(packageName, user, name, flagType, $type, committed) VALUES('$name', '$j', '$i', 0, x'$val', 0)" &>$MODPATH/sql.txt
                else
                    $sqlite $gms "INSERT INTO FlagOverrides(packageName, user, name, flagType, $type, committed) VALUES('$name', '$j', '$i', 0, $val, 0)" &>$MODPATH/sql.txt
                fi
                if [ ! -z "$(cat $MODPATH/sql.txt | grep 'Error:')" ]; then
                    mkdir -p $MODPATH/flags_$type/$name
                    echo "$val" >>$MODPATH/flags_$type/$name/$i
                    echo "Error Patching $i adding it for next boot" >>$flaglogfile
                    return
                fi
                sleep .001
            done
        fi
    done
    echo "- $name patching done" >>$flaglogfile
    echo "========================" >>$flaglogfile
}

db_edit_bin() {
    sleep 0.05
    rm -rf $MODPATH/sql.txt
    touch $MODPATH/sql.txt
    #echo "patching $2 for $1" >>$flaglogfile
    $sqlite $gms "DELETE FROM FlagOverrides WHERE packageName='$1' AND name='$2'" &>$MODPATH/sql.txt
    if [ ! -z "$(cat $MODPATH/sql.txt | grep 'Error:')" ]; then
        mkdir -p $MODPATH/flags_bin/$1
        echo "$3" >>$MODPATH/flags_bin/$1/$2
        #echo "Error Patching $2 adding it for next boot" >>$flaglogfile
        return
    fi
    rm -rf $MODPATH/sql.txt
    touch $MODPATH/sql.txt
    $sqlite $gms "INSERT INTO FlagOverrides(packageName, user, name, flagType, extensionVal, committed) VALUES('$1', '', '$2', 0, x'$3', 0)" &>$MODPATH/sql.txt
    if [ ! -z "$(cat $MODPATH/sql.txt | grep 'Error:')" ]; then
        mkdir -p $MODPATH/flags_bin/$1
        echo "$3" >>$MODPATH/flags_bin/$1/$2
        #echo "Error Patching $2 adding it for next boot" >>$flaglogfile
        return
    fi
    #$sqlite $gms "INSERT INTO FlagOverrides(packageName, user, name, flagType, extensionVal, committed) VALUES('$1', '', '$2', 0, x'$3', 1)"
    #$sqlite $gms "UPDATE Flags SET extensionVal=x'$3' WHERE packageName='$1' AND name='$2'"
    for j in $gacc; do
        j=${j/.db/}
        rm -rf $MODPATH/sql.txt
        touch $MODPATH/sql.txt
        $sqlite $gms "INSERT INTO FlagOverrides(packageName, user, name, flagType, extensionVal, committed) VALUES('$1', '$j', '$2', 0, x'$3', 0)" &>$MODPATH/sql.txt
        if [ ! -z "$(cat $MODPATH/sql.txt | grep 'Error:')" ]; then
            mkdir -p $MODPATH/flags_bin/$1
            echo "$3" >>$MODPATH/flags_bin/$1/$2
            return
        fi
    done
}

for i in /system/product/etc/sysconfig/*; do
    file=$i
    file=${file/\/system\/product\/etc\/sysconfig\//}
    if [ ! -z "$(grep PIXEL_2020_ $i)" ] || [ ! -z "$(grep PIXEL_2021_ $i)" ] || [ ! -z "$(grep PIXEL_2019_PRELOAD $i)" ] || [ ! -z "$(grep PIXEL_2018_PRELOAD $i)" ] || [ ! -z "$(grep PIXEL_2017_PRELOAD $i)" ] || [ ! -z "$(grep PIXEL_2022_ $i)" ]; then
        [ ! -f $MODPATH/system/product/etc/sysconfig/$file ] && cat /system/product/etc/sysconfig/$file | grep -v PIXEL_2020_ | grep -v PIXEL_2021_ | grep -v PIXEL_2022_ | grep -v PIXEL_2018_PRELOAD | grep -v PIXEL_2019_PRELOAD >$MODPATH/system/product/etc/sysconfig/$file
    fi
done
for i in /system/etc/sysconfig/*; do
    file=$i
    file=${file/\/system\/etc\/sysconfig\//}
    if [ ! -z "$(grep PIXEL_2020_ $i)" ] || [ ! -z "$(grep PIXEL_2021_ $i)" ] || [ ! -z "$(grep PIXEL_2019_PRELOAD $i)" ] || [ ! -z "$(grep PIXEL_2018_PRELOAD $i)" ] || [ ! -z "$(grep PIXEL_2017_PRELOAD $i)" ] || [ ! -z "$(grep PIXEL_2022_ $i)" ]; then
        [ ! -f $MODPATH/system/product/etc/sysconfig/$file ] && cat /system/etc/sysconfig/$file | grep -v PIXEL_2020_ | grep -v PIXEL_2021_ | grep -v PIXEL_2022_ | grep -v PIXEL_2018_PRELOAD | grep -v PIXEL_2019_PRELOAD | grep -v PIXEL_2017_PRELOAD >$MODPATH/system/etc/sysconfig/$file
    fi
done
if [ -d /data/adb/modules/PixelifyPhotos/system/product/etc/sysconfig ]; then
    for i in /data/adb/modules/PixelifyPhotos/system/product/etc/sysconfig/*; do
        file=$i
        file=${file/\/data\/adb\/modules\/PixelifyPhotos\/system\/product\/etc\/sysconfig\//}
        if [ ! -f $MODPATH/system/product/etc/sysconfig/$file ]; then
            cp -f /data/adb/modules/PixelifyPhotos/system/product/etc/sysconfig/$file $MODPATH/system/product/etc/sysconfig/$file
        fi
    done
fi
if [ -d /data/adb/modules/PixelifyPhotos/system/etc/sysconfig ]; then
    for i in /data/adb/modules/PixelifyPhotos/system/etc/sysconfig/*; do
        file=$i
        file=${file/\/data\/adb\/modules\/PixelifyPhotos\/system\/etc\/sysconfig\//}
        if [ ! -f $MODPATH/system/etc/sysconfig/$file ]; then
            cp -f /data/adb/modules/PixelifyPhotos/system/etc/sysconfig/$file $MODPATH/system/etc/sysconfig/$file
        fi
    done
fi

#Audio Eraser, Magic Editor
db_edit com.google.android.apps.photos boolVal 1 "45389969" "45429858" "45377931" "45430953" "45417067" "45413465"
#Audio Eraser, Magic Editor
db_edit com.google.android.apps.photos boolVal 1 "45417606" "45421373"
# Fix for tools not installed, new magic eraser
db_edit com.google.android.apps.photos boolVal 0 "45425404" "45398451" "45422612"
db_edit_bin com.google.android.apps.photos "45415301" "$AUDIO_ERASER"
db_edit_bin com.google.android.apps.photos "45420912" "$MAGIC_EDITOR"
db_edit_bin com.google.android.apps.photos "45422509" "$ME3"
db_edit_bin com.google.android.apps.photos "45416982" "$BESTTAKE"
db_edit_bin com.google.android.apps.photos "3015" "$GPHOTOS"

pm install $MODPATH/gphotos/*.apk

touch $MODPATH/firstboot
