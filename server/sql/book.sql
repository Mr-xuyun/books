 SET  NAMES  UTF8;
 DROP  DATABASE  IF  EXISTS  books;
 CREATE  DATABASE  books CHARSET=UTF8;
USE  books;


CREATE TABLE `book`  (
  `bid` int(11) NOT NULL,
  `bookname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bookfile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coverimage` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `intro` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '逻辑学入门很简单', '兰晓华', '\"逻辑学入门很简单.docx\"', 'luojixuerumenhenjiandan.jpg', '《逻辑学入门很简单》以图文并茂的形式对逻辑学知识进行了阐述，通俗易懂，且各章节之间既连贯又保有一定的独立性。每章节分为理论知识、例题训练、有趣故事3个部分，全方位讲述相关的逻辑学知识，在理论知识中把逻辑学原理和现实生活中的例子相结合，在例题训练中精挑细选既有趣又有一定难度的逻辑例题，在有趣故事中精选了包含逻辑学原理的各类故事，让读者在既好玩又不浮夸的氛围中学到真正实用的逻辑学知识，锻炼自己的逻辑思');
INSERT INTO `book` VALUES (2, '百年孤独', '马尔克斯', '\"百年孤独-经典著作.docx\"', 'bainiangudu.jpg', '《百年孤独》，是哥伦比亚作家加西亚·马尔克斯创作的长篇小说，是其代表作，也是拉丁美洲魔幻现实主义文学的代表作，被誉为“再现拉丁美洲历史社会图景的鸿篇巨著”。\n作品描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。作品融入神话传说、民间故事、宗教典故等神秘因素，巧妙地糅合了现实与虚幻，展现出一个瑰丽的想象世界，成为20世纪重要的经典文');
INSERT INTO `book` VALUES (3, '怪诞行为学', '丹·艾瑞里', '\"怪诞行为学电子书.docx\"', 'guaidanxingweixue.jpg', '生活中我们常有莫名其妙的举动。你真的会失控？一时冲动就是没道理可言？本书作者丹·艾瑞里告诉你：错！所有的现象，背后都有经济的力量！社会当实验室，真人做小白鼠，丹·艾瑞里的这本《怪诞行为学》一语道破，用轻松幽默的方式告诉我们这是为什么，又该如何改变。他比别的所有经济学家都更好地揭示、解释了我们不可思议的行为背后的原因');
INSERT INTO `book` VALUES (4, '礼记大学', '曾子', '\"礼记-大学-带拼音.docx\"', 'lijidaxue.jpg', '《礼记》，儒家五经之一，西bai汉戴圣对秦汉du以前汉族礼仪著作加以辑录，编纂而成zhi，共49篇。十三经dao之一。');
INSERT INTO `book` VALUES (5, '时间简史', '斯蒂芬·威廉·霍金', '\"时间简史-经典著作.docx\"', 'shijianjianshi.jpg', '《时间简史》讲述是探索时间和空间核心秘密的故事，是关于宇宙本性的最前沿知识，包括我们的宇宙图像、空间和时间、膨胀的宇宙不确定性原理、基本粒子和自然的力、黑洞、黑洞不是这么黑、时间箭头等内容。第一版中的许多理论预言，后来在对微观或宏观宇宙世界观测中得到证实。\n\n自1988年首版以来，《时间简史》已成为全球科学著作的里程碑。它被翻译成40种文字，销售了近1000万册。此版更新了内容，把许多观测揭示的新');
INSERT INTO `book` VALUES (6, '马克思主义哲学的历史和现状', NULL, '\"马克思主义哲学的历史和现状（上卷）.docx\"', 'makesi.jpg', '上卷在时间上以19世纪为主，侧重叙述马克思主义哲学变革的实现及其在逻辑上的完成，突出它的精神源头及其理论活力；下卷在时间上以20世纪为主，侧重叙述马克思主义哲学在实践中的运用和曲折发展，突出它的中国化历程及其在中国特色社会主义实践中的艰难创新。由由第二国际是马克思主义哲学从偏重理论到偏重实践、从普遍形态到民族化的过渡，出于内容的衔接和篇幅的平衡的考虑，我们将这部分划进了上卷，并作了内容上的调整充实');
INSERT INTO `book` VALUES (7, '中国通史要略', '缪凤林', '\"中国通史要略.docx\"', 'zhongguotongshi.jpg', '《中国通史要略》详细介绍了中国历代通史。《中国通史要略》旨在网罗民国时期的学术精品，为读者了解和研究民国时期的文化学术成果提供读本。《中国通史要略》以“是古”为标题，与顾颉刚之“疑古”、郭沫若之“释古”鼎足而三。是中国史学研究的学术精品。');
INSERT INTO `book` VALUES (8, '自控力电子书', '凯利·麦格尼格尔', '\"自控力电子书.docx\"', 'zikongli.jpg', '《自控力》内容简介：作为一名健康心理学家，凯利•麦格尼格尔博士的工作就是帮助人们管理压力，并在生活中做出积极的改变。多年来，通过观察学生们是如何控制选择的，她意识到，人们关于自控的很多看法实际上妨碍了我们取得成功。例如，把自控力当作一种美德，可能会让初衷良好的目标脱离正轨。所以，麦格尼格尔要求她的学生了解影响自控的生理学基础、心理陷阱和各种社会因素。麦格尼格尔吸收了心理学、神经学和经济学等学科的最');
INSERT INTO `book` VALUES (9, '鬼谷子', '王诩', '\"《鬼谷子》原文与译文.docx\"', 'guiguzi.jpg', '鬼谷子是个很神秘的人物，战国中期的纵横家鼻祖，有说是齐国人，也有说是楚国人，也有说根本无此人，众说纷坛，莫衷一是。传说鬼谷子姓五，名之利，也有说姓刘名务滋，隐居于颖川(今河南禹县)阳城(今河南省登封县东南告成镇)的鬼谷，因自号“鬼谷子”。鬼谷先生在山中总结斗争经验，潜心治学，并教生授徒，传播政治斗争权术和游说技术，是张仪、苏秦纵横术的教授者。');
INSERT INTO `book` VALUES (10, '为什么精英都是时间控', '桦泽紫苑', '\"为什么精英都是时间控中文版.docx\"', 'weishenmejingyingdoushishijiankong.png', '精英都在践行的高效时间管理术\n\n作者曾是差点被精神压力打垮、被工作“忙杀”的神经科医生，在决心改变自己的生活方式后，发现了将大脑机能发挥到极致的时间管理术，实现了一天之中完成4个人才能完成的工作，还拥有一般人2倍以上的自由时间。');
INSERT INTO `book` VALUES (11, '天才在左疯子在右', '高铭', '\"天才在左疯子在右高铭.docx\"', 'tiancaizaizuofengzizaiyou.jpg', '本书以访谈录的形式记载了生活在另一个角落的人群（精神病患者、心理障碍者等边缘人）深刻、视角独特的所思所想，让人们可以了解到疯子抑或天才真正的内心世界。此书是国内第一本具有人文情怀的精神病患谈访录。内容涉及生理学、心理学、佛学、宗教、量子物理、符号学以及玛雅文明和预言等众多领域。');
INSERT INTO `book` VALUES (12, '中国神话史', '袁珂', '\"〈文学书籍〉中国神话史袁珂.docx\"', 'zhongguoshenhuashi.png', '袁珂神话学理论研究的开山之作\n\n国内唯一一部神话史');
INSERT INTO `book` VALUES (13, '论人的天性', '威尔逊', '\"论人的天性【[美]EO威尔逊】.docx\"', 'lunrendetianxing.jpg', '由于人类天性的方向必须通过各种知识的复杂组合加以考察，它们因此具有欺骗性，总是使哲学家们陷入泥淖。前进的道路只有一条，那就是把人性研究作为自然科学的一部分，把自然科学和社会科学以及人文学科统一起来，我不能想象任何意识形态的或形式主义的捷径。神经生物学不可能在宗师门下学到，遗传进化的结果也不是立法机构所能确定的。最后，即使只考虑正常存在的需要，我们也绝不能单靠聪明和善于思辨的人去处理伦理哲学问题，尽');
INSERT INTO `book` VALUES (14, '七月雪', '沧月', '\"论人的天性【[美]EO威尔逊】.docx\"', 'qiyuexue.png', '鼎剑阁霍展白为救治昔日恋人之子沫儿的病，用七年的时间拼死取得了药王谷主人薛紫夜开给他的七味绝世药引，魔教大光明宫排位第一的神秘杀手瞳为了自己能杀死魔教教主获得自由而抢夺龙血赤寒珠，霍展白和瞳在打斗中双双重伤，被薛紫夜送回药王谷治疗。沫儿的病事实上无法治疗，薛紫夜为一直隐 瞒着霍展白而不安，不顾自己寒症孱弱之身而设法寻找疗法。与此同时，薛紫夜震惊地发现这个能用眼神控制人精神的杀手瞳竟然是失散多年的儿');
INSERT INTO `book` VALUES (15, '催眠师手记', '高铭', '\"七夜雪高清完整版.docx\"', 'cuimianshishouji.png', '催眠师，黑暗中的低语者——《天才在左 疯子在右》姊妹篇《催眠师手记》\n\n你的内心深处是否有一个异世界？\n\n它荒芜、阴郁、压抑、无边无际......\n\n《催眠师手记》将带你走进未知的异世界\n\n《催眠师手记》将带你走出阴郁的异世界');
INSERT INTO `book` VALUES (16, '科学中的革命', '伯纳德·科恩', '\"科学中的革命.docx\"', 'kexuezhongdegeming.jpg', '本书是对科学的革命史观做了深刻全面的述评，并对四个世纪以来的近现代科学革命进行了详尽的记述。在科学革命的概念史研究方面，《科学中的革命》堪称经典。在对科学史的深入研究的基础上，科恩发现，所有科学中的革命（广义的科学革命）都要经过四个主要的前后相继的阶段。科恩所提出的划分科学革命的四个阶段和判断科学革命发生与否的四项标准，构成了他在本书中的分析框架。据此，他对自17世纪以来的科学史进行了详细的考察，');
INSERT INTO `book` VALUES (17, '资本的规则', '张巍', '\"资本的规则-张巍.docx\"', 'zibendeguize.jpg', '当前，资本市场是一个充满诱惑和浮夸的热词。并购、私募、私有化、跨境并购……专业人士欲以专业来开拓资本市场方向的业务，同时，资本市场却是“乱花渐入迷人眼”。本书作者以通俗易懂文采飞扬的写作风格，基于“中国的问题 世界的眼光”将资本市场的游戏规则抽丝剥茧，将现实发生的商战大戏纳入生动的分析之下。同时，将资本市场的关键词进行注释予以说明，堪称一本书轻松地读懂资本市场。');
INSERT INTO `book` VALUES (18, '空谷幽兰', '比尔·波特', '\"[文学书籍]空谷幽兰——寻访当代中国隐士.docx\"', 'kongguyoulan.jpg', '空谷幽兰》是美国汉学家比尔·波特写的一部关于中国的“寻隐之旅”。他通过20世纪八九十年代亲身探访隐居在终南山等地的中国现代隐士，引出了中国隐逸文化及其传统的产生和发展的历史，并将其与他正在采访的现状相对照，表达了对中国传统文化的高度赞叹和向往、怀恋，并写岀了他所看到的中国未来发展的希望。虽然是“寻隐之旅”，但这本书的风格并不凝重。比尔就是在描写被摧残的老树时，也要同时让读者看到老树残干上的嫩芽。书');
INSERT INTO `book` VALUES (19, '解忧杂货店', '东野圭吾', '\"解忧杂货店-东野圭吾.docx\"', 'jieyouzahuodian.jpg', '现代人内心流失的东西，这家杂货店能帮你找回——\n\n僻静的街道旁有一家杂货店，只要写下烦恼投进卷帘门的投信口，第二天就会在店后的牛奶箱里得到回答。\n\n因男友身患绝症，年轻女孩静子在爱情与梦想间徘徊；克郎为了音乐梦想离家漂泊，却在现实中寸步难行；少年浩介面临家庭巨变，挣扎在亲情与未来的迷茫中');
INSERT INTO `book` VALUES (20, '精益数据分析', '阿利斯泰尔', '\"精益数据分析.docx\"', 'jingyishujufenxi.jpg', '本书展示了如何验证自己的设想、找到真正的客户、打造能赚钱的产品，以及提升企业知名度。30多个案例分析，全球100多位知名企业家的真知灼见，为你呈现来之不易、经过实践检验的创业心得和宝贵经验，值得每位创业家和企业家一读。');
INSERT INTO `book` VALUES (21, '人类简史', '尤瓦尔·赫拉利', '\"人类简史-简史系列书籍.docx\"', 'renleijianshi.jpg', '十万年前，地球上至少有六种不同的人\n\n但今日，世界舞台为什么只剩下了我们自己？\n\n从只能啃食虎狼吃剩的残骨的猿人，到跃居食物链顶端的智人，\n\n从雪维洞穴壁上的原始人手印，到阿姆斯壮踩上月球的脚印，\n\n从认知革命、农业革命，到科学革命、生物科技革命，\n\n我们如何登上世界舞台成为万物之灵的？\n\n从公元前1776年的《汉摩拉比法典》，到1776年的美国独立宣言，\n\n从帝国主义、资本主义，到自由主义、消费');
INSERT INTO `book` VALUES (22, '紫禁城的黄昏', '庄士敦', '\"14160025_紫禁城的黄昏.docx\"', 'zijinchengdehuanghun.jpg', '《紫禁城的黄昏》记述了困居紫禁城中“清室”的黄昏时期——1912年至1924年——从中华民国成立到溥仪出宫期间的历史，庄士敦以帝制向共和的转变为历史背景，以担任帝师，与末代皇帝溥仪共处的经历为内容，对他耳闻目睹和亲身经历的大小事件做了独特的记述，通过对事件的记述表达了他的基本思想——政治上的复辟主张与文化上的保守主义。');
INSERT INTO `book` VALUES (23, '刀背藏身', '徐皓峰', '\"《刀背藏身：徐皓峰武侠短篇集》徐皓峰人民文学2013.do', 'daobeicangshen.jpg', '《刀背藏身：徐皓峰武侠短篇集》收入徐皓峰2012年5月至2013年2月间完成的三个短篇新作：《师父》《国士》《刀背藏身》。');
INSERT INTO `book` VALUES (24, '黑暗的左手', ' 厄休拉•勒古恩', '\"黑暗的左手.docx\"', 'heiandezuoshou.jpg', '冬星，寒冷，偏僻，远离人类活动范围，但人类的一支仍旧在这里扎下根来，生长繁衍。\n\n终于有一天，人类联盟发现了这一支兄弟。他们伸出了手：回来吧，我们的兄弟。\n\n机动使，联盟与未知星球第一次沟通的使者，代表着人类联盟善意的手。担任这一职位的人必须坚强勇敢，因为他是孤身一人，深入未知；他必须睿智机敏，以理解当地的政治与人情；最重要的是，他必须胸怀宽广，能够包容当地种种奇异的观念和风俗。');
INSERT INTO `book` VALUES (25, '白鸥三十载', '陈嘉映', '\"白鸥三十载_陈嘉映著.docx\"', 'baiousanshizai.jpg', '《白鸥三十载》内容简介：1977年，中断十年的高考制度恢复，一批“知青”的命运由此而改变，并被投入到与先前的生活完全不同的时代洪流之中。在这潮头多变的三十年里，他们执著地行走在自己选定的道路上，努力保持着自己独立的性格；在汹涌而来的滚滚红尘中，也不曾失却超越性的人文关怀。为着一个信念、一份眷恋，他们不懈地寻觅着。这里的每一本书所记录的就正是他们自己三十年来的心路历程，他们的经历、感受、体悟、思索以');
INSERT INTO `book` VALUES (26, '迷人的材料', '马克·米奥多尼克', '\"[自然科学书籍]迷人的材料.docx\"', 'mirendecailiao.jpg', '从茶杯、喷气发动机到家用电器、内裤，我们的生活充满了材料。但你想过没有，为什么玻璃是透明的？是什么让橡皮筋有弹性？为什么曲别针会弯曲？为什么不锈钢不生锈？水泥也能做成衣服？世界上最薄却最坚硬的东西是什么？为什么某一种材料做成的东西会长那样？材料如何塑造了我们的世界又对我们的生活产生了怎样的影响？');
INSERT INTO `book` VALUES (27, '我的前半生', '爱新觉罗·溥仪 ', '\"〈文学书籍〉[我的前半生]爱新觉罗_溥仪文字版.docx\"', 'wodeqianbansheng.jpg', '《我的前半生(全本)》是爱新觉罗·溥仪的自传，作者从自己的家庭背景写起，回顾了他在入宫做了皇帝、遭遇辛亥革命、清帝退位、民国成立、北洋军阀混战、出宫、客寓天津、做满洲国皇帝、逃亡，直至解放后接受改造，成为普通公民的全部历史。他的写作即是个人的历史书写，也由于他的 特殊的历史地位，全方位地再现了20世纪上半期中国社会所发生的历史变迁。');
INSERT INTO `book` VALUES (28, '宠物公墓', '斯蒂芬·金', '\"宠物公墓.docx\"', 'chongwugongmu.jpg', '斯蒂芬·金创作于八十年代的一部经典作品。一度被认为是其作品中最恐怖的一部，曾被搬上银幕。\n\n在缅因州拉德洛镇的一片密林深处，有一个密克马克部落的坟场。古老而神秘的印第安人传说代代相传：那里有食人的幽灵，还有一种起死回生的魔力。孩子们把他们死于非命的宠物埋葬在那里，期待着宠物归来');
INSERT INTO `book` VALUES (29, '千面英雄', '约瑟夫•坎贝尔', '\"千面英雄_10326621.docx\"', 'qianmianyingxiong.jpg', '《千面英雄》系美国比较神话学家约瑟夫·坎贝尔的一部力作。作者通过对大量东、西方神话的比较研究，从中总结出一个英雄的原型，这本书也因此而得名。“千面英雄”，意指神话中的英雄只有一个，那些不同时代、不同民族的神话中的英雄尽管千姿百态、各不相同，实际上乃是同一个英雄被不同的文化赋予千差万别的面貌而已。');
INSERT INTO `book` VALUES (30, '死神的浮力', '伊坂幸太郎', '\"死神的浮力-伊坂幸太郎2017-05.docx\"', 'sishendefuli.jpg', '死亡就是一切的盡頭嗎？\n\n☂ 死神千葉回來了 ☂\n\n限時一週‧定你生死！\n\n愛與和平好青年──伊坂幸太郎\n\n亞洲狂銷百萬冊《死神的精準度》系列最新力作\n\n千葉的任務是觀察特定人類，\n\n七日內判決此人的生死。');
INSERT INTO `book` VALUES (31, '未来生机', '克里斯缇安•施瓦格尔', '\"未来生机.docx\"', 'weilaishengji.jpg', '伴随着计算机、人工智能、大数据分析和物联网的出现，一场改变世界的互联网革命正在发生。然而，科学记者、生物学家克里斯缇安·施瓦格尔认为这只不过是一场更大剧变的前兆：一场将要从根本上改变人类生活方式和生活环境的未来进化革命即将到来，将给人类带来不可思议的生机。最伟大的科技变化不是在硬盘上发生的，而是在我们的大脑里，在我们的社会，在人类与地球万物的共生中，以及在我们的自然和气候里发生的。');
INSERT INTO `book` VALUES (32, '麦肯锡方法', '埃森・拉塞尔', '\"[互联网书籍]麦肯锡方法_.docx\"', 'maikenxifangfa.jpg', '对于管理界而言，麦肯锡就像珠宝中的名牌Cartier一样。没有哪一家咨询公司能像麦肯锡公司这样，既闻名遐迩、成就非凡、大受吹捧，又守口如瓶。这一具有传奇色彩的战略思想库培养了许多世界上最出色的管理思想家和商界领袖。');
INSERT INTO `book` VALUES (33, '遗落的南境', '杰夫•范德米尔', '\"遗落的南境2.docx\"', 'yiluodenanjing.jpg', '《遗落的南境1：湮灭》\n\n四位女科学家受派遣前往边界外勘察，这是一片荒芜多年、被称为X区域的神秘地带。她们已经是政府派遣出的第十二支勘探队。以往勘探队均以失败告终。第十一支勘探队成员在消失一年后，离奇出现在家中，不久纷纷死于癌症。');
INSERT INTO `book` VALUES (34, '火星救援', '安迪·威尔', '\"火星救援,火星救援.docx\"', 'huoxingjiuyuan.jpg', '六天前，马克·沃特尼成为了第一批行走在火星上的人。如今，他也将成为第一个葬身火星的人。\n\n一场突如其来的风暴让阿瑞斯三船员被迫放弃任务。撤离过程中，沃特尼遭遇意外，被孤身一人丢在了这片寸草不生的红色荒漠中，剩余的补给也远不够撑到救援可能抵达的那一天。');
INSERT INTO `book` VALUES (35, '跟任何人聊得来', '迈克•贝克特尔', '\"跟任何人都聊得来.docx\"', 'genrenherenliaodelai.jpg', '跟任何人都聊得来？内向的人也可以？\n\n是的，内向的人往往更善于倾听，更善于从对方的思维角度出发，从而获得更多的信息和信任。');
INSERT INTO `book` VALUES (36, '只有医生知道', '张羽', '\"只有医生知道.docx\"', 'zhiyouyishengzhidao.jpg', '这是一本有关女性的百科全书。抱着“大医治未病”的愿景，作者通过一个个生动的故事，在幽默而不乏温情的叙述中，力图帮助女性真正了解自己的身体，懂得爱护并且知道如何爱护自己，让女性真正掌控自己的身体、命运和生活的方向，不再受到无谓的伤害。');
INSERT INTO `book` VALUES (37, '如何阅读一本书', '莫提默·J. 艾德勒', '\"[高清书籍]如何阅读一本书.docx\"', 'ruheyueduyibenshu.jpg', '每本书的封面之下都有一套自己的骨架，作为一个分析阅读的读者，责任就是要找出这个骨架。一本书出现在面前时，肌肉包着骨头，衣服包裹着肌肉，可说是盛装而来。读者用不着揭开它的外衣或是撕去它的肌肉来得到在柔软表皮下的那套骨架，但是一定要用一双X光般的透视眼来看这本书，因为那是了解一本书、掌握其骨架的基础。');
INSERT INTO `book` VALUES (38, '史记', ' 司马迁 / 张守节', '\"〈文学书籍〉史记-司马迁.docx\"', 'shiji.jpg', '史记是我国第一部通史。在史记之前，有以年代为次的“编年史”如春秋，有以地域为限的“国别史”如国语、战国策，有以文告档卷形式保存下来的“政治史”如尚书，可是没有上下几千年，包罗各方面，而又融会贯通，�络分明，像史记那样的通史。');
INSERT INTO `book` VALUES (39, '细胞叛逆者', '温伯格', '\"细胞叛逆者.docx\"', 'xibaopannizhe.jpg', '《细胞叛逆者:癌症的起源》作者通过第一手资料，综合这些年来探索人类癌症起源的成果，特别是基因、致癌物质、癌基因、突变、细胞的成长、遗传和免疫机制与癌症发生的各种关系。');
INSERT INTO `book` VALUES (40, '地球上最后的夜晚', '罗贝托•波拉尼奥', '\"《地球上最后的夜晚》—波拉尼奥.docx\"', 'diqiushangdezuihouyigeyewan.jpg', '◎《2666》作者波拉尼奥首部短篇小说集\n\n◎令人着迷、苦寻的答案。挫败，但并非失败的旅程。\n\n◎《2666》屡获2012年各项读书大奖：深圳读书月年度十大好书；《中华读书报》年度十大好书，是惟一入选的外国小说；《中国图书商报》年度影响力图书；入围新浪读书年度十大好书等。\n\n◎波拉尼奥在短篇小说领域展现出来的纯熟技巧，堪与卡夫卡和博尔赫斯媲美');
INSERT INTO `book` VALUES (41, '最好的辩护', '亚伦·德肖维奇', '[经济书籍]最好的辩护德萧维奇.docx', 'zuihaodebianhu.jpg', '哈佛法学院的德萧维奇教授被《时代》周刊列入“未来50大风云人物”，赞扬他是“美国最顶尖的终审律师，司法界的圣犹大”；《生活》杂志说他是“刑事司法体制的偶像破坏者和鞭策者”......他代理的许多大案,都成为人类历史的经典案例。');
INSERT INTO `book` VALUES (42, '喧哗与骚动', '威廉•福克纳', '[美]威廉_福克纳-喧哗与骚动.docx', 'xuanhuayusaodong.jpg', '喧哗与骚动》是威廉•福克纳最著名的作品，几乎每个人都对这个名字耳熟能详。它以四个人物的不同视角将一个故事讲了四遍，如同一部交响乐的四个乐章，构筑了一个立体主义的美国南方社会，其创作手法之大胆丰富，足以为一部“创作艺术教科书”，是现当代文坛罕见的大手笔。《喧哗与骚动》被福克纳认作自己“最伟大的作品”，它也是公认的福克纳小说中最精美的一部。');
INSERT INTO `book` VALUES (43, '蛮荒记', '树下野狐 ', '蛮荒记-经典著作.docx', 'manhuangji.jpg', '大荒590年10月。黄帝率人军与水妖激战于真陵之野。五族离心，天崩地裂，消失了十六年的皮母地丘重现于世！这一天，距离神帝驾崩之日，恰好四年零六个月。大荒汤谷岛，龙神太子拓拔野，转世青帝蚩尤大婚在即，天下群雄前往道贺。烛龙纠集水妖秘密酝酿新的阴谋。东海之上，龙族与水妖狭路相逢，揭开大荒全面战局的序幕!与此同时，婚礼前夜，不速之客造访龙妃雨师妾，又引出一段二十年前的隐秘往事……爱恨情仇，如火如茶，蛮荒');
INSERT INTO `book` VALUES (44, '细雪', '谷崎润一郎', '《细雪(下)》.docx', 'xixue.jpg', '小说以大阪的名门望族莳冈家四姐妹为主人公，以美丽娴静的三妹雪子的相亲故事为主线，旁及当地的风土人情、社会事件、对外交往等等。作品犹如一幅色彩艳丽、格调高雅的绘画长卷，展现了现代日本关西地区上流社会的生活全貌，被誉为具有古典主义风格的最上乘的风俗小说。');
INSERT INTO `book` VALUES (45, '罗马帽子之谜', '埃勒里•奎因', '《罗马帽子之谜-艾勒里奎恩》.docx', 'luomamaozizhimi.jpg', '在座无虚席的罗马剧院中，上演着热闹的戏剧《枪战》。酗酒成性的蒙特•菲尔德律师身穿礼服，应某人之邀来到剧院，却在第二幕落幕前死于非命');
INSERT INTO `book` VALUES (46, '如何有效整理信息', '奥野宣之', '如何有效整理信息.docx', 'ruheyouxiaodezhenglixinxi.jpg', '《如何有效阅读一本书》作者奥野宣之成名作，累计销量超过50万册，在日本引发“笔记风潮”的创始之作。\n\n比日程手帐更深入，比课堂笔记更丰富的一元化笔记术：只用一册白菜价的笔记本，一网打尽生活中易遗漏的宝贵信息，创造属于自己的独特数据库，给予原创灵感充分发酵的空间。在信息爆炸的时代，让深度思考成为习惯，让闪亮创意随处可得。');
INSERT INTO `book` VALUES (47, '欧洲中世纪史', '朱迪斯·M·本内特', '欧洲中世纪史.docx', 'ouzhouzhongshijishi.jpg', '本书是欧洲中世纪史研究方面的经典著作，为美国数百所高校采用作为教材。 本书的一大特色是C·沃伦·霍利斯特清晰的历史观和动人的教学法，现经朱迪斯·本内特精到的修订而成第十版，覆盖了更多关于拜占庭和伊斯兰的内容，包含了经全面修订的系列地图、一组新的关于中世纪传说的短文等更多内容。在第八版的序言中，霍利斯特教授述及他在大学时意识到当今世界“是中世纪的产物”。《欧洲中世纪史》一书向今天的学生全面介绍了我们');
INSERT INTO `book` VALUES (48, '悲伤与理智', '约瑟夫•布罗茨基', '悲伤与理智-故事.docx', 'beishangyulizhi.jpg', '在这部题材丰富、视界浩淼的散文集中，约瑟夫•布罗茨基开篇便用深沉内省的目光审视了自己在苏俄的早年经历以及随后去往美国的流亡生涯。接着，作者用惊人的博学探讨了诗歌的张弛变幻、历史的本质、流亡诗人的双重困境等一系列颇具广度与深度的话题，思维的触手延揽古今，上及古罗马贤帝马可•奥勒留， 下至现当代诗人托马斯•哈代与罗伯特•弗罗斯特，将对存在本质的哲学探讨与对诗歌美学的炽烈情愫糅合锻造为继《小于一》之后的');
INSERT INTO `book` VALUES (49, '硅谷百年史', '阿伦·拉奥', '硅谷百年史.docx', 'guigubainianshi.jpg', '版权归作者所有，任何形式转载请联系作者。\n作者：微笑的一往无前（来自豆瓣）\n来源：https://www.douban.com/note/755498845/\n\n一直以来大众对硅谷的印象多半是高科技、金融、全球化、创新。而《硅谷百年史》作者开篇就为读者打开了广阔视角：硅谷的崛起，与其说是科技与创新精神的胜利，毋宁说是社会和经济学试验田的野蛮生长。');
INSERT INTO `book` VALUES (50, '世上的另一个我', '徐徐图之', '世上另一个我.docx', 'shijieshanglingyigewo.jpg', '贫穷少年谢竹星意外入选男团，与嘴欠傻白甜富二代王超成为队友。无意间的善意让王超认为他是超级无敌大好人，并自来熟要成为他*好的朋友。\n\n两个少年不同家世，不同背景，矛盾碰撞接踵而来。可在并肩前行中，也逐渐学会了包容彼此，理解彼此，并且对演艺这条道路有了全新的认识。\n\n他们决定，要将演艺之路好好走下去，成为*棒的爱豆，也成为彼此*可靠的朋友。');

-- ----------------------------
-- Table structure for bookreview
-- ----------------------------
DROP TABLE IF EXISTS `bookreview`;
CREATE TABLE `bookreview`  (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `review` varchar(500) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `date` bigint(20) NOT NULL,
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bookreview
-- ----------------------------
INSERT INTO `bookreview` VALUES (1, 1, 1, '这本书很好', 1597473793805);
INSERT INTO `bookreview` VALUES (5, 1, 1, '主要还是常熟', 1597637220347);
INSERT INTO `bookreview` VALUES (6, 1, 1, '是不是', 1597637472110);
INSERT INTO `bookreview` VALUES (7, 1, 1, '你得有天赋', 1597637515034);
INSERT INTO `bookreview` VALUES (8, 36, 1, '换华哥涓埃Aug啊', 1597649051762);
INSERT INTO `bookreview` VALUES (9, 3, 6, '人的非理性行为是可以通过某种手段来预测的行为学', 1597663048093);

-- ----------------------------
-- Table structure for bookshelf
-- ----------------------------
DROP TABLE IF EXISTS `bookshelf`;
CREATE TABLE `bookshelf`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `bookname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coverimage` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bookshelf
-- ----------------------------
INSERT INTO `bookshelf` VALUES (14, 3, 6, '怪诞行为学', 'guaidanxingweixue.jpg');

-- ----------------------------
-- Table structure for bookviewdetails
-- ----------------------------
DROP TABLE IF EXISTS `bookviewdetails`;
CREATE TABLE `bookviewdetails`  (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `details` varchar(500) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `date` bigint(20) NOT NULL,
  PRIMARY KEY (`did`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bookviewdetails
-- ----------------------------
INSERT INTO `bookviewdetails` VALUES (1, 1, 1, '说的不错', 1597542113132);
INSERT INTO `bookviewdetails` VALUES (3, 4, 2, '呼呼距骨', 1597756747185);

-- ----------------------------
-- Table structure for bookviewpoint
-- ----------------------------
DROP TABLE IF EXISTS `bookviewpoint`;
CREATE TABLE `bookviewpoint`  (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `bookname` char(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imgs` varchar(500) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `viewcontent` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` bigint(20) NOT NULL,
  `coverimage` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` char(20) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  PRIMARY KEY (`vid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bookviewpoint
-- ----------------------------
INSERT INTO `bookviewpoint` VALUES (1, 1, 1, '逻辑学入门很简单', NULL, '比较好', 1597508007355, 'luojixuerumenhenjiandan.jpg', '兰晓华');
INSERT INTO `bookviewpoint` VALUES (2, 2, 1, '逻辑学入门很简单', NULL, 'queshi', 1597508007355, 'luojixuerumenhenjiandan.jpg', '兰晓华');
INSERT INTO `bookviewpoint` VALUES (7, 4, 22, '紫禁城的黄昏', NULL, '晃晃', 1597624667707, 'zijinchengdehuanghun.jpg', '庄士敦');
INSERT INTO `bookviewpoint` VALUES (8, 4, 46, '如何有效整理信息', NULL, '确实提高了不少', 1597625519937, 'ruheyouxiaodezhenglixinxi.jpg', '奥野宣之');
INSERT INTO `bookviewpoint` VALUES (10, 1, 3, '怪诞行为学', NULL, '非理性按照指定的心理预设', 1597934045775, 'guaidanxingweixue.jpg', '丹·艾瑞里');
INSERT INTO `bookviewpoint` VALUES (11, 1, 3, '怪诞行为学', '2b2077f0-e36d-11ea-b41b-235f7e9a3928.jpg,2b20c610-e36d-11ea-b41b-235f7e9a3928.png,2b20ed20-e36d-11ea-b41b-235f7e9a3928.jpg,2b211430-e36d-11ea-b41b-235f7e9a3928.jpg,2b213b40-e36d-11ea-b41b-235f7e9a3928.gif,2b213b41-e36d-11ea-b41b-235f7e9a3928.jpg,2b21b070-e36d-11ea-b41b-235f7e9a3928.jpg,2b21d780-e36d-11ea-b41b-235f7e9a3928.jpg,2b21fe90-e36d-11ea-b41b-235f7e9a3928.jpg', '发表第一条说所', 1597986860252, 'guaidanxingweixue.jpg', '丹·艾瑞里');

-- ----------------------------
-- Table structure for bookzhai
-- ----------------------------
DROP TABLE IF EXISTS `bookzhai`;
CREATE TABLE `bookzhai`  (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bookname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_german2_ci DEFAULT NULL,
  `date` bigint(20) NOT NULL,
  PRIMARY KEY (`eid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `phone` char(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `upwd` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `avatar` varchar(50) CHARACTER SET ujis COLLATE ujis_japanese_ci NOT NULL DEFAULT '/default.png',
  `nickname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '17683722234', 'sos123456', '/09e2c140-e2f2-11ea-9778-6fecfc0508ab.gif', '云也雾也');
INSERT INTO `user` VALUES (2, '18576544532', 'sos123456', '/default.png', 'math');
INSERT INTO `user` VALUES (4, '18576544531', 'sos123456', '/75f59190-e01e-11ea-9f72-8fb1870e1ebb.jpg', 'math');
INSERT INTO `user` VALUES (5, '15643523452', 'sos123456', '/default.png', 'object');
INSERT INTO `user` VALUES (6, '16564874444', 'sos123456', '/899cd490-e07a-11ea-bda4-1bf576e534ac.jpg', 'ju');
INSERT INTO `user` VALUES (7, '17345267658', 'sos123', '/1e69e130-e4f4-11ea-8c0e-49e5c5f2af70.png', 'hujh');

-- ----------------------------
-- Table structure for userattention
-- ----------------------------
DROP TABLE IF EXISTS `userattention`;
CREATE TABLE `userattention`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `attentionid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `avatar` varchar(80) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userattention
-- ----------------------------
INSERT INTO `userattention` VALUES (24, 4, 1, '/a264a7a0-e05c-11ea-bda4-1bf576e534ac.jpg', '云也雾也');
INSERT INTO `userattention` VALUES (25, 6, 1, '/a264a7a0-e05c-11ea-bda4-1bf576e534ac.jpg', '云也雾也');

SET FOREIGN_KEY_CHECKS = 1;
