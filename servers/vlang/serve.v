// Memory Leak: https://github.com/vlang/v/issues/3897
import vweb

struct App {
    vweb.Context
}

fn main() {
    mut app := &App {}
    app.serve_static('/sample.jpg', '../../htdocs/sample.jpg')
    println('Server started on http://127.0.0.1:8080')
    vweb.run(app, 8080)
}

pub fn (mut app App) index() vweb.Result {
    return app.text('INDEX')
}

['/sample.txt']
pub fn (mut app App) sample_text() vweb.Result {
    return app.text('TTOHGVSKCZVBMZCWYTGETCYWVRQIOTYWHLPUCLCVREUBHTIJIRFNBFATZSVNJXRJDKNSHESOYHIZJNALNSATFOBJCRYNEMEBSFRLCZQXSKIFBRPEYDJAKJXRKJTDAKCINZLAHDYPCGFOHMNHCKSCFKFLNVCCVBLRVRUMHSQVBGVLJUEZUDNDTTSJJKNVOTRKISRALCLBCGOVTTIAQRIVQXLVRAGDEWGKUUFICJNRLGBHRHZKYESVNDWTSHUSWGBUIYLMYTLWECPBQEUXHWPSHNEUPOIEGBVJXZCFIJVVXXOZWXQBTTHAXHFEKSUPFFNUASLMMPCBEBSJVFHOHFVCNREOYDCQJVMLBJBHLUSBEECMKVXFXKMRDGYPXYKLSUXLVZYJRMAWMTZYBJIFISGGZVGLSYHIOANZIJXXFYAISMQLAELHTDMKBBZUZNYGURQSBZEVGNCPZSKTMHWKSSKZCNHAPIAXRRKFNCYDMLFVQZUVKICWMRIRLHZNDGJUZYFEEKVBSOYYKOTNYAJQGDDYIFGPKZXWTKVPNSCWODZUWPWGHYYOHURIUUFYGWIUKDKJTOQOLXTLUNACYOAGBICTFKCLAYTBVXVERPRWMMSVVPQRSKTCGDMXRVLPBZZIOPHTBIATOEDMZGUDWSRSZMDTPFPIFDQKAWRBGIBKSRAOGEXERUWAQNPNGLUEUZIHEEILYXZIKPSQDNBJQJYBBFHNCROOTGSDCTEFGJYUPOIPQAZNCWDWSRREWGAMOJULDTWVNNUXRRJCQREMHUYAAHEELLGNZRZNVWQIUEPPBSDFMJVSCJJVLYDFQSCFJREMVBFIEBNUYMSXUXANXNPKJTUGTICSSVAQJVACHZUXEKUKXBGOVHERCEYQGZXMKUCAVXTSKZXKRTWHYRSUMKVNFJQREYLOIDIDPVFRLBBLWSTUWTIPLSSDXOVOZGNAANOKAJKDVHJTGXWTRRMGOKRIBBEIRARAMFQORMYQIPMZCGPHHKEZLGYQSQMKDYJXZIPLUOAFZKQAMJUYPSDUFGYEKTYTETXJDYGLXKAKEPDPCTTBXPYYSHIAHMMLFPFMONVEDXFWIYFTPTXWYQOXQYGRRXRNAAVZEDYKDLHASZGSKCHCNMNZXNTJSMMVSCGWCSOLBLKDGGUFMGPDSITBVLJRIVFNQGGRFFWPBYHWPBQDFBMBCWJUAHFISWUGXMEKDMKQCCWEQDJSGJBNVVWLNUVWETBHAAYTQDTKHIUUQDZLZKWRQOKECVSMBHMDHXYXBTMEQZJQLWCBFKGHXMDOLNDBFVYWQTBLWEOLYEYUEHFFWIQWTCHASWHLBFNDHCKMBJVQNLQUXJFCONESHIKLOMMBQDWUYGUPEZQTVNXXOGPYLFHEMMFOOVLMFHOYARSHPADAFFTQCHMJIRVCOBWZSZUGJZYJGBKRMUKBNMHPAWISVZLDMDTOCNUNVHONJLOIIDMGQGJMECMVQWZHLCPULODHFZFUILOGKIKPIPMSEWINXBPAIKRHLBWFGQUHPPRQUVZVMEYUUBVQBYITOLPDOLZVHLKGOONSTVFCSBVQLXZSPUDWOEADIOSOCEACVKIDCYDMYFJZKZPLJXTSUZEVNAPIQOOECRGRTWYASXXBGOWZXSFWINPOANZFWWFBGRQNLWWGSIZLXRQGANDSCJKBDMZATXGINKZFDFNKRHCEBLZQNUCEQNQRSIQDEXWTHVQZAAXOYOUZXCORTPZTWEPDUIXESVFHPKKAVQKWWRPUBQPUXWUMGLSJFPHZAMRVSABMQUQAXPZHCJPFJYLKJMRJSZNRYAHMJOOFAIYNTDHNHEGGIVUJTAWEAGWEUZPXPEFSXVHHBBMIIDIUSQDUIXJMMBGGIWWTJNHHQRTSMCSMPMKGEGEFMZMXJIKKJFOZRINXVGNZGHVALXQCLCDKJUXVAPDBKMMGKZKTCCXWCZEWFDYLNLXMPHLQBBVEYPBCHZHNKPDVAHPHYQIZPSKUPRNGLNHNXAVXONKTQYZFJVFPDVMBDISTFBNKMUYLSCUGGTXQNUYWADTUTLATYCGUAPUDBTVEWDWVDREFIQZIHNZXYNEJMKLFOXMMDQGEIBPNQNWSXHTBXGIWXYYYQLUHEITIGJVONIQFMZUCCSIGWHAKEOTYKOLHWUBOPTROCBMGSQCSRASRSYLVZKZNCPLYLUFATAMECFXEHNOQIHEQOTRQZYFVUMSNFEYIZIOCVGNFOEIWELKCALSSRIJSPHQAZUJCBNDXHAGWTFLXQDSHJHIJDGCXSKJRQACRTAFXCECXHOEDBEYFCVZIDXLWSYURWQPVADLSCRFYEFLTLOFWBPMQSLWCYEHILLYWPBKNCAFRQLWXFQYVJJSKEXVBSCKLSDEOBTFHWHNUARGYDMNKTSABZJYFQKXAXDWGJWDGGWKSJATFMKKJCJIXYCNBOLCCAWEADYJZCBJHSMEQVHEGHHPXRWWBQAEXFWGRDSWQTRNYIMQBBPGWVCPVJBAHHBSCSOLTQPYSXZGWRENROLBSJYBOWFDMTCKIFQIRZVTOWYFFGCUJZRNVWGKAPCMWKBWIHHXTIJWZLCMRLMMVXWRNPGBEXLGYWWDTYKPLMMZEAPDNSMMPOXPPZOMOVRSNUJRWDQTDLBGZNCLPDVXBCMFBPLYDAJQMCXCZVWHJYYFYRJBNRJRULGNFUWDGGDFUQPXCPUCZOZJDZMPWBVCAQNFJSVCZEEUSFFIFXHQEBXUWBWWEZTOXHHILRGFGDGMHDMWMSPPPARCSVAYKXNGCAEMKALNVRRRJWIXKTSQXXHDROPETUXJIDCJOHHRFDMITLBUNBYMPGGRMGANSQIZTVLWWLLGFDEHXKFPLJUYYFELSCQJACUXXJKKQOATNLANKZLMQOWLVFMDCFIYTTSBTMLWOAXOGBDUIBKKHEGYKENJEWVXTYIFYSEGMCRZZXDCEYNHIPTPZBQGPZUKQPGBDBVTASGQHFNKOZHZJMABVFGJDYEEDHJBWOQKYQIOVBADDQOKEPSATAXEMOATDUJODHBHTADXWIFOXUAETGPUBNRZSSASJMTUDNYHLZNVFRPFAECVVNUBQOLLBDXZDLXJJZQZHGPXSGYVVKJZVPMKDBXHHKXYRUUICIQATEBVPSRRWJAARWAAJQKXEOLPQSJGYTBYPQTPOAVQFTQMICXKQYQHPWVBXGMNVIUUSVOEEOWYMJQXTAQDMMDCNEPIYJERQBZHXMWUJPVIVDDBFKREPKEDOBPCRIIEHJMBQOJBRGPWEZQVEJESFGNDWXKAOYYTJIWDWRZWTHPKVHBZJAIMTHSLAAQWCZVQSUIZCKAXGLPJDQECYVZQZHDEMDMEZCWLKQDOPPMTRPNXKKLUUENICEYXOHFDMAUQQFGLADSKZCBEVUFEREBROOHKBCXMOUWLAUMFOLEDJVITHFEXXFQXMVMCSAQDKAXSLRDZLNYGMPULNHHTFBDZEBCUSCLMZCIMLLYIEWHORMWWSRQLOQBENLOUTBZRYZUADXCFRWWJJETWQPLVPZXLSWVXKWPCQDKVCORMLLTHDHKRSBHDCRHRKNIBWMRWNTYBOMSGPBJPUQQBMCJVVELSIBIMDWPPCYEYSZWNXSVCOJMBLYIFJDRPKAHAKAUMLVDCGVOLWLJFPEETVZLIUUDUFHYSSVOPVGJRVHSQMLUXJYAMNOCXOHIWURDRNSMNKYQZVOZGWGEFJQFQFFESOAJTLDIZHPPTCKKJWGHGFIEWENBTQYNYSJDOMOYUPBSEVVLZFNSAOKAZQYNOFAIRCZIRMLDMNPKKPKWBYWDOJMJJQCLSWJZHWJSSBBWBWTDVTKULKDSILNEBCXNKBXLWIFFJMBPORUZLEDDAYRMIFPZDDXLGDZVSUUHSEXOWWAZTGFGEUAYFKMDTEQTVMARYAWMHVAKRAEMHKQNVEUZTSUQNBXOMTGQYILLKWPYHVWQNQBLRAIFGIUCDKVFREVXMUZWKSKNYLRURPONXXHCUYZXKSTJNWGZKDFZBQICRWFNYCHXYWIILRQYLTPTAUAKDAXRZQIARBDJSUKOCJYLPZTZLJQXPCJTXEDCKAGMXGROEJLASGGJGNTHDBBDPIFWBNELGCEPAVWPQMCKDEZTPNKKBTGSZAOJCTVKTUCENRCPHXIZTAIRDQOZZRGBGNBWFFHZELDANWWZHJDRJWTDJGKUFZODXCWXLFDQVKFLYXCJVKVIRDURUEGINMSLMGLYQYMSPCIEIVPPTBNRDQYDTMZTOLROKTGONDEPXJRGREUFAXBDWGIULUVGNXRSFDKOMDKTZVRDTFRTLGUNNUAILRYCWNZDHLAOGXSFQVVFXPGQSMSFPTWZKEKREYAGZMSDDSLEQLTFNOGLDAXOEPPWPWMGVSCDCPAJHQJKBHAYOOANDPRWCRIVJFHCORSVHQNRJBDPPCCFSLBEZJFGZMPFXRTHMUXQMDZITGOXPFAZVWEVZDLCKXRICFDUFUYEZUFIYCMNWLMBTNPIMGIIYWXCNUCJRHSIAHZQGQHYGEMLTXNOXHMRQHREUKGJETNWMAMYNQWBRPXUYMYQHYQPWROKGBDKTPDSPQKZXIIJSKVCMUQQMTGSIMCGISDOMTJAZTINVXEPUMSBLUSVRFRODHCUECKSQSWODLEIACIRZGRDIAIXBLKOZCYYFGTVZXXJQTUXEKAXPTPSNNCLSWQLHOSIZRUOTUUESATJIRGWQJWZMHYYWIOWJKHYLGWSVIRVIMYLSLGJLUTABXOZDQLBBJLWMTPUBSFOMRXZWJVOIOSIXREBRCWHIOZUKZZADJXTIELHEAXYAGQHBMSOFQVYQXLMDRCBMWHPPLQGFOZNDMLKVIPREMZGOBYQPZOAXBZKJZJDQZJBVSGOQGXKOJTHARQSCLQLSIWCPLCBCVDWFZASIQKPEZDRNBRXIJMTPTNZPFQQPVKRLANZJLDVZRFYKILNUJATYPCQMAETKVVECZGPYPMDIYRBBEMIFSFWLVUDAYZWULRBLOMQOOGQSSINGVQDCNHHRKAYABUWGPENRCKMIVQHGORWWWVBUVBEIQZXUIYNVPNGEWDFVDUXOPGBEBZPLSAOCDBBHPCMKMQNKANJBAQPUHFVMHZDYPXVCCYNAFNFHQGFGDBZDDDAEAZUWPLBVLTWPNOIWWHAPXBVORMGWTOXIJLSQFFZMOYOKTFNXGTPYQSYJWIPFDVIQVNMJRLKUTKLKMHKLODEEZIXTDSQRIAYPMLKVLTTQQEXXGJLDNWLZBTEVFACMFTUWKLUKSPWNPBEIAQEXWCNOAXCAWQNKQCLCFRQMNRKFBQLOVGYLUHCOAHGVIOSQIWEEWHGODRIUYNSWWLJRNMRRPOKTRLBCPGKXLNRDMJWKVNLXKSUBAIIMEPZUJKSIEKMSYEYIGGRCLXCTOHKLHVUMYPBMBJDCCNSILWYHQMCPPRNGUZTDLSTLETJUIXZYXDJKONYNQDJORLEBEKJUAAGRFHZWDATAWLILTKEKXCPEOXNWLCMNIRGCIWRKTCOOQFPVKNBTSLHFQFKZCNWRCKVEGIKWHLYIXMHMLSWLOPEVALJAJAWOATXWMUBEWWJBZZHTSIMCRQCIEVVIKMKTCVBBZAEGBVXBZRTPTPNMAQINALCZXVYBJVUZGVIFZPBZAZIUABIOQTLQSHWDTLTVYRXJVVRYXXIOTAYTNDWVKIFNQPXYFNBDFDZMGKWUFXCAKOPAOCVPYODBMQNOMIJMMBWENVXWHLVPUPXULRYICTTQPXEONMQWNISQEPXBUJDZDRTMCGUQNDKIMKPPFMMXLTOFHALWOKHUECYCKNVQSFGRQLANUYXWYMISWSXFYDUTFELNYVHVBXAXVULGMJODCIYAZOAWWDZPIFDONFXJIIVWCKRGNSODIGJDYBRLESYGWAXBZZNFEWLLNPCDVPSDMDGGXJVNZBTRPPLNYFCGZEFEWGSALHUPFFADFFUXHUUQGTQGMNMLQVLGJBDDKKTKNAAWHDPSPDYIISDLTZICBUBHWDANCFIHPGEFZRDZNBKKBBQKLRCTXZRDHBHCCXTKEWMHYJCIGJHDDOFLWEYYSHHNFQFULVOWSEJXFAPEWPTWAREVCGOCVVXAVBBSSQINDBMBFBWEVPTVRJJHEEHVVPMCTCFJROJRHAXUEJHWLKRQSEZNQTQLAOMYURTCUQHNPRJJXEQIZSJYHVIWNMWALWTBDOGRTHFLWFJUDFEHNZUCGWZTVLXQANXYLYYLPEFNQAWRNYNWURCFIUDCPSRIMOPCDZAGATRDNETNAPKVHGVRDODKJZIDJVXGSOJDBUAQZLBYKLFKHEDPRTRVECIOAORQGVVNHVPCQAJAMURSBORFMOLIPNXRPLHSVQKKCPTNNFYDFBOFEJRSVXYUOOTWEGHINBYBXWJGWHDUNSRHQYAWWYNCIKQTMZNRQDNYSXQAZRTBZIUGMLYQNZSTVHHCLNDOTGQRYNOPBAJVGMBKQJLVFKKJQKKGWHQALQRUBSYMHEBLENESSTAQIRINEMZKSOWXENLZQACTMWLYWIHPZCIZLIVVTLYPAMAFIDNGZNDIMPYFSCPDIVMFXREHZSAIDFOHRLPWRWSQOTEENUAHCWCBNPGGOOQTVKTHERZKXZZXNEVYNVFCCNRKYBDFLNEDOOWPRYKGVNKTYWNTFTFAUTIRZFBJJHMILTECUCAPCZHRWJORLPYFBWRJPEGWBPYHMAUGVHOZINQRGPINNENNQJJWKSUREXMZKNIBCQKGUSSFYARUVLPQJSLOZULURWDUEQAAUXUVFWIFWYTTKINQECJHXDBUMPJIHTXHEDEZXNZCEUGQSNGEFVAEXNUIQUDEQBCKEXDNPUBSGDRQQRAGGVKFIBZNFGOXTYPEINDVZOSIQJBYNRRYCVMRTCPOTWKWYGSFJEKUCIMFEJXNUIZNIQUUEMTLUWTIUZUTCPXAEBHDWAUYOLIKUIMSRWNIHVSQPINRLBVZLBAFWUBYTVOISOZWODQBCOGZMUSGGODFRNQDSCJVQUMXCILTUUPRJAHKRABBSTVBEEKBLRJPNICAAVPHYAQRQZDIVPLRDZMERVRJSLEAMKNYTWYTDJPUJOGPSVQUDQPNKQNLZEOLASTWTQUCOFEUAGMZDYYUGBCYDXPWRFHTCOHBYHDAVXKIROUNFXWVGWRTIJKHXEONAPAONVITMKRJSRTBJNLHVQCSLQHFGGNAHKCPCFNQZASYLKQOQLFVQAZDKZSHZZLHDLDSOIVIRDNRRUYGHOYRNMPKCXPMAZDOUSRJESBZHWMDZYEXALIKPZPEBKHJSVTTNDACDLBUVDHKTSTSBNUTKHEOXHVQKDEYTMOVCMCZAMCETRYWUXGWVPDZPDPALCMFIXSHFDNYVCNXDLHFZEAFUYTZXXVLDDGWSWYUMFCAJDMDEAKYTDVJYEYBJRVJMKSOMBUAGAGJWLDWNAVEJXGEXOIRJWLVUSPWDMRGMJWUQQLOBHFCBZRYADCPTSYAQCVMIYQKPNVMFMWLKAFTNHNXJPYUVTINZZOWTLOZTUQOMVKQHQFRWXEBQWEFFTBMGKJXEKZBZHCQMNKSVWACOTIROWANKKMADWAOMJCRLPXGECPHNDWWQQXNDGXJECTMPUXRKDPZDFEMAPGIUQTEXJBUMHWYBOFYRQJLPDVKSDSHNNNIHFMXBSVZRXBRXIRLWRIGQHFCDTIWETLILPKWCBGGEBIZSANRPBJZVLEDZETUNRTHFIBCGRGYDOKYZSXYZEXDFENWPZOMZKGMSEDDLEFNYQKGVLOTIIQWXBEYVJDJHVKJOJPVOVHSDQWAGYYUSXRFRZDWOXXYCQYAKVBTSYJSUJMNETWMXMOZJZHGNPYCFKUBTHBSZSMCMXUCKTMLDZGXNQVKSGPJWOCWUKZFUTSNZFGTMBTJYHFCYSDCPMOYBICRXKCRZFGCBZMGRIXEFHWNSBNCCERFRLJUJUXJHSWIHREASVWRDDYTECLOUVLLCLWNJNYWQPOHMERIRHEYJRVWSAPBNJBJDGETJNVVHCWGRFMQXDZKLDFGCTULHCRPSZZKNZOGHALKINEPJSKWBPVCNWQLJUWDEJDAGGLWPCJARMSBIAYPKSUDFQVTCIHDHDPHMWONRKJYCUQQJUNHHNXHDXGWCKCSKLLBTSCRCDHLKBBWMHTSBKNLEUSUTFFEGTYSTOUBROBNKNHGO')
}