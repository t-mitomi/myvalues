BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "users" (
	"id"	INTEGER,
	"name"	TEXT,
	"password"	TEXT,
	"del_flag"	INTEGER DEFAULT 0,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "values88" (
	"id"	INTEGER,
	"value"	TEXT,
	"explanation"	TEXT,
	"evaluation"	TEXT
);
CREATE TABLE IF NOT EXISTS "myselect" (
	"id"	INTEGER,
	"user_id"	INTEGER,
	"savedate"	TEXT,
	"del_flag"	Integer DEFAULT 0,
	"v1"	Integer DEFAULT 0,
	"v2"	Integer DEFAULT 0,
	"v3"	Integer DEFAULT 0,
	"v4"	Integer DEFAULT 0,
	"v5"	Integer DEFAULT 0,
	"v6"	Integer DEFAULT 0,
	"v7"	Integer DEFAULT 0,
	"v8"	Integer DEFAULT 0,
	"v9"	Integer DEFAULT 0,
	"v10"	Integer DEFAULT 0,
	"v11"	Integer DEFAULT 0,
	"v12"	Integer DEFAULT 0,
	"v13"	Integer DEFAULT 0,
	"v14"	Integer DEFAULT 0,
	"v15"	Integer DEFAULT 0,
	"v16"	Integer DEFAULT 0,
	"v17"	Integer DEFAULT 0,
	"v18"	Integer DEFAULT 0,
	"v19"	Integer DEFAULT 0,
	"v20"	Integer DEFAULT 0,
	"v21"	Integer DEFAULT 0,
	"v22"	Integer DEFAULT 0,
	"v23"	Integer DEFAULT 0,
	"v24"	Integer DEFAULT 0,
	"v25"	Integer DEFAULT 0,
	"v26"	Integer DEFAULT 0,
	"v27"	Integer DEFAULT 0,
	"v28"	Integer DEFAULT 0,
	"v29"	Integer DEFAULT 0,
	"v30"	Integer DEFAULT 0,
	"v31"	Integer DEFAULT 0,
	"v32"	Integer DEFAULT 0,
	"v33"	Integer DEFAULT 0,
	"v34"	Integer DEFAULT 0,
	"v35"	Integer DEFAULT 0,
	"v36"	Integer DEFAULT 0,
	"v37"	Integer DEFAULT 0,
	"v38"	Integer DEFAULT 0,
	"v39"	Integer DEFAULT 0,
	"v40"	Integer DEFAULT 0,
	"v41"	Integer DEFAULT 0,
	"v42"	Integer DEFAULT 0,
	"v43"	Integer DEFAULT 0,
	"v44"	Integer DEFAULT 0,
	"v45"	Integer DEFAULT 0,
	"v46"	Integer DEFAULT 0,
	"v47"	Integer DEFAULT 0,
	"v48"	Integer DEFAULT 0,
	"v49"	Integer DEFAULT 0,
	"v50"	Integer DEFAULT 0,
	"v51"	Integer DEFAULT 0,
	"v52"	Integer DEFAULT 0,
	"v53"	Integer DEFAULT 0,
	"v54"	Integer DEFAULT 0,
	"v55"	Integer DEFAULT 0,
	"v56"	Integer DEFAULT 0,
	"v57"	Integer DEFAULT 0,
	"v58"	Integer DEFAULT 0,
	"v59"	Integer DEFAULT 0,
	"v60"	Integer DEFAULT 0,
	"v61"	Integer DEFAULT 0,
	"v62"	Integer DEFAULT 0,
	"v63"	Integer DEFAULT 0,
	"v64"	Integer DEFAULT 0,
	"v65"	Integer DEFAULT 0,
	"v66"	Integer DEFAULT 0,
	"v67"	Integer DEFAULT 0,
	"v68"	Integer DEFAULT 0,
	"v69"	Integer DEFAULT 0,
	"v70"	Integer DEFAULT 0,
	"v71"	Integer DEFAULT 0,
	"v72"	Integer DEFAULT 0,
	"v73"	Integer DEFAULT 0,
	"v74"	Integer DEFAULT 0,
	"v75"	Integer DEFAULT 0,
	"v76"	Integer DEFAULT 0,
	"v77"	Integer DEFAULT 0,
	"v78"	Integer DEFAULT 0,
	"v79"	Integer DEFAULT 0,
	"v80"	Integer DEFAULT 0,
	"v81"	Integer DEFAULT 0,
	"v82"	Integer DEFAULT 0,
	"v83"	Integer DEFAULT 0,
	"v84"	Integer DEFAULT 0,
	"v85"	Integer DEFAULT 0,
	"v86"	Integer DEFAULT 0,
	"v87"	Integer DEFAULT 0,
	"v88"	Integer DEFAULT 0,
	"v89"	Integer DEFAULT 0,
	"v90"	Integer DEFAULT 0,
	"v91"	Integer DEFAULT 0,
	"v92"	Integer DEFAULT 0,
	"v93"	Integer DEFAULT 0,
	"v94"	Integer DEFAULT 0,
	"v95"	Integer DEFAULT 0,
	"v96"	Integer DEFAULT 0,
	"v97"	Integer DEFAULT 0,
	"v98"	Integer DEFAULT 0,
	"v99"	Integer DEFAULT 0,
	"v100"	Integer DEFAULT 0,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "values100to0623" (
	"id"	INTEGER,
	"value"	TEXT,
	"explanation"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "values100" (
	"id"	INTEGER,
	"value"	TEXT,
	"explanation"	TEXT,
	PRIMARY KEY("id")
);
INSERT INTO "users" VALUES (1,'suna','suna',0);
INSERT INTO "users" VALUES (2,'c','c',0);
INSERT INTO "users" VALUES (3,'h','h',0);
INSERT INTO "users" VALUES (4,'m','m',0);
INSERT INTO "users" VALUES (5,'o','o',0);
INSERT INTO "users" VALUES (6,'w','w',0);
INSERT INTO "values88" VALUES (1,'受容','ありのままの自分を受け入れてもらう',NULL);
INSERT INTO "values88" VALUES (2,'正確','自分の意見や信念を正しく伝える',NULL);
INSERT INTO "values88" VALUES (3,'達成','何か重要なことを達成する',NULL);
INSERT INTO "values88" VALUES (4,'冒険','新しくてワクワクする体験をする',NULL);
INSERT INTO "values88" VALUES (5,'魅力','身体的な魅力を保つ',NULL);
INSERT INTO "values88" VALUES (6,'権威','他者に対して責任を持って指導する',NULL);
INSERT INTO "values88" VALUES (7,'自治','人任せにせず自分で決める',NULL);
INSERT INTO "values88" VALUES (8,'美的','身の回りの美しいものを味わう',NULL);
INSERT INTO "values88" VALUES (9,'庇護','他者の面倒を見る',NULL);
INSERT INTO "values88" VALUES (10,'挑戦','難しい仕事や問題に取り組む',NULL);
INSERT INTO "values88" VALUES (11,'変化','変化に富んだバラエティ豊かな人生を送る',NULL);
INSERT INTO "values88" VALUES (12,'快適','喜びに満ちた快適な人生を送る',NULL);
INSERT INTO "values88" VALUES (13,'誓約','絶対に破れない約束や誓いを結ぶ',NULL);
INSERT INTO "values88" VALUES (14,'慈愛','他者を心配して助ける',NULL);
INSERT INTO "values88" VALUES (15,'貢献','世界に役立つことをする',NULL);
INSERT INTO "values88" VALUES (16,'協調','他者と協力して何かをする',NULL);
INSERT INTO "values88" VALUES (17,'礼儀','他者に対して誠実で礼儀正しくする',NULL);
INSERT INTO "values88" VALUES (18,'創造','新しくて斬新なアイデアを生む',NULL);
INSERT INTO "values88" VALUES (19,'信頼','信用があって頼れる人間になる',NULL);
INSERT INTO "values88" VALUES (20,'義務','自分の義務と責任を果たす',NULL);
INSERT INTO "values88" VALUES (21,'調和','周囲の環境と調和しながら生きる',NULL);
INSERT INTO "values88" VALUES (22,'興奮','スリルと刺激に満ちた人生を送る',NULL);
INSERT INTO "values88" VALUES (23,'貞節','パートナーに嘘をつかず誠実に生きる',NULL);
INSERT INTO "values88" VALUES (24,'名声','有名になって存在を認められる',NULL);
INSERT INTO "values88" VALUES (25,'家族','幸福で愛に満ちた家庭を作る',NULL);
INSERT INTO "values88" VALUES (26,'体力','丈夫で強い体を保つ',NULL);
INSERT INTO "values88" VALUES (27,'柔軟','新たな環境にも簡単に馴染む',NULL);
INSERT INTO "values88" VALUES (28,'許し','他人を許しながら生きる',NULL);
INSERT INTO "values88" VALUES (29,'友情','親密で助け合える友人を作る',NULL);
INSERT INTO "values88" VALUES (30,'愉快','遊んで楽しむこと',NULL);
INSERT INTO "values88" VALUES (31,'寛大','自分の物を他人に与える',NULL);
INSERT INTO "values88" VALUES (32,'真実','自分が正しいと思う通りに行動する',NULL);
INSERT INTO "values88" VALUES (33,'信教','自分を超えた存在の意思を考える',NULL);
INSERT INTO "values88" VALUES (34,'成長','変化と成長を維持する',NULL);
INSERT INTO "values88" VALUES (35,'健康','健やかで体調良く生きる',NULL);
INSERT INTO "values88" VALUES (36,'有益','他人の役に立つこと',NULL);
INSERT INTO "values88" VALUES (37,'正直','嘘をつかず正直に生きる',NULL);
INSERT INTO "values88" VALUES (38,'希望','ポジティブで楽観的に生きる',NULL);
INSERT INTO "values88" VALUES (39,'謙遜','地味で控えめに生きる',NULL);
INSERT INTO "values88" VALUES (40,'笑い','人生や世界のユーモラスな側面を見る',NULL);
INSERT INTO "values88" VALUES (41,'独立','他者に依存せず生きる',NULL);
INSERT INTO "values88" VALUES (42,'勤勉','自分の仕事に一生懸命取り組む',NULL);
INSERT INTO "values88" VALUES (43,'不安','自分の内面の平和を維持する',NULL);
INSERT INTO "values88" VALUES (44,'親密','プライベートば体験を他者とシェアする',NULL);
INSERT INTO "values88" VALUES (45,'正義','全ての人間を公平に扱う',NULL);
INSERT INTO "values88" VALUES (46,'知識','価値ある知識を学ぶ、または生み出す',NULL);
INSERT INTO "values88" VALUES (47,'余暇','自分の時間をリラックスして楽しむ',NULL);
INSERT INTO "values88" VALUES (48,'寵愛','親しい人から愛される',NULL);
INSERT INTO "values88" VALUES (49,'愛慕','誰かに愛を与える',NULL);
INSERT INTO "values88" VALUES (50,'熟達','いつもの仕事作業に習熟する',NULL);
INSERT INTO "values88" VALUES (51,'現在','今の瞬間に集中して生きる',NULL);
INSERT INTO "values88" VALUES (52,'適度','過剰を避けて程よいところを探す',NULL);
INSERT INTO "values88" VALUES (53,'単婚','唯一の愛しあえる相手を見つける',NULL);
INSERT INTO "values88" VALUES (54,'反抗','権威やルールに疑問を持って挑む',NULL);
INSERT INTO "values88" VALUES (55,'配慮','他人を気遣って世話すること',NULL);
INSERT INTO "values88" VALUES (56,'開放','新たな体験、発想、選択肢に心を開く',NULL);
INSERT INTO "values88" VALUES (57,'秩序','整理されて順序のある生活を送る',NULL);
INSERT INTO "values88" VALUES (58,'情熱','何らかの発想、活動、人々に深い感情を抱く',NULL);
INSERT INTO "values88" VALUES (59,'快楽','いい気分になること',NULL);
INSERT INTO "values88" VALUES (60,'人気','多くの人に好かれる',NULL);
INSERT INTO "values88" VALUES (61,'権力','他人をコントロールする',NULL);
INSERT INTO "values88" VALUES (62,'目的','人生の意味を方向性を定める',NULL);
INSERT INTO "values88" VALUES (63,'合理','理性と論理に従う',NULL);
INSERT INTO "values88" VALUES (64,'現実','現実的、実践的にふるまう',NULL);
INSERT INTO "values88" VALUES (65,'責任','責任を持って行動する',NULL);
INSERT INTO "values88" VALUES (66,'危険','リスクをとってチャンスを手に入れる',NULL);
INSERT INTO "values88" VALUES (67,'恋愛','興奮して燃えるような恋をする',NULL);
INSERT INTO "values88" VALUES (68,'安心','安心感を得る',NULL);
INSERT INTO "values88" VALUES (69,'受諾','ありのままの自分を受け入れる',NULL);
INSERT INTO "values88" VALUES (70,'自制','自分の行動を自分でコントロールする',NULL);
INSERT INTO "values88" VALUES (71,'自尊','自分に自信を持つ',NULL);
INSERT INTO "values88" VALUES (72,'自知','自分について深い理解を持つ',NULL);
INSERT INTO "values88" VALUES (73,'献身','誰かに奉仕する',NULL);
INSERT INTO "values88" VALUES (74,'性愛','活動的で満足のいく性生活を送る',NULL);
INSERT INTO "values88" VALUES (75,'単純','シンプルでミニマルな生活をする',NULL);
INSERT INTO "values88" VALUES (76,'孤独','他者から離れて一人で居られる時間と空間を持つ',NULL);
INSERT INTO "values88" VALUES (77,'精神','精神的に成長し成熟する',NULL);
INSERT INTO "values88" VALUES (78,'安定','いつもと一定して変化のない人生を送る',NULL);
INSERT INTO "values88" VALUES (79,'寛容','自分と違う存在を尊重して受け入れる',NULL);
INSERT INTO "values88" VALUES (80,'伝統','過去から受け継がれてきたパターンを尊重する',NULL);
INSERT INTO "values88" VALUES (81,'徳性','道徳的に正しい生活を送る',NULL);
INSERT INTO "values88" VALUES (82,'裕福','金持ちになる',NULL);
INSERT INTO "values88" VALUES (83,'平和','世界平和のために行動する',NULL);
INSERT INTO "myselect" VALUES (10,1,'2021/06/26 22:06:08',0,2,1,0,0,1,2,2,1,0,0,1,2,2,1,0,0,1,2,2,1,0,0,1,2,2,1,0,0,1,2,2,1,0,0,1,2,2,1,0,0,1,2,2,1,0,0,1,2,2,1,0,0,1,2,2,1,0,0,1,2,2,1,0,0,1,2,2,1,0,0,1,2,2,1,0,0,1,2,2,1,0,0,1,2,2,1,0,0,1,2,2,1,0,0,1,2,2,1,2,2);
INSERT INTO "values100to0623" VALUES (1,'家族','あなたがあなたの「家族」であると考える人は誰でも、彼らがあなたにサポートと交際を提供するので、あなたにとって主要な価値であるかもしれません。家族は多くの場合、人々の生活の中核となる価値観であり、住む場所や休日を祝う方法などの決定に影響を与えます。');
INSERT INTO "values100to0623" VALUES (2,'創造性','創造性を大切にするなら、想像力を使って問題を解決したり、新しいアイデアを生み出したりすることを楽しんでいます。創造性を大切にすることは、他の人々が重要だと感じる社会に変化をもたらすあなたの能力をサポートします。');
INSERT INTO "values100to0623" VALUES (3,'コミュニケーション','コミュニケーションを大切にすることは、情報をあなたに適切に伝えるだけでなく、あなた自身の考えが他の人々に効果的に聞かれることを確実にすることも含みます。');
INSERT INTO "values100to0623" VALUES (4,'達成','あなたの人生や仕事で注目に値する何かを成し遂げることは、あなたの人生に独特の価値観を加える何かかもしれません。仕事へのインセンティブがそうすることのコストを上回るので、あなたの達成値はあなたのモチベーションに影響を与えます。　個人のコアバリューが重要である理由|  個人的な価値観のエッセイ|  個人のバリューステートメントの例　あなたにとって最も重要な値をランクアップします。これにより、自分の人生で本当に大切にしていることについての洞察が得られます。');
INSERT INTO "values100to0623" VALUES (5,'競争','競争の価値を保持するということは、競争の感覚を通じてエネルギーを獲得し、ドメインで最も尊敬されることを意味します。しかし、健全な競争と不健全な競争の違いを学ぶことは重要です。');
INSERT INTO "values100to0623" VALUES (6,'自信','この価値を持つことは、あなたのスキルがあなたのコミュニティやあなたの周りの人々に前向きな貢献をしていることをあなたが認識するような方法で成功することを含みます。');
INSERT INTO "values100to0623" VALUES (7,'構造','構造を評価することは、あなたの周囲をコントロールする感覚を持ち、許容可能なレベルの制限を維持するために規律を行使することを含みます。');
INSERT INTO "values100to0623" VALUES (8,'意思決定','一連の行動を開始するために個人的な責任を負うことは、あなたにとって非常に価値があるかもしれません。これは、外力に促されることなく、自分の良心に従って行動することが充実していることを意味します。');
INSERT INTO "values100to0623" VALUES (9,'教育','教育の達成の認定を達成することに加えて、教育を評価することは、生涯学習者であり、知覚的な洞察を通して理解を獲得し続けるプロセスを含みます。');
INSERT INTO "values100to0623" VALUES (10,'合同','これには、あなたの本物の自己に忠実であり、あなたの内面の考えや感情に一致する方法で外部から他の人とコミュニケーションをとることが含まれます。');
INSERT INTO "values100to0623" VALUES (11,'伝統','伝統を大切にすることは、あなたの人生のある種の歴史を儀式化して豊かさの感覚を加え、それを次の世代に引き継ぐことを含みます。');
INSERT INTO "values100to0623" VALUES (12,'信頼関係','信頼関係を大切にするということは、あなたと他の人がお互いの誠実さに自信を持っている相互に信頼できる環境で、あなたの考えや気持ちを表現できることを最優先事項の1つにすることを意味します。');
INSERT INTO "values100to0623" VALUES (13,'サービス','あなたの個人的なコアバリューの1つがサービスである場合、あなたは自分の才能や能力を他の人の生活に有益な方法で共有することに充実感を感じ、見返りを期待せずに社会に貢献する用意があります。');
INSERT INTO "values100to0623" VALUES (14,'責任','一部の人々は、コミュニティまたはグループの特定の領域の成功に対して、唯一の個人的な説明責任の感覚を持つことを強く評価しています。これはしばしば自信を促進し、深い達成感につながる可能性があります。');
INSERT INTO "values100to0623" VALUES (15,'忍耐力','非常に成功した人々は、間違いなく、他の多くの人々が試みたよりも、生涯を通じて失敗することが多くなっています。やめるのは簡単ですが、忍耐力は報われます。　あなたのトップ3の個人的価値観は何ですか|  個人のコアバリューが重要な理由|  良い値は何ですか　意思決定者であることはあなたにとって非常に価値があるかもしれません。');
INSERT INTO "values100to0623" VALUES (16,'一貫性','一貫性は、彼らが慣れている特定のプロセスに頼ることができるので、彼らが下す決定において人々にしばしば安心を与えます。');
INSERT INTO "values100to0623" VALUES (17,'ユーモア','ユーモアは困難な状況の負荷を軽減する上で大きな違いを生む可能性があるため、価値観に関してはこれを見逃してはなりません。適切に使用すると、ユーモアは効果的なツールになります。');
INSERT INTO "values100to0623" VALUES (18,'自由','これは、ほとんどの人が心に抱く価値であり、自分の自由を大切にするだけでなく、機会があれば自由を主張することも含まれます。');
INSERT INTO "values100to0623" VALUES (19,'自信','自信を持つことは、多くの場合、人々があなたとあなたの決定を信頼するのに役立ちます。あなたが自信を大切にするとき、それはあなたが能力も大切にすることを示唆しています。');
INSERT INTO "values100to0623" VALUES (20,'多様性','多様性とは、異なる文化の人々を受け入れることだけではありません。それは、新しい視点を学ぶために、さまざまなバックグラウンドを持つ人々と交流する機会を探すことです。');
INSERT INTO "values100to0623" VALUES (21,'レジリエンス','逆境に対処するのはどれくらい簡単ですか？レジリエンスを重視する場合は、柔軟性を高め、流れに沿って進み、物事がうまくいかなくなった後に跳ね返るように努めます。');
INSERT INTO "values100to0623" VALUES (22,'シンプルさ','人々は物事を必要以上に複雑にする傾向があります。物事を単純に保つことを好む人は、単純さを大切にする人です。　シンプルな生活の仕方についてもっと学びたいのなら、ここにあなたがあなたの人生を簡素化し始めるのを助けるためのミニマリズムに関する最高の本があります。');
INSERT INTO "values100to0623" VALUES (23,'信仰','信仰を大切にすることは、人によって異なるように見えることがありますが、それは多くの場合、すべてが想定どおりに機能すると信じることを指します。あなたが信仰を大切にするとき、あなたはあなたの信念があなたの決定を導くことを許します。');
INSERT INTO "values100to0623" VALUES (24,'バランス','あなたの個人的なコアバリューの1つがバランスである場合、あなたは1つのものがあなたの人生を引き継ぐのを防ぎます。あなたのキャリア、家族、友人、そして趣味の間で、あなたはあなた自身の個人的な楽しみを心に留めて、リラックスしてあなたのストレスを平準化することを確実にします。');
INSERT INTO "values100to0623" VALUES (25,'幸福','これは当たり前のように思えるかもしれませんが、多くの人は、自分が幸せになる理由を本当に見つけて、それらのことを中心に自分の生活を計画できるようにするために時間をかけません。');
INSERT INTO "values100to0623" VALUES (26,'リスクテイク','あなたがリスクを取ることを大切にしているなら、あなたがあなたの腸に従うならば、それが莫大な見返りにつながる可能性があることをあなたは知っています。成功するためのオプションもある場合、失敗するというオプションに直面することを恐れません。');
INSERT INTO "values100to0623" VALUES (27,'想像力','想像力を大切にすることは、私たちのペースの速い社会の誰にとっても大きな利点になる可能性があります。これまで誰も考えたことのないアイデアを思いつくことができれば、成功の大きな部分を占めることができます。');
INSERT INTO "values100to0623" VALUES (28,'インテリジェンス','インテリジェンスを評価することは、概念を理解するためのあなたの生まれつきの能力を認めるだけではありません。それは常にもっと学びたいという切望を伴います。');
INSERT INTO "values100to0623" VALUES (29,'親しみやすさ','親しみやすいという個人的なコアバリューを持っている人は、他の人が問題を抱えて気軽に彼らのところに来てほしいと思っています。親しみやすくなりたい人は、他の人の信頼を簡単に得ることがよくあります。');
INSERT INTO "values100to0623" VALUES (30,'独創性','独創性を大切にするということは、自分の道を歩み、他の人がしているように見えることから離れることを意味します。この価値は自然に生まれ、通常は芸術や創造性を通して見ることができます。');
INSERT INTO "values100to0623" VALUES (31,'成長','成長を大切にする人々は、決して落ち着くことをいとわず、逆境に直面して学ぶ機会を常に探しています。　組織のコアバリュー|  個人的価値観pdf |  個人的な信念　自分に自信を持つことは非常に重要です。それは人々があなたとあなたの決定を信頼するのを助けます。');
INSERT INTO "values100to0623" VALUES (32,'コンプライアンス','準拠しているということは、あなたが弱いという意味ではありません。指示に従う能力や上司のアドバイスを受ける能力を持つことには多くの価値があります。');
INSERT INTO "values100to0623" VALUES (33,'内なる平和','この個人的なコアバリューは、あなた自身、あなたの周りの人々に快適であり、あなたが生きている人生を受け入れる能力を指します。');
INSERT INTO "values100to0623" VALUES (34,'フィットネス','フィットネスを大切にすることは、あなたの人生の他の価値観に向けてエネルギーを与えるのに役立ちます。あなたの体が健康であれば、あなたの精神も健康になることができます。');
INSERT INTO "values100to0623" VALUES (35,'コラボレーション','あなたのアイデアを他の人と共有することによって一緒に働くことは、何か素晴らしいことを成し遂げることにつながる可能性があります。他の人と協力することは、しばしばその部分の合計よりも大きな何かにつながるでしょう。');
INSERT INTO "values100to0623" VALUES (36,'自己認識','これは非常に重要なコアバリューです。混乱したときに気づき、将来の間違いを修正する方法を正確に特定できるからです。自己認識を持つということは、特定の状況に自分のやり方で反応し、特定の感情につながる可能性のあるトリガーを認識する理由を知っていることも意味します。');
INSERT INTO "values100to0623" VALUES (37,'知恵','知恵を大切にすることは、知識に重点を置くことだけではありません。それはまた、あなたの知識を時の試練に耐えさせ、あなたの経験を振り返ってあなたの知識を正確にすることができるということでもあります。');
INSERT INTO "values100to0623" VALUES (38,'公平性','人生は公平ではないと言われているのは事実ですが、そうするように努力すべきではないという意味ではありません。公平性を大切にすることで、他の人との信頼と信頼を築くこともできます。');
INSERT INTO "values100to0623" VALUES (39,'誠意','これは正直と密接に関係している可能性がありますが、それはまた、あなたが言うすべてにおいて本物であり、他の人々を感動させるためにいかなる種類の前線を置くことを避けることも含みます。');
INSERT INTO "values100to0623" VALUES (40,'正義','正義を大切にするということは、世界で平等を達成するという個人的な責任感を感じ、公平に扱われていない人々への思いやりを感じることを意味します。（確証バイアスについて学ぶことは、他の人を公平に扱いたいのであれば、正しい方向への第一歩です。）');
INSERT INTO "values100to0623" VALUES (41,'保全','あなたが現在持っているものを保存したい、そして消費するためにより多くの資源を絶えず求めないことは、持つべき重要な価値です。あなたが保全を大切にするとき、あなたはあなたが持っているものとあなたの人生の内容に満足する良いチャンスがあります。');
INSERT INTO "values100to0623" VALUES (42,'コミュニティ','コミュニティを大切にするということは、周囲に帰属意識を持たせようと努力し、今日の自分に貢献した場所に喜んで恩返しをすることを意味します。');
INSERT INTO "values100to0623" VALUES (43,'検討事項','他の人に思いやりを持っていることは、たとえ彼らが周りにいなくても、持つべき強い価値です。これは、あなたが見つけたよりも良い場所を残し、他の人々のニーズを念頭に置くことを意味します。');
INSERT INTO "values100to0623" VALUES (44,'謙虚','謙虚さを重んじるなら、あなたは自分の行動に自分自身を語らせ、自分の能力を自慢することを避けます。');
INSERT INTO "values100to0623" VALUES (45,'情熱','自分の条件で人生を送ることに熱意を持っていると、成功するために必要な決意も確実に得られます。（情熱プロジェクトのアイデアについては、この投稿をチェックしてください。）');
INSERT INTO "values100to0623" VALUES (46,'自信','あなたの自信とは、あなたが自分自身に置く価値観と、あなた自身の能力に対するあなたの信仰です。それはあなたが人生で望むものを追求する力をあなたに与えます。');
INSERT INTO "values100to0623" VALUES (47,'前向きな考え方','ポジティブであり続け、直面するトラブルの中で銀色の裏地を探すことは、あなたが望む結果を達成するのを助けることができます。');
INSERT INTO "values100to0623" VALUES (48,'オープンマインドネス','アイデアやコンセプトに同意できないと思っていても、それを考えて、さまざまなアイデアを喜んで受け入れることができるのは、良い価値です。');
INSERT INTO "values100to0623" VALUES (49,'率直','多くの人が他人を傷つけたり、懲らしめられることを恐れて真実を敬遠するので、彼らがそうであるように物事を言うことができることは有用なコアバリューです。');
INSERT INTO "values100to0623" VALUES (50,'長寿','長寿を大切にする人は、愛する人と地球上でより多くの時間を過ごすために、健康的な生活を送ろうとしています。　コアバリューワークシートの特定|  コアバリューはハーバードを行使します|  グループのための価値観の行使');
INSERT INTO "values100to0623" VALUES (51,'休憩','いつ停止するかを知ることは、成功の大きな要因です。それが本当に重要であるとき、あなたはあなたの体とあなたの心を休ませてあなたのゲームの上にいる必要があります。');
INSERT INTO "values100to0623" VALUES (52,'時間厳守','時間厳守を大切にすることは、他の人の時間にも大きな敬意を払うことです。これにより、人々はあなたに依存し、うまくいけばあなたの時間も相互に尊重することができます。');
INSERT INTO "values100to0623" VALUES (53,'教育','教育を大切にする人は、正式な学習環境であっても、学ぶのに遅すぎることは決してないことを知っています。');
INSERT INTO "values100to0623" VALUES (54,'プロフェッショナリズム','これは、職場で専門的に行動する方法を知ることだけではありません。それはまた、礼儀正しく、マナーを使い、日常生活で信頼できる方法を知ることでもあります。');
INSERT INTO "values100to0623" VALUES (55,'倹約','保守的にお金を使うという自然な傾向があるということは、あなたが倹約を大切にしていることを示唆しています。これはまた、あなたが将来に目を向けており、即時の満足に焦点を合わせていないことを意味します。');
INSERT INTO "values100to0623" VALUES (56,'静けさ','沈黙や落ち着きを受け入れることは、持つべき大きな価値であるだけでなく、素晴らしいスキルでもあります。いつ話すか、いつ聞くかを知っている人は、しばしば非常に尊敬されています。');
INSERT INTO "values100to0623" VALUES (57,'客観性','職場での客観性を評価することは、対立に直面したときに事実を喜んで見ることを意味するため、役立ちます。あなたはあなたの感情と個人的な関与を脇に置くことができます。');
INSERT INTO "values100to0623" VALUES (58,'勇気','あなたの個人的なコアバリューの1つが勇気である場合、それはあなたが難しい決断をする唯一の人であるとしても、あなたが常に正しいことをすることを意味します。');
INSERT INTO "values100to0623" VALUES (59,'忍耐','忍耐力を大切にするということは、何かをうまくやっていくことができるのは時間だけである場合があるという事実を認識することを意味します。');
INSERT INTO "values100to0623" VALUES (60,'落ち着き','逆境に直面しても落ち着きを保ち、感情をコントロールする能力は、人々があなたを信頼し、あなたが信頼できる落ち着いた人であると感じるのに役立ちます。');
INSERT INTO "values100to0623" VALUES (61,'富','富を大切にして家族に提供できるようにするか、平和な生活を送ることができるかに関わらず、これは個人的なコアバリューであり、思ったほど利己的ではありません。');
INSERT INTO "values100to0623" VALUES (62,'アドベンチャー','冒険を大切にする人は、自分のスキルと存在を拡大するための新しい経験を探すことで、豊かでエキサイティングな生活を送っています。');
INSERT INTO "values100to0623" VALUES (63,'遊び心','一生懸命働いて笑うことからの良い休憩を本当に感謝できるなら、あなたはおそらく遊び心を大切にします。仕事に戻ったら本当に効果的になるために、心をリラックスさせることは健康的です。');
INSERT INTO "values100to0623" VALUES (64,'アサーション','自己主張を大切にする人は、自分が何を望んでいるかを知っており、それを手に入れるために迅速に行動し、成功するために必要なことを行います。');
INSERT INTO "values100to0623" VALUES (65,'ノベルティ','人生における新たな挑戦、状況、経験の追求を大切にする人もいます。あなたがいる場合、あなたが生まれた同じ町に住んで、ルーチンに固執する傾向があり、目新しさは、おそらくあなたの個人的なコア値ではありません。');
INSERT INTO "values100to0623" VALUES (66,'寛大さ','あなたが寛大さを大切にするならば、あなたはそれが他の人々にお金や有形のアイテムを与えることだけを含むのではないことを理解します。また、時間、思いやり、エネルギーに寛大になることもできます。');
INSERT INTO "values100to0623" VALUES (67,'決意','物事が困難になったときにあきらめることを拒否すると、困難な状況が勝利の機会に変わります。');
INSERT INTO "values100to0623" VALUES (68,'秩序','混沌とした環境に住んでいると、多くの人が個人的な進歩を遂げるのに苦労します。清潔さと秩序は、多くの場合、人々が落ち着いた心の状態を維持するために保持する価値観です。');
INSERT INTO "values100to0623" VALUES (69,'正直','悪い評判を修復することは非常に困難です。特に、信頼できないことを示唆している場合はなおさらです。真実を語ることとあなたの言葉に固執することは両方とも長期的に重要であり、それはあなたの評判を熱心に保護することを重要な価値にします。（正直な引用のこのコレクションを確認してください。）');
INSERT INTO "values100to0623" VALUES (70,'受け入れ','私たちの世界には何十億もの人々がいます-そのすべてがどういうわけかユニークです。あなたとはまったく違う人を受け入れることができると、あなたの人生の喜びと悟りを高めるのに役立ちます。　コアバリューリストの更新');
INSERT INTO "values100to0623" VALUES (71,'環境の持続可能性','個人も企業も、私たちだけでなく、将来の世代のために地球を守るための環境の持続可能性についてますます懸念を抱いています。EPAによると、大気汚染は心臓発作、肺疾患、早期死亡などの健康問題に苦しむリスクを高める可能性があります。　さらに、CDCは、水質汚染が胃腸疾患、生殖障害、神経障害を発症するリスクを高める可能性があると報告しています。適切に管理されていないと環境が私たちに害を及ぼす可能性があることを考えると、環境の持続可能性は人々の間で共通の価値になっています。');
INSERT INTO "values100to0623" VALUES (72,'愛国心','アメリカに住む多くの人々は、私たちの国に自由と愛国心を大切にしています。現在、愛国心を重んじるすべての人が常にアメリカの国旗を振っているわけではありません。それは、私たちの過去の過ちから学び、国が正しい方向に向かっているかどうかを検討することに注意を払うことです。愛国心は、背景に関係なく、この国に住む他の人々にとっての友情の精神です。愛国心を大切にすることは、国がいつ手探りであるかを知り、それをより良い場所にするためにあなたの役割を果たすことです。');
INSERT INTO "values100to0623" VALUES (73,'効率','効率を評価するということは、難しいことではなく、賢く働く方法を知ることを意味します。人々がバランスよく一緒に働くことができれば、仕事はスムーズに流れ、物事を成し遂げることができます。この種のオペレーショナルエクセレンスを評価することは、それがグループであろうと個人であろうと、常にあなたの仕事の変化と改善に備えることを意味します。');
INSERT INTO "values100to0623" VALUES (74,'勇気','リーダーシップの主要な特徴の1つとして、勇気はリーダーの他の多くの優れた資質を保証します。勇気は、自分の声を使って他の人に影響を与える自信と意欲を示しています。それが定義されているので勇気を持っている重要な値であり、自分の価値観に基づいて行動するあなたの決断とあなたの目標に向けた作業の代わりに自分が無関係と潜在的に有害な誘惑に気を取らたり誘われせるのを。');
INSERT INTO "values100to0623" VALUES (75,'尊重する','尊敬の念を授受することは、人と人とのつながりを育み、他人に自分を表現することを快適に感じるために重要です。尊敬を大切にするということは、自分とは背景や信念が異なっていても、他の人を受け入れることができるということです。敬意を払うことは、信頼、安全、安全の気持ちを育むのに役立ちます。');
INSERT INTO "values100to0623" VALUES (76,'コミットメント','人々は、それが関係であろうと、新しい機会であろうと、あるいは本当に有望と思われる他の何かであろうと、自分が信じていることにコミットします。コミットメントを重視する人は、特に対立への対処、信頼感の構築、他者とのコラボレーション、チームでの作業に関して、個人的な関係と専門的な関係の両方を管理するのが得意です。コミットメントが価値観のリストにある場合、おそらく次のこともあります。　強い労働倫理　説明責任の気持ち　情熱　規律');
INSERT INTO "values100to0623" VALUES (77,'独立','あなたの独立性を評価することは、あなたが他の人に何も頼らないという意味ではありません。それは単に、他の誰かから取ったときはいつでも、何か意味のあるものを返す能力があることを意味します。 独立性はあなたにあなた自身の人生のコントロールを与え、それはあなたをユーザーではなくクリエーターにします。');
INSERT INTO "values100to0623" VALUES (78,'包括性','インクルージョンは、多様性を受け入れることに焦点を当てた価値です。それは、すべての人々が有意義な関係を形成するための真の機会をサポートします。過去20年間で、人々の権利は、誰もが参加できる宿泊施設を提供するサービスを要求するポリシーと法律を通じて進化してきました。しかし、人々がこれらの方針に沿って生きるまで、包含は完全には実現されません。　包括性とは、他の人々と前向きな交流を持ち、誰もが誰であるかを評価することです。とはいえ、それは本質的に動機付けられ、誰もが価値と所属する権利を持っているという信念を保持することから派生する必要があります。');
INSERT INTO "values100to0623" VALUES (79,'精度','仕事でも私生活でも、データを扱う場合でも、正確さを評価することで、最良の意思決定を行うために必要な洞察を得ることができます。できるだけ多くの情報を入手することに重点を置いている人や企業もあ​​りますが、収集された情報が常に正しいとは限らず、何をすべきかさえわからないという知識を得ることがよくあります。しかし、正確さを重視すれば、無駄な情報で間違いを犯したり、時間を無駄にしたりする可能性は低くなります。');
INSERT INTO "values100to0623" VALUES (80,'利他主義','利他主義を重んじる人々は、他の人々に対して利他的な懸念を抱いています。彼らは定期的にランダムな親切な行為を行い、何らかの方法で他の誰かに利益をもたらすという唯一の理由で他の人を助けるために何かをします。利他主義を大切にするということは、忠誠心を持っているため、あるいは宗教的な理由でさえ、他人のために何もする義務を感じないことを意味します。無私無欲な行動を優先するなら、利他主義を大切にします。');
INSERT INTO "values100to0623" VALUES (81,'落ち着き','落ち着きを大切にすることで、比較的リラックスした状態を保ち、高圧の状況で論理的に考えることができます。これは、逆境に直面することが多い場合に保持する重要な価値です。落ち着いた心で、戦うのではなく、合理的な決定や他の人との妥協によって、精神的な明晰さを持ち、直面している問題の解決策を見つけることができるからです。 この記事では、常にレースをしているように感じた場合に、心を落ち着かせるのに役立つヒントをいくつか紹介します。');
INSERT INTO "values100to0623" VALUES (82,'才能','あなたの才能はあなたができることを支配するあなたの能力、スキル、そして能力です。成長の考え方を持って、あなたはあなたができることを知っているので、時間をかけてあなたの才能を開発することに取り組んでいます。自分自身や他の人の才能を大切にするときは、実現した価値に沿って仕事をすることで時間を最適化できます。個人的にも専門的にも、特定の分野で真の才能を持っている場合は、人生に強いプラスの影響を与える可能性のある本質的な価値もたくさん持っています。　個人的な価値観の種類|  個人的な価値観の例|  コアバリュークイズ　教育は重要であり、学ぶのに遅すぎることは決してありません。');
INSERT INTO "values100to0623" VALUES (83,'伝統','休日、誕生日、さらには夏の夜の家族の伝統を考えてみてください。あなたが伝統を大切にするなら、あなたは伝統を続けるためにあなたの家族の将来の世代にこれらのことを教えるでしょう。多くの人々は伝統を大切にしています。なぜなら、伝統は家族やあらゆる種類の緊密なコミュニティの独自性を定義するのに役立つからです。');
INSERT INTO "values100to0623" VALUES (84,'永続性','ランナーとして、永続性は私の個人的な価値です。永続性とは、気分に関係なく、継続するという決意です。やめたいと思っても、コストがかからないと成功しないことを知っているので、働き続けます。　持続性を評価することは、あなたが辞めたい日に行動を起こし続ける動機付けの要因であり、それはあなたが結果を蓄積し続けることを可能にします。永続性を持って、あなたはあなたが目指しているどんな目標も達成するまで押し続けます。');
INSERT INTO "values100to0623" VALUES (85,'ユニティ','団結の価値は、チームまたはグループ設定の全員が尊重されることです。Unityは協力関係を育み、人々の熱意を高め、力を与える雰囲気を提供します。団結を大切にするとき、あなたは帰属意識を育み、すべての人の幸福を向上させることを信じます。');
INSERT INTO "values100to0623" VALUES (86,'許容範囲','寛容を評価することは、何かに「我慢する」能力を持つことを超えています。あなたが寛容を大切にするとき、それはあなたがお互いに異なる人々の間の関係に対して前向きな見方をしていることを意味します。寛容は、尊敬、平等、そして独立と結びつくことができます。寛容を評価することは、それらが共通の道徳的価値の範囲内にある限り、矛盾する信念と考えが共存することを可能にします。寛容は社会的団結の重要な要素であり、偏見の救済策となる可能性があります。');
INSERT INTO "values100to0623" VALUES (87,'信憑性','特にあなた自身の行動に関しては、信憑性を評価しないと、不安、欲求不満、鬱病、そしてあなたの人生の意味の喪失につながる可能性があります。多くの人々は、最も社会的に受け入れられると信じる方法で、または他の人々が彼らに自分自身を提示してほしいと思う方法で自分自身を提示します。　私たちは皆、社会規範を守ろうとしていますが、時間をかけて自分が本当の自分であるかを振り返ることで、自分の最高のバージョンになり、充実した人生を送ることができます。');
INSERT INTO "values100to0623" VALUES (88,'チャレンジ','挑戦を大切にし、自分自身に挑戦するためのさまざまな道を絶えず見つけることは、一貫した個人の成長を確実にするための最良の方法の1つです。課題に直面することで、物事を成し遂げ、進歩を遂げるための限界であるとかつて信じていたものを超えて成長し、自分自身を押し上げる機会が得られます。あなたが挑戦に直面することをいとわないほど、あなたの人生はより豊かになります。');
INSERT INTO "values100to0623" VALUES (89,'認識','あなたの作品の認識を評価することは、あなたがその重要性を知っていて、他の人にもそれを見てもらいたいということを意味します。あなたは世界にとってのその重要性の確認を望んでいます。これは、常に称賛される必要があると感じることを意味するのではなく、ある種のドメインに価値を付加していると安心したときに満足感を感じることを意味する単なる価値です。あなたの仕事が認められることは、あなたがあなたのパフォーマンスを維持する、あるいは改善する意欲を維持するのに役立ちます。');
INSERT INTO "values100to0623" VALUES (90,'セキュリティ','個人の身元を保護する方法が増えるにつれ、価値としての自分の安全は最近明らかになっています。また、13秒ごとに1回の強盗が発生するため、人々は家の安全も大切にしています。人々は、あらゆる種類のセキュリティ脅威の犠牲になるリスクを最小限に抑えたいと考えています。これが一般的な価値です。');
INSERT INTO "values100to0623" VALUES (91,'自尊心','自尊心を大切にする人は、感情的、精神的、または経済的に不健康な人生の中で「ノー」と言うべき時期を知っています。  自尊心を大切にするということは、自分の価値や価値を知り、必要なときにいつでも自分を擁護することをいとわないことを意味します。これらの信念を考えると、あなたは他の人々との境界を設定し、あなたがどのように扱われるか、そして扱われないかに関して確固たる線を引くことができます。');
INSERT INTO "values100to0623" VALUES (92,'モデレート','私たちの脳は、あらゆる種類の刺激にすぐに慣れます。実際、私たちの体もそうです。これが、毎日まったく同じトレーニングを行っても、ルーチンを開始してから6か月後に結果が得られない理由です。これは、人々が新しいパートナーに会うときにそのハネムーンフェーズを通過する理由でもあります。あなたの脳は常にもっと欲しがっています。　しかし、これはしばしば不健康なことにつながります–より多くのジャンクフード、より多くのアルコール、より多くのNetflix…　しかし、節度を大切にすれば、日常生活からより充実感と満足感を味わうことができるでしょう。ある種のブレインラッシュを見つけるために極端なものを探す必要はありません。');
INSERT INTO "values100to0623" VALUES (93,'継続的な学習','継続的な学習を重視する人々は、自己改善と継続的な成功を重視する人々と同じです。私たちの指先で情報にアクセスできるので、あらゆるトピックについて自分自身を教える能力が簡単であるため、継続的な学習を大切にする人は幸運です。');
INSERT INTO "values100to0623" VALUES (94,'拘束','拘束は、息を吸った後、息を吐く前に体が取る短い一時停止で自然に現れます。Y私たちの心と体はどちらも行動を起こす前に一時停止する方法を知っているので、意識を高め、次の動きの結果を考慮してから行動を起こすことができます。この一時停止機能を評価することで、より深い意識の状態で意思決定を行い、最善の行動方針を決定することができます。');
INSERT INTO "values100to0623" VALUES (95,'準備','人生には確かに準備できないことがいくつかありますが、この品質を評価することで、人々は望ましくない状況を回避または軽減することができます。あなたの人生のあらゆる領域のリスクを特定し、行動の潜在的な計画を考え出すことは、後悔することはめったにありません。　（これはあなたが準備するのを助けることができる個人的な開発計画テンプレートのいくつかの例です。）');
INSERT INTO "values100to0623" VALUES (96,'汎用性','私たちの社会は「もの」を愛しています。私たちは、追加機能、「オールインワン」製品、およびそのようなものが大好きです。また、お金を節約することも大好きです。これら2つのことを組み合わせると、間違いなく、汎用性が人々の間で共通の価値になります。古い製品を再利用して「新しい」ものを作る、または使用済みの材料で完全にゼロから始めることは、環境的に持続可能な慣行であり、人々の間でも評価されているため、リサイクルと転用は、人々が多様性の価値に基づいて行動する一般的な方法です。');
INSERT INTO "values100to0623" VALUES (97,'パートナーシップ','パートナーシップを大切にするときは、コラボレーション、尊敬、チームワーク、忠誠心も大切にします。それがビジネスであろうと個人的な設定であろうと、パートナーシップを大切にすることは、さまざまなアイデアや意見が集まって、その部分の合計よりも優れたものを作成するための準備を整えます。');
INSERT INTO "values100to0623" VALUES (98,'応答性','応答性は、個人的にも専門的にも多くの人々から失われているように見える重要な価値です。そして、最近連絡を取るための無限の方法で、何人かの人々が単にそうすることに失敗するのは驚くべきことです。応答性を重視する人は、他人からの問い合わせにタイムリーに答えることが重要です。それが、人々が彼らに応答することを好む方法だからです。応答性を評価することは、他の人々と彼らの時間を尊重することでもあります。');
INSERT INTO "values100to0623" VALUES (99,'グレース','恵みを大切にするということは、無条件の愛と感謝の生活を送ることを意味します。恵みを持つことは、あなたが理解し、共感し、そして許すことを可能にするので、他の人々とつながることの核心です。恵みを大切にする多くの人は、それが癒しの感覚を提供すると感じています。');
INSERT INTO "values100to0623" VALUES (100,'イノベーション','イノベーションは、持続可能で効率的な方法を使用して、通常は新しいテクノロジーを使用して集合的な問題を解決することにより、前向きな考え方と社会の進歩を包含するため、一部の人にとって重要な価値です。　すでに存在する何かを改善することによって段階的なイノベーションに取り組んでいる場合でも、まったく新しい方法を見つけることによって根本的なイノベーションに取り組んでいる場合でも、イノベーションを評価することは、現状を受け入れることによって決して満足しないことを意味します。');
INSERT INTO "values100" VALUES (1,'受容','ありのままの他者を受け容れること');
INSERT INTO "values100" VALUES (2,'正確性','自分の意見や信念が正しいこと');
INSERT INTO "values100" VALUES (3,'達成','重要な何かを成し遂げること');
INSERT INTO "values100" VALUES (4,'冒険','新しくワクワクするような経験をすること');
INSERT INTO "values100" VALUES (5,'芸術','アートを通じて自己認識や自己表現をすること');
INSERT INTO "values100" VALUES (6,'魅力','肉体的に魅力的であること');
INSERT INTO "values100" VALUES (7,'権威','他人をまとめ上げて統率すること');
INSERT INTO "values100" VALUES (8,'自律性','自律していて周りから独立していること');
INSERT INTO "values100" VALUES (9,'美','身の回りの美を観察・堪能すること');
INSERT INTO "values100" VALUES (10,'所属','帰属意識や何かの一員であること');
INSERT INTO "values100" VALUES (11,'世話焼き','他人のお世話をすること');
INSERT INTO "values100" VALUES (12,'挑戦','困難なタスクや問題に取り組むこと');
INSERT INTO "values100" VALUES (13,'快適さ','楽しく快適な人生を送ること');
INSERT INTO "values100" VALUES (14,'誓約','持続的に有意義な誓約を達成すること');
INSERT INTO "values100" VALUES (15,'思いやり','他人の心配事に共感してその為に行動すること');
INSERT INTO "values100" VALUES (16,'複雑さ','人生における複雑な事象を取り扱うこと');
INSERT INTO "values100" VALUES (17,'妥協','他者との合意のために進んでギブ&テイクすること');
INSERT INTO "values100" VALUES (18,'貢献','この世界に持続的な貢献をすること');
INSERT INTO "values100" VALUES (19,'協力','他人と協力して何かに取り組むこと');
INSERT INTO "values100" VALUES (20,'勇気','逆境に直面しても強く在ること');
INSERT INTO "values100" VALUES (21,'礼儀','節度があって他人に対して礼儀正しいこと');
INSERT INTO "values100" VALUES (22,'創造性','新しい物事やアイデアを創り出すこと');
INSERT INTO "values100" VALUES (23,'好奇心','新しいことを探し求め、経験し、学ぶこと');
INSERT INTO "values100" VALUES (24,'頼もしさ','信頼できて頼りがいがあること');
INSERT INTO "values100" VALUES (25,'勤勉さ','為すこと全てに誠実かつ徹底的に取り組むこと');
INSERT INTO "values100" VALUES (26,'義務','自身に課された使命や義務を全うすること');
INSERT INTO "values100" VALUES (27,'エコ','環境との調和の中で生きていくこと');
INSERT INTO "values100" VALUES (28,'ワクワク','スリルや刺激に溢れた人生を送ること');
INSERT INTO "values100" VALUES (29,'忠実さ','人間関係において忠実かつ正直であること');
INSERT INTO "values100" VALUES (30,'名声','有名になって周りから認知されること');
INSERT INTO "values100" VALUES (31,'家族','幸せな愛すべき家庭を持つこと');
INSERT INTO "values100" VALUES (32,'フィットネス','肉体的に良好で頑丈であること');
INSERT INTO "values100" VALUES (33,'臨機応変','新しい環境にすぐに適応できること');
INSERT INTO "values100" VALUES (34,'許し','他人を許すこと');
INSERT INTO "values100" VALUES (35,'自由','制限から解放されて自由に生きること');
INSERT INTO "values100" VALUES (36,'友情','親密な助け合える友達をもつこと');
INSERT INTO "values100" VALUES (37,'楽しさ','存分に遊んで存分に楽しむこと');
INSERT INTO "values100" VALUES (38,'寛大さ','他人に自分のモノを分け与える余裕を持つこと');
INSERT INTO "values100" VALUES (39,'正当性','真の自分をしっかり反映した振る舞いをすること');
INSERT INTO "values100" VALUES (40,'神の意志','神の意志を求め従うこと');
INSERT INTO "values100" VALUES (41,'感謝','有難い気持ちで感謝すること');
INSERT INTO "values100" VALUES (42,'成長','常に変化し成長し続けること');
INSERT INTO "values100" VALUES (43,'健康','肉体的に良好で健康であること');
INSERT INTO "values100" VALUES (44,'正直さ','素直で正直にあること');
INSERT INTO "values100" VALUES (45,'希望','ポジティブで楽観的な将来への見通しを持つこと');
INSERT INTO "values100" VALUES (46,'謙虚さ','謙虚で出しゃばらないこと');
INSERT INTO "values100" VALUES (47,'ユーモア','ユーモアのある視点を持つこと');
INSERT INTO "values100" VALUES (48,'想像力','夢や可能性を持って生きること');
INSERT INTO "values100" VALUES (49,'独立','他人に依存しないこと');
INSERT INTO "values100" VALUES (50,'精励','人生におけるタスクに一生懸命取り組むこと');
INSERT INTO "values100" VALUES (51,'内なる平和','心穏やかになる平和な経験をすること');
INSERT INTO "values100" VALUES (52,'品格','毎日を自分の価値観に沿った所作で過ごすこと');
INSERT INTO "values100" VALUES (53,'知恵','思考のキレや活動を保ち続けること
');
INSERT INTO "values100" VALUES (54,'親密さ','心の奥底にある出来事を他人とシェアすること');
INSERT INTO "values100" VALUES (55,'正義','皆に等しく公平な行いを心がけること');
INSERT INTO "values100" VALUES (56,'知識','価値のある知識を学んで活かすこと');
INSERT INTO "values100" VALUES (57,'リーダーシップ','他人のモチベーションを高めて導くこと');
INSERT INTO "values100" VALUES (58,'休暇','リラックスや楽しむための時間を確保すること');
INSERT INTO "values100" VALUES (59,'愛される','親しい人たちから愛されること');
INSERT INTO "values100" VALUES (60,'愛する','他人を愛すること');
INSERT INTO "values100" VALUES (61,'熟練','あらゆる技能の能力を高めること');
INSERT INTO "values100" VALUES (62,'マインドフルネス','今この瞬間に意識を向けて生きること');
INSERT INTO "values100" VALUES (63,'中庸','何事も程々が良いという考えを持つこと');
INSERT INTO "values100" VALUES (64,'一夫一妻制','ただ一人、愛する人を持つこと');
INSERT INTO "values100" VALUES (65,'音楽','音楽を楽しみながら自分自身を表現すること
');
INSERT INTO "values100" VALUES (66,'不服従','権威や常識に疑問を呈し抗うことも厭わないこと');
INSERT INTO "values100" VALUES (67,'目新しさ','変化やバラエティに富んだ人生を送ること');
INSERT INTO "values100" VALUES (68,'面倒見','他人を応援したりサポートすること');
INSERT INTO "values100" VALUES (69,'開放性','新しい経験や考えに対してオープンであること');
INSERT INTO "values100" VALUES (70,'秩序','秩序立った規則正しい人生を送ること');
INSERT INTO "values100" VALUES (71,'情熱','考えや行動、人に対して深い感情を抱くこと');
INSERT INTO "values100" VALUES (72,'愛国主義','自国を愛し、自国に仕え、自国を守ること');
INSERT INTO "values100" VALUES (73,'喜び','喜びを感じること');
INSERT INTO "values100" VALUES (74,'人気','多くの人から好かれること');
INSERT INTO "values100" VALUES (75,'権力','他人をコントロールする力を持つこと');
INSERT INTO "values100" VALUES (76,'実用性','何が実用的で賢明な判断か？を重視すること');
INSERT INTO "values100" VALUES (77,'保護','愛する者を安全に守り続けること');
INSERT INTO "values100" VALUES (78,'提供','家族を養い世話をすること');
INSERT INTO "values100" VALUES (79,'目的','人生において意味や指針を持つこと');
INSERT INTO "values100" VALUES (80,'合理性','理由づけや論理性、根拠に基づいて行動すること');
INSERT INTO "values100" VALUES (81,'現実主義','現実的、実用的に物を捉えて行動すること');
INSERT INTO "values100" VALUES (82,'責任','責任ある決断や行動を執り行うこと');
INSERT INTO "values100" VALUES (83,'リスク','リスクやチャンスに飛び込んでいくこと');
INSERT INTO "values100" VALUES (84,'ロマンス','激しく、燃えるような愛を育むこと');
INSERT INTO "values100" VALUES (85,'安全性','全で守られた状態であること');
INSERT INTO "values100" VALUES (86,'自己受容','在るがままの自分を受け容れること1と86ほぼいっしょだが？');
INSERT INTO "values100" VALUES (87,'自己制御','自分自身の行いを律すること');
INSERT INTO "values100" VALUES (88,'自尊心','自分に対して良い感情を持ち、肯定できること');
INSERT INTO "values100" VALUES (89,'自己認識','自分自身に対する深く正直な理解を持つこと');
INSERT INTO "values100" VALUES (90,'サービス','他人の役に立つこと');
INSERT INTO "values100" VALUES (91,'セクシュアリティ','活発で満足のいく性生活を送ること');
INSERT INTO "values100" VALUES (92,'簡潔さ','必要最低限のものでシンプルに生きること');
INSERT INTO "values100" VALUES (93,'孤独','世間から離れて一人になれる時間や空間を持つこと');
INSERT INTO "values100" VALUES (94,'スピリチュアリティ','精神的に成長&成熟すること');
INSERT INTO "values100" VALUES (95,'安定性','平坦で安定した人生を送ること');
INSERT INTO "values100" VALUES (96,'寛容','自分とは違う人たちに敬意を払い、受け容れること');
INSERT INTO "values100" VALUES (97,'伝統','過去の尊重すべき習わしに従うこと');
INSERT INTO "values100" VALUES (98,'道徳','道徳的にピュアで素晴らしい人生を送ること');
INSERT INTO "values100" VALUES (99,'富','たくさんのお金を得ること');
INSERT INTO "values100" VALUES (100,'世界平和','世界の平和を促進するために働くこと');
COMMIT;
