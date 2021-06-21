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
	"v001"	Integer DEFAULT 0,
	"v002"	Integer DEFAULT 0,
	"v003"	Integer DEFAULT 0,
	"v004"	Integer DEFAULT 0,
	"v005"	Integer DEFAULT 0,
	"v006"	Integer DEFAULT 0,
	"v007"	Integer DEFAULT 0,
	"v008"	Integer DEFAULT 0,
	"v009"	Integer DEFAULT 0,
	"v010"	Integer DEFAULT 0,
	"v011"	Integer DEFAULT 0,
	"v012"	Integer DEFAULT 0,
	"v013"	Integer DEFAULT 0,
	"v014"	Integer DEFAULT 0,
	"v015"	Integer DEFAULT 0,
	"v016"	Integer DEFAULT 0,
	"v017"	Integer DEFAULT 0,
	"v018"	Integer DEFAULT 0,
	"v019"	Integer DEFAULT 0,
	"v020"	Integer DEFAULT 0,
	"v021"	Integer DEFAULT 0,
	"v022"	Integer DEFAULT 0,
	"v023"	Integer DEFAULT 0,
	"v024"	Integer DEFAULT 0,
	"v025"	Integer DEFAULT 0,
	"v026"	Integer DEFAULT 0,
	"v027"	Integer DEFAULT 0,
	"v028"	Integer DEFAULT 0,
	"v029"	Integer DEFAULT 0,
	"v030"	Integer DEFAULT 0,
	"v031"	Integer DEFAULT 0,
	"v032"	Integer DEFAULT 0,
	"v033"	Integer DEFAULT 0,
	"v034"	Integer DEFAULT 0,
	"v035"	Integer DEFAULT 0,
	"v036"	Integer DEFAULT 0,
	"v037"	Integer DEFAULT 0,
	"v038"	Integer DEFAULT 0,
	"v039"	Integer DEFAULT 0,
	"v040"	Integer DEFAULT 0,
	"v041"	Integer DEFAULT 0,
	"v042"	Integer DEFAULT 0,
	"v043"	Integer DEFAULT 0,
	"v044"	Integer DEFAULT 0,
	"v045"	Integer DEFAULT 0,
	"v046"	Integer DEFAULT 0,
	"v047"	Integer DEFAULT 0,
	"v048"	Integer DEFAULT 0,
	"v049"	Integer DEFAULT 0,
	"v050"	Integer DEFAULT 0,
	"v051"	Integer DEFAULT 0,
	"v052"	Integer DEFAULT 0,
	"v053"	Integer DEFAULT 0,
	"v054"	Integer DEFAULT 0,
	"v055"	Integer DEFAULT 0,
	"v056"	Integer DEFAULT 0,
	"v057"	Integer DEFAULT 0,
	"v058"	Integer DEFAULT 0,
	"v059"	Integer DEFAULT 0,
	"v060"	Integer DEFAULT 0,
	"v061"	Integer DEFAULT 0,
	"v062"	Integer DEFAULT 0,
	"v063"	Integer DEFAULT 0,
	"v064"	Integer DEFAULT 0,
	"v065"	Integer DEFAULT 0,
	"v066"	Integer DEFAULT 0,
	"v067"	Integer DEFAULT 0,
	"v068"	Integer DEFAULT 0,
	"v069"	Integer DEFAULT 0,
	"v070"	Integer DEFAULT 0,
	"v071"	Integer DEFAULT 0,
	"v072"	Integer DEFAULT 0,
	"v073"	Integer DEFAULT 0,
	"v074"	Integer DEFAULT 0,
	"v075"	Integer DEFAULT 0,
	"v076"	Integer DEFAULT 0,
	"v077"	Integer DEFAULT 0,
	"v078"	Integer DEFAULT 0,
	"v079"	Integer DEFAULT 0,
	"v080"	Integer DEFAULT 0,
	"v081"	Integer DEFAULT 0,
	"v082"	Integer DEFAULT 0,
	"v083"	Integer DEFAULT 0,
	"v084"	Integer DEFAULT 0,
	"v085"	Integer DEFAULT 0,
	"v086"	Integer DEFAULT 0,
	"v087"	Integer DEFAULT 0,
	"v088"	Integer DEFAULT 0,
	"v089"	Integer DEFAULT 0,
	"v090"	Integer DEFAULT 0,
	"v091"	Integer DEFAULT 0,
	"v092"	Integer DEFAULT 0,
	"v093"	Integer DEFAULT 0,
	"v094"	Integer DEFAULT 0,
	"v095"	Integer DEFAULT 0,
	"v096"	Integer DEFAULT 0,
	"v097"	Integer DEFAULT 0,
	"v098"	Integer DEFAULT 0,
	"v099"	Integer DEFAULT 0,
	"v100"	Integer DEFAULT 0,
	PRIMARY KEY("id" AUTOINCREMENT)
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
COMMIT;
