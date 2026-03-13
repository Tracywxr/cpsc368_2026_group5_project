SET DEFINE OFF;

DROP TABLE BoxOffice;
DROP TABLE Ratings;
DROP TABLE Movies;
PURGE RECYCLEBIN;


CREATE TABLE Movies (
    movieID VARCHAR(20) PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    year INTEGER NOT NULL,
    genres VARCHAR(100) NOT NULL,
    age VARCHAR(20) NOT NULL
);

CREATE TABLE BoxOffice (
    movieID VARCHAR(20) PRIMARY KEY,
    gross INTEGER NOT NULL,
    FOREIGN KEY (movieID) REFERENCES Movies(movieID)
);

CREATE TABLE Ratings (
    movieID VARCHAR(20) PRIMARY KEY,
    IMDbRatings NUMBER(3,1) NOT NULL,
    RottenTomatoesRatings NUMBER(5,2) NOT NULL,
    FOREIGN KEY (movieID) REFERENCES Movies(movieID)
);

INSERT INTO Movies VALUES (
'tt0069049',
'The Other Side of the Wind',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt0315642',
'Wazir',
2016,
'Action,Crime,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt0365545',
'Nappily Ever After',
2018,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt0460890',
'The Only Living Boy in New York',
2017,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt0462335',
'High-Rise',
2015,
'Drama,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt0475290',
'Hail, Caesar!',
2016,
'Comedy,Drama,Mystery',
'13+'
);

INSERT INTO Movies VALUES (
'tt0478970',
'Ant-Man',
2015,
'Action,Comedy,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt0490215',
'Silence',
2016,
'Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt0800325',
'The Dirt',
2019,
'Biography,Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt0810819',
'The Danish Girl',
2015,
'Biography,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt0810836',
'Dirt Music',
2019,
'Crime,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt0825283',
'Maximum Ride',
2016,
'Action,Adventure,Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt0837156',
'Pee-wee''s Big Holiday',
2016,
'Comedy,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt0837563',
'Pet Sematary',
2019,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt10003978',
'Fiddler: A Miracle of Miracles',
2019,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt10011500',
'Slay the Dragon',
2019,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt1002563',
'The Young Messiah',
2016,
'Drama,Fantasy',
'13+'
);

INSERT INTO Movies VALUES (
'tt10054316',
'Guest House',
2020,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt10055028',
'Dolphin Reef',
2018,
'Documentary,Family',
'all'
);

INSERT INTO Movies VALUES (
'tt10059518',
'Unhinged',
2020,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt10060094',
'The Knight Before Christmas',
2019,
'Adventure,Comedy,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt10065694',
'Antebellum',
2020,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt10078900',
'Freej Al Taibeen',
2018,
'Comedy,Sport',
'13+'
);

INSERT INTO Movies VALUES (
'tt10091530',
'Holiday Rush',
2019,
'Comedy,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt10092752',
'Earth and Blood',
2020,
'Action,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt10121762',
'Uriyadi 2',
2019,
'Thriller',
'all'
);

INSERT INTO Movies VALUES (
'tt10127562',
'Dragon Quest: Your Story',
2019,
'Action,Adventure,Animation',
'7+'
);

INSERT INTO Movies VALUES (
'tt10127684',
'Rogue City',
2020,
'Action,Crime,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt10147546',
'Homecoming: A Film by Beyoncé',
2019,
'Documentary,Music',
'13+'
);

INSERT INTO Movies VALUES (
'tt10156112',
'Hello, Love, Goodbye',
2019,
'Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt10161886',
'The Prom',
2020,
'Comedy,Drama,Musical',
'13+'
);

INSERT INTO Movies VALUES (
'tt10165624',
'Christmas Coupon',
2019,
'Comedy,Family,Romance',
'all'
);

INSERT INTO Movies VALUES (
'tt10181594',
'Uncle Naji in UAE',
2019,
'Comedy,Horror',
'13+'
);

INSERT INTO Movies VALUES (
'tt10183816',
'Dangerous Lies',
2020,
'Crime,Mystery,Thriller',
'16+'
);

INSERT INTO Movies VALUES (
'tt10199586',
'Atlantics',
2019,
'Drama,Fantasy,Mystery',
'13+'
);

INSERT INTO Movies VALUES (
'tt10199914',
'The Boys in the Band',
2020,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt10229846',
'Rolling Stone: Life and Death of Brian Jones',
2019,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt10230422',
'Class of ''83',
2020,
'Crime,Drama,Thriller',
'16+'
);

INSERT INTO Movies VALUES (
'tt10230436',
'Yeh Ballet',
2020,
'Drama,Musical',
'13+'
);

INSERT INTO Movies VALUES (
'tt10230492',
'Still Today',
2020,
'Comedy,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt10235600',
'Kaali Khuhi',
2020,
'Drama,Horror,Mystery',
'16+'
);

INSERT INTO Movies VALUES (
'tt10243992',
'I''m Your Woman',
2020,
'Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt1025100',
'Gemini Man',
2019,
'Action,Sci-Fi,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt10253466',
'Badland',
2019,
'Drama,Western',
'13+'
);

INSERT INTO Movies VALUES (
'tt10255320',
'Deviant Love',
2019,
'Thriller',
'16+'
);

INSERT INTO Movies VALUES (
'tt10276114',
'Rapid Response',
2019,
'Documentary,Sport',
'13+'
);

INSERT INTO Movies VALUES (
'tt10276470',
'Work It',
2020,
'Comedy,Music',
'16+'
);

INSERT INTO Movies VALUES (
'tt10288566',
'Another Round',
2020,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt10288820',
'Chhota Bheem Kung Fu Dhamaka',
2019,
'Action,Adventure,Animation',
'all'
);

INSERT INTO Movies VALUES (
'tt10289996',
'The Black Godfather',
2019,
'Biography,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt10303324',
'Survive the Night',
2020,
'Action,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt10307440',
'The Decline',
2020,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt10308928',
'Force of Nature',
2020,
'Action,Adventure,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt10324122',
'Secret Society of Second Born Royals',
2020,
'Action,Adventure,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt10324144',
'Article 15',
2019,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt1034385',
'Cold Skin',
2017,
'Action,Fantasy,Horror',
'16+'
);

INSERT INTO Movies VALUES (
'tt1034415',
'Suspiria',
2018,
'Drama,Fantasy,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt10350626',
'Gunjan Saxena: The Kargil Girl',
2020,
'Action,Biography,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt10362466',
'After We Collided',
2020,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt10394738',
'I Am Greta',
2020,
'Biography,Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt10397734',
'The Set Up',
2019,
'Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt10431500',
'Miracle in Cell No. 7',
2019,
'Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt10432682',
'Feo pero Sabroso',
2019,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt10456740',
'Lost Bullet',
2020,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt10477558',
'Violet Evergarden: Eternity and the Auto Memory Doll',
2019,
'Animation,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt10514222',
'Ma Rainey''s Black Bottom',
2020,
'Drama,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt10525174',
'Narco Soldiers',
2019,
'Action,Crime',
'13+'
);

INSERT INTO Movies VALUES (
'tt10525672',
'Silver Skates',
2020,
'Adventure,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt10529644',
'Copper Bill',
2020,
'Thriller',
'7+'
);

INSERT INTO Movies VALUES (
'tt10539608',
'The Midnight Sky',
2020,
'Adventure,Drama,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt10579992',
'Mister America',
2019,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt10589914',
'The Forest of Love',
2019,
'Crime,Drama,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt10600398',
'We Can Be Heroes',
2020,
'Action,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt10618286',
'Mank',
2020,
'Biography,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt10627584',
'The Life Ahead',
2020,
'Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt10637682',
'The Panti Sisters',
2019,
'Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt10642834',
'The Forty-Year-Old Version',
2020,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt10649016',
'Safety',
2020,
'Biography,Drama,Sport',
'7+'
);

INSERT INTO Movies VALUES (
'tt10682266',
'Hubie Halloween',
2020,
'Comedy,Horror,Mystery',
'13+'
);

INSERT INTO Movies VALUES (
'tt1070874',
'The Trial of the Chicago 7',
2020,
'Drama,History,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt10709060',
'Game Over',
2019,
'Action,Crime,Horror',
'13+'
);

INSERT INTO Movies VALUES (
'tt10711654',
'Most Likely to Succeed',
2019,
'Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt10714856',
'Feel the Beat',
2020,
'Comedy,Drama,Family',
'all'
);

INSERT INTO Movies VALUES (
'tt10715194',
'Back to School',
2019,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt1072748',
'Winchester',
2018,
'Biography,Fantasy,Horror',
'13+'
);

INSERT INTO Movies VALUES (
'tt10728764',
'Nobody Knows I''m Here',
2020,
'Drama,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt10731386',
'Audrey',
2020,
'Biography,Documentary,History',
'16+'
);

INSERT INTO Movies VALUES (
'tt10773090',
'Sarileru Neekevvaru',
2020,
'Action,Comedy,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt10773114',
'One Day We''ll Talk About Today',
2020,
'Drama',
'all'
);

INSERT INTO Movies VALUES (
'tt10773606',
'Kalek Shanab',
2019,
'Comedy,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt10798660',
'Wish Upon a Unicorn',
2020,
'Adventure,Family,Fantasy',
'7+'
);

INSERT INTO Movies VALUES (
'tt10816484',
'18 Presents',
2020,
'Drama,Family,Fantasy',
'18+'
);

INSERT INTO Movies VALUES (
'tt10845262',
'Miracle in Cell No. 7',
2019,
'Comedy,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt10851618',
'Rising Phoenix',
2020,
'Documentary,Sport',
'13+'
);

INSERT INTO Movies VALUES (
'tt10856726',
'Travis Scott: Look Mom I Can Fly',
2019,
'Documentary,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt1086064',
'Bill & Ted Face the Music',
2020,
'Adventure,Comedy,Music',
'7+'
);

INSERT INTO Movies VALUES (
'tt10883004',
'Bikram: Yogi, Guru, Predator',
2019,
'Crime,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt10886166',
'365 Days',
2020,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt10895610',
'Float',
2019,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt10915286',
'Tell Me Who I Am',
2019,
'Documentary,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt10920190',
'Righteous Villains',
2020,
'Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt10933680',
'Debt Collectors',
2020,
'Action,Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt10941528',
'Under the Riccione Sun',
2020,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt10958282',
'Street Flow',
2019,
'Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt10970452',
'Nothing to Lose',
2018,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt10984818',
'Alelí',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt10994688',
'The Binge',
2020,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt11005162',
'Elevator Baby',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt11007024',
'Border',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt11010144',
'Seriously Single',
2020,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt11044122',
'Never Surrender: A Galaxy Quest Documentary',
2019,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt11057594',
'Fatal Affair',
2020,
'Crime,Horror,Mystery',
'16+'
);

INSERT INTO Movies VALUES (
'tt11057644',
'The Christmas Chronicles: Part Two',
2020,
'Adventure,Comedy,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt11057912',
'Tuna Girl',
2019,
'Comedy,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt11101550',
'Tales of Found Footage',
2019,
'Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt11127690',
'The Paramedic',
2020,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt11156614',
'Dead Kids',
2019,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt11161474',
'Pieces of a Woman',
2020,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt11199410',
'The Princess Switch: Switched Again',
2020,
'Comedy,Drama,Family',
'all'
);

INSERT INTO Movies VALUES (
'tt1124037',
'Free State of Jones',
2016,
'Action,Biography,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt11240506',
'Nobody Sleeps in the Woods Tonight',
2020,
'Comedy,Fantasy,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt11242218',
'Books of Blood',
2020,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt11276598',
'Pets United',
2019,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt11284280',
'Cadaver',
2020,
'Drama,Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt11323854',
'Brothers',
2015,
'Adventure',
'13+'
);

INSERT INTO Movies VALUES (
'tt11327514',
'Uncle Frank',
2020,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt11374114',
'The King',
2019,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt11378154',
'The App That Stole Christmas',
2020,
'Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt11378264',
'Mucho Mucho Amor: The Legend of Walter Mercado',
2020,
'Biography,Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt11388406',
'Horse Girl',
2020,
'Drama,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt11388580',
'Miss Americana',
2020,
'Biography,Documentary,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt11390036',
'A Fall from Grace',
2020,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt11394180',
'Dick Johnson Is Dead',
2020,
'Biography,Documentary,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt11394184',
'The Fight',
2020,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt11394338',
'Giving Voice',
2020,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt11416746',
'Time',
2020,
'Biography,Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt11426644',
'We Are Freestyle Love Supreme',
2020,
'Comedy,Documentary,Musical',
'18+'
);

INSERT INTO Movies VALUES (
'tt11454066',
'You Cannot Kill David Arquette',
2020,
'Documentary,Sport',
'18+'
);

INSERT INTO Movies VALUES (
'tt11464826',
'The Social Dilemma',
2020,
'Documentary,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt11576124',
'Rogue',
2020,
'Action,Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt1158939',
'Never Grow Old',
2019,
'Drama,Thriller,Western',
'18+'
);

INSERT INTO Movies VALUES (
'tt11640412',
'#FriendButMarried 2',
2020,
'Biography,Comedy,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt11642302',
'#cats_the_mewvie',
2020,
'Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt11649910',
'Forgotten',
2017,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt11651796',
'AK vs AK',
2020,
'Comedy,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt11656172',
'Hard Kill',
2020,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt11681250',
'Godmothered',
2020,
'Comedy,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt11690838',
'The Legend of Baron To''a',
2020,
'Action,Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt11697484',
'The 2nd',
2020,
'Action,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt11749980',
'Tarung Sarung',
2020,
'Action,Adventure,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt11792734',
'Leyla Everlasting',
2020,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt11827806',
'So Much Love to Give',
2020,
'Comedy',
'16+'
);

INSERT INTO Movies VALUES (
'tt1183374',
'Pet',
2016,
'Crime,Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt11835236',
'Generasi 90an: Melankolia',
2020,
'Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt11905462',
'Athlete A',
2020,
'Crime,Documentary,Sport',
'13+'
);

INSERT INTO Movies VALUES (
'tt11905962',
'Sputnik',
2020,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt11906032',
'Picture a Scientist',
2020,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt11958344',
'A Whisker Away',
2020,
'Adventure,Animation,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt11968072',
'A Stone in the Water',
2019,
'Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt11988512',
'One-Way to Tomorrow',
2020,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt11990802',
'Don''t Call Me Bigfoot',
2020,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt11994750',
'Made You Look: A True Story About Fake Art',
2020,
'Crime,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt12036052',
'Elephant',
2020,
'Adventure,Biography,Documentary',
'all'
);

INSERT INTO Movies VALUES (
'tt12053202',
'Arendelle Castle Yule Log',
2019,
'Animation',
'all'
);

INSERT INTO Movies VALUES (
'tt1206885',
'Rambo: Last Blood',
2019,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt12100044',
'In the Footsteps of Elephant',
2020,
'Adventure,Documentary,Family',
'all'
);

INSERT INTO Movies VALUES (
'tt12108272',
'Close Encounters of the Fifth Kind',
2020,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt12116846',
'Pandemic',
2020,
'Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt1211837',
'Doctor Strange',
2016,
'Action,Adventure,Fantasy',
'13+'
);

INSERT INTO Movies VALUES (
'tt12139700',
'Jungle Beat: The Movie',
2020,
'Adventure,Animation,Comedy',
'all'
);

INSERT INTO Movies VALUES (
'tt12187586',
'Father Soldier Son',
2020,
'Documentary,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt12215286',
'Dino Dana: The Movie',
2020,
'Adventure,Family,Fantasy',
'7+'
);

INSERT INTO Movies VALUES (
'tt1226837',
'Beautiful Boy',
2018,
'Biography,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt12282598',
'Intuition',
2020,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt12291542',
'Macbeth',
2015,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt12298506',
'Black Box',
2020,
'Horror,Mystery,Sci-Fi',
'16+'
);

INSERT INTO Movies VALUES (
'tt1230168',
'Same Kind of Different as Me',
2017,
'Biography,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt12323842',
'Gina Brillon: The Floor Is Lava',
2020,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt1235187',
'Where Hands Touch',
2018,
'Drama,Romance,War',
'13+'
);

INSERT INTO Movies VALUES (
'tt12381488',
'Run',
2020,
'Mystery,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt1239242',
'Frank and Cindy',
2015,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt12393526',
'Bulbbul',
2020,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt12517908',
'Aliens Stole My Body',
2020,
'Adventure,Comedy,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt12538822',
'All In: The Fight for Democracy',
2020,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt12588398',
'We Are One',
2020,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt12607910',
'Black Is King',
2020,
'Adventure,Drama,Fantasy',
'16+'
);

INSERT INTO Movies VALUES (
'tt1266036',
'Valley Girl',
2020,
'Comedy,Music,Musical',
'13+'
);

INSERT INTO Movies VALUES (
'tt12660966',
'Lost on Everest',
2020,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt12724622',
'Anelka: Misunderstood',
2020,
'Documentary,Sport',
'16+'
);

INSERT INTO Movies VALUES (
'tt12752158',
'Terror at Bigfoot Pond',
2020,
'Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt12757438',
'Smiley Face Killers',
2020,
'Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt12766708',
'Deep in Vogue',
2019,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt12792418',
'Night in Paradise',
2020,
'Action,Crime,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt12800914',
'Run',
2020,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt12824834',
'Jennifer Aniston: More Than Friends',
2020,
'Biography,Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt12838350',
'The Assistant',
2020,
'Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt1285009',
'The Strangers: Prey at Night',
2018,
'Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt12888462',
'My Octopus Teacher',
2020,
'Documentary,Drama',
'all'
);

INSERT INTO Movies VALUES (
'tt1289401',
'Ghostbusters',
2016,
'Action,Comedy,Fantasy',
'13+'
);

INSERT INTO Movies VALUES (
'tt12981810',
'Finding Jesus',
2020,
'Animation,Family,Fantasy',
'all'
);

INSERT INTO Movies VALUES (
'tt12982218',
'GIMS: On the Record',
2020,
'Documentary,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt1298644',
'The Hustle',
2019,
'Comedy,Crime',
'13+'
);

INSERT INTO Movies VALUES (
'tt12987894',
'American Murder: The Family Next Door',
2020,
'Crime,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt13009186',
'The Boy from Medellín',
2020,
'Biography,Documentary,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt1302006',
'The Irishman',
2019,
'Biography,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt13033280',
'Space Dogs: Tropical Adventure',
2020,
'Action,Adventure,Animation',
'7+'
);

INSERT INTO Movies VALUES (
'tt13055780',
'A California Christmas',
2020,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt13065386',
'Totally Under Control',
2020,
'Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt13081264',
'Story of Kale: When Someone''s in Love',
2020,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt1308728',
'The Happytime Murders',
2018,
'Action,Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt13106900',
'All Because of You',
2020,
'Action,Comedy,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt13143964',
'Borat Subsequent Moviefilm',
2020,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt13150630',
'Secrets of the Saqqara Tomb',
2020,
'Documentary,History',
'7+'
);

INSERT INTO Movies VALUES (
'tt13179918',
'Meteor Moon',
2020,
'Action,Sci-Fi',
'7+'
);

INSERT INTO Movies VALUES (
'tt13206564',
'The Three Deaths of Marisela Escobedo',
2020,
'Crime,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt13236566',
'Operation Christmas Drop',
2020,
'Comedy,Family,Romance',
'all'
);

INSERT INTO Movies VALUES (
'tt13237174',
'The Real Right Stuff',
2020,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt13276386',
'Shawn Mendes: In Wonder',
2020,
'Documentary,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt13279528',
'What We Wanted',
2020,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt13290168',
'High School Musical: The Musical: The Holiday Special',
2020,
'Comedy,Drama,Musical',
'all'
);

INSERT INTO Movies VALUES (
'tt13292206',
'Bobbleheads: The Movie',
2020,
'Animation,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt13318052',
'Midnight at the Magnolia',
2020,
'Comedy,Romance',
'all'
);

INSERT INTO Movies VALUES (
'tt13410288',
'The Decline',
2020,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt13528990',
'Shawn Mendes: Live in Concert',
2020,
'Music',
'7+'
);

INSERT INTO Movies VALUES (
'tt1365050',
'Beasts of No Nation',
2015,
'Drama,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt13723064',
'All My Friends Are Dead',
2020,
'Comedy,Crime,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt13834880',
'Luka Chuppi',
2019,
'Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt1386691',
'Shimmer Lake',
2017,
'Action,Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt1464763',
'Mute',
2018,
'Mystery,Sci-Fi,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt1480285',
'Abattoir',
2016,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt14837210',
'Battle',
2018,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt1485796',
'The Greatest Showman',
2017,
'Biography,Drama,Musical',
'7+'
);

INSERT INTO Movies VALUES (
'tt1488606',
'Triple Frontier',
2019,
'Action,Adventure,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt1489887',
'Booksmart',
2019,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt15048926',
'Notturno',
2020,
'Documentary,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt1507002',
'Bottom of the 9th',
2019,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt1536537',
'What Happened to Monday',
2017,
'Action,Crime,Fantasy',
'18+'
);

INSERT INTO Movies VALUES (
'tt1540011',
'Blair Witch',
2016,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt1542768',
'True Memoirs of an International Assassin',
2016,
'Action,Comedy,Crime',
'16+'
);

INSERT INTO Movies VALUES (
'tt1544608',
'Voice from the Stone',
2017,
'Drama,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt1545304',
'Desperados',
2020,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt1552211',
'The Last Days of American Crime',
2020,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt1588878',
'The Late Bloomer',
2016,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt1617661',
'Jupiter Ascending',
2015,
'Action,Adventure,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt1618434',
'Murder Mystery',
2019,
'Crime,Mystery,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt1620680',
'A Wrinkle in Time',
2018,
'Adventure,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt1620981',
'The Addams Family',
2019,
'Animation,Comedy,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt1629242',
'Careful What You Wish For',
2015,
'Drama,Romance,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt16411500',
'Easter Island Unsolved',
2018,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt1655441',
'The Age of Adaline',
2015,
'Drama,Fantasy,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt1655461',
'Wild Oats',
2016,
'Action,Adventure,Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt1680140',
'The Stolen',
2017,
'Action,Adventure,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt1690967',
'Come Sunday',
2018,
'Biography,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt1691916',
'Before I Fall',
2017,
'Drama,Fantasy,Mystery',
'13+'
);

INSERT INTO Movies VALUES (
'tt1694021',
'Into the Grizzly Maze',
2015,
'Action,Adventure,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt1712192',
'Message from the King',
2016,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt1712261',
'Triple 9',
2016,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt1714917',
'Gimme Danger',
2016,
'Documentary,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt1720621',
'Trafficked',
2017,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt1724970',
'Beyond Skyline',
2017,
'Action,Adventure,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt1727770',
'Absolutely Anything',
2015,
'Comedy,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt1727824',
'Bohemian Rhapsody',
2018,
'Biography,Drama,Music',
'13+'
);

INSERT INTO Movies VALUES (
'tt1730768',
'The Zookeeper''s Wife',
2017,
'Biography,Drama,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt1734493',
'Unlocked',
2017,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt1754656',
'The Little Prince',
2015,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt1773753',
'Mara',
2018,
'Crime,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt1780967',
'Seberg',
2019,
'Biography,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt1781922',
'No Escape',
2015,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt1790809',
'Pirates of the Caribbean: Dead Men Tell No Tales',
2017,
'Action,Adventure,Fantasy',
'13+'
);

INSERT INTO Movies VALUES (
'tt1799516',
'Benji',
2018,
'Crime,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt1801552',
'Gotti',
2018,
'Biography,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt1825683',
'Black Panther',
2018,
'Action,Adventure,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt1830643',
'Death of Me',
2020,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt1833116',
'The Informer',
2019,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt1838556',
'Honest Thief',
2020,
'Action,Crime,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt1841642',
'Demonic',
2015,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt1860242',
'The Highwaymen',
2019,
'Biography,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt1878841',
'The Darkness',
2016,
'Horror,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt1880399',
'Kodachrome',
2017,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt1918734',
'2067',
2020,
'Mystery,Sci-Fi',
'16+'
);

INSERT INTO Movies VALUES (
'tt1935194',
'Overdrive',
2017,
'Action,Adventure,Crime',
'13+'
);

INSERT INTO Movies VALUES (
'tt1935859',
'Miss Peregrine''s Home for Peculiar Children',
2016,
'Adventure,Drama,Family',
'13+'
);

INSERT INTO Movies VALUES (
'tt1937340',
'Beyond Paradise',
2015,
'Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt1949605',
'Who Gets the Dog?',
2016,
'Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt1950135',
'Drunk Wedding',
2015,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt1950235',
'Let It Snow',
2019,
'Comedy,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt1961175',
'American Assassin',
2017,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt1974419',
'The Neon Demon',
2016,
'Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt1979376',
'Toy Story 4',
2019,
'Adventure,Animation,Comedy',
'all'
);

INSERT INTO Movies VALUES (
'tt1979388',
'The Good Dinosaur',
2015,
'Action,Adventure,Animation',
'7+'
);

INSERT INTO Movies VALUES (
'tt1999890',
'Hell Fest',
2018,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt2005151',
'War Dogs',
2016,
'Biography,Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt2006295',
'The 33',
2015,
'Biography,Drama,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt2016335',
'Walter',
2015,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt2025690',
'The Finest Hours',
2016,
'Action,Drama,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt2032572',
'USS Indianapolis: Men of Courage',
2016,
'Action,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt2057392',
'Eye in the Sky',
2015,
'Action,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt2066051',
'Rocketman',
2019,
'Biography,Drama,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt2069797',
'Delirium',
2018,
'Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt2072233',
'Sleepless',
2017,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt2076298',
'Ip Man 4: The Finale',
2019,
'Action,Biography,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt2080374',
'Steve Jobs',
2015,
'Biography,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt2090465',
'Black Butterfly',
2017,
'Drama,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt2093991',
'Elvis & Nixon',
2016,
'Comedy,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt2106651',
'Spectral',
2016,
'Action,Adventure,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt2114504',
'Woody Woodpecker',
2017,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt2126357',
'Second Act',
2018,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt21317468',
'Mr. Right',
2016,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt2140379',
'Self/less',
2015,
'Action,Mystery,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt2197936',
'Fatima',
2020,
'Drama,War',
'13+'
);

INSERT INTO Movies VALUES (
'tt2224026',
'Home',
2015,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt2226597',
'The Mountain Between Us',
2017,
'Drama,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt2235695',
'Rebecca',
2020,
'Drama,Mystery,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt2277860',
'Finding Dory',
2016,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt2291540',
'My Friend Dahmer',
2017,
'Biography,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt2323912',
'Beast Mode',
2020,
'Comedy,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt2338424',
'Tumbledown',
2015,
'Comedy,Drama,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt2365580',
'Where''d You Go, Bernadette',
2019,
'Comedy,Crime,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt2368254',
'A Private War',
2018,
'Biography,Drama,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt2380307',
'Coco',
2017,
'Adventure,Animation,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt2386237',
'Malevolent',
2018,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt2386404',
'He Never Died',
2015,
'Comedy,Drama,Fantasy',
'18+'
);

INSERT INTO Movies VALUES (
'tt2388771',
'Mowgli: Legend of the Jungle',
2018,
'Adventure,Drama,Fantasy',
'13+'
);

INSERT INTO Movies VALUES (
'tt2390335',
'The Bone Garden',
2016,
'Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt2395427',
'Avengers: Age of Ultron',
2015,
'Action,Adventure,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt2396589',
'Mudbound',
2017,
'Drama,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt2401097',
'Tracers',
2015,
'Action,Crime,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt2404465',
'Troop Zero',
2019,
'Comedy,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt2417712',
'Goon: Last of the Enforcers',
2017,
'Comedy,Sport',
'18+'
);

INSERT INTO Movies VALUES (
'tt2424988',
'Gabbar Is Back',
2015,
'Action,Crime,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt2433040',
'Beyond the Mask',
2015,
'Action,Adventure,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt2452042',
'The Peanuts Movie',
2015,
'Adventure,Animation,Comedy',
'all'
);

INSERT INTO Movies VALUES (
'tt2452386',
'The Fundamentals of Caring',
2016,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt2474932',
'Despite the Falling Snow',
2016,
'Drama,Mystery,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt2477218',
'Field of Lost Shoes',
2015,
'Action,Drama,War',
'13+'
);

INSERT INTO Movies VALUES (
'tt2479478',
'The Ridiculous 6',
2015,
'Action,Adventure,Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt2481498',
'Extremely Wicked, Shockingly Evil and Vile',
2019,
'Biography,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt2499472',
'Point Blank',
2019,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt2523832',
'A Girl Like Her',
2015,
'Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt2538204',
'#Lucky Number',
2015,
'Comedy',
'16+'
);

INSERT INTO Movies VALUES (
'tt2543164',
'Arrival',
2016,
'Drama,Mystery,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt2548396',
'The Cloverfield Paradox',
2018,
'Horror,Sci-Fi,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt2554274',
'Crimson Peak',
2015,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt2566644',
'Seoul Searching',
2015,
'Comedy,Drama,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt2567026',
'Alice Through the Looking Glass',
2016,
'Adventure,Family,Fantasy',
'7+'
);

INSERT INTO Movies VALUES (
'tt2582498',
'Sweet Virginia',
2017,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt2582576',
'Sand Castle',
2017,
'Action,Drama,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt2582782',
'Hell or High Water',
2016,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt2582784',
'Flower',
2017,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt2586120',
'Racer and the Jailbird',
2017,
'Crime,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt2597760',
'The Outcasts',
2017,
'Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt2649554',
'Midnight Special',
2016,
'Drama,Mystery,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt2652118',
'Crouching Tiger, Hidden Dragon: Sword of Destiny',
2016,
'Action,Adventure,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt2660888',
'Star Trek Beyond',
2016,
'Action,Adventure,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt2702920',
'The Secret Garden',
2020,
'Drama,Family,Fantasy',
'7+'
);

INSERT INTO Movies VALUES (
'tt2713980',
'Olympia',
2018,
'Biography,Comedy,Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt2718440',
'Moonwalkers',
2015,
'Action,Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt2726552',
'A Kind of Murder',
2016,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt2737304',
'Bird Box',
2018,
'Horror,Mystery,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt2752772',
'Sinister 2',
2015,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt2782692',
'Ali''s Wedding',
2017,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt2788732',
'Pete''s Dragon',
2016,
'Action,Adventure,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt2800050',
'A Beautiful Planet',
2016,
'Documentary',
'all'
);

INSERT INTO Movies VALUES (
'tt2802136',
'Home Sweet Hell',
2015,
'Comedy,Crime,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt2806390',
'Milton''s Secret',
2016,
'Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt2865120',
'Ratchet & Clank',
2016,
'Action,Adventure,Animation',
'7+'
);

INSERT INTO Movies VALUES (
'tt2866708',
'Strange But True',
2019,
'Drama,Mystery,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt2884018',
'Macbeth',
2015,
'Drama,History,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt2888046',
'Ip Man 3',
2015,
'Action,Biography,Crime',
'13+'
);

INSERT INTO Movies VALUES (
'tt2910904',
'The Dressmaker',
2015,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt2931140',
'New Life',
2016,
'Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt2932536',
'47 Meters Down',
2017,
'Horror,Mystery,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt2933474',
'Superfast!',
2015,
'Action,Comedy,Crime',
'13+'
);

INSERT INTO Movies VALUES (
'tt2936390',
'Battle Drone',
2018,
'Action,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt2937366',
'Little Evil',
2017,
'Comedy,Fantasy,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt2938956',
'The Transporter Refueled',
2015,
'Action,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt2948356',
'Zootopia',
2016,
'Action,Adventure,Animation',
'7+'
);

INSERT INTO Movies VALUES (
'tt2948372',
'Soul',
2020,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt2948606',
'Assassin''s Game',
2015,
'Action',
'18+'
);

INSERT INTO Movies VALUES (
'tt2950052',
'Bravetown',
2015,
'Drama,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt2950418',
'Greater',
2016,
'Biography,Family,Sport',
'7+'
);

INSERT INTO Movies VALUES (
'tt2962984',
'Girlfriend''s Day',
2017,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt2967226',
'Killing Hasselhoff',
2017,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt2978102',
'Term Life',
2016,
'Action,Adventure,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt2980210',
'A Hologram for the King',
2016,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt2990126',
'100 Streets',
2016,
'Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt2990140',
'The Christmas Chronicles',
2018,
'Adventure,Comedy,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt3009772',
'Ode to Joy',
2019,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt3014078',
'Shangri-La Suite',
2016,
'Action,Crime,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt3016748',
'Jacob''s Ladder',
2019,
'Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3018070',
'Stonewall',
2015,
'Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt30216076',
'Chhota Bheem Ka Roosi Romanch',
2019,
'Animation',
'all'
);

INSERT INTO Movies VALUES (
'tt3038708',
'Iron Sky: The Coming Race',
2019,
'Action,Adventure,Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt3053228',
'Day of the Dead: Bloodline',
2017,
'Action,Drama,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt3065204',
'The Conjuring 2',
2016,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3068194',
'Love & Friendship',
2016,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt3072482',
'Hardcore Henry',
2015,
'Action,Adventure,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt3074546',
'Casual Encounters',
2016,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt3077214',
'Suffragette',
2015,
'Drama,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt3082854',
'The Commune',
2016,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3083008',
'The Program',
2015,
'Biography,Drama,Sport',
'13+'
);

INSERT INTO Movies VALUES (
'tt3089630',
'Artemis Fowl',
2020,
'Adventure,Family,Fantasy',
'7+'
);

INSERT INTO Movies VALUES (
'tt3095734',
'Monster Trucks',
2016,
'Action,Adventure,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt3100274',
'Manhattan Night',
2016,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt3111426',
'Lost Girls',
2020,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt3120280',
'Sierra Burgess Is a Loser',
2018,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt3120960',
'A Hitman in London',
2015,
'Action,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt3131050',
'Delirium',
2018,
'Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3148502',
'Tamasha',
2015,
'Comedy,Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt3155328',
'Win It All',
2017,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt3155342',
'All Together Now',
2020,
'Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt3164256',
'Rock the Kasbah',
2015,
'Comedy,Music,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt3174376',
'Before I Wake',
2016,
'Drama,Fantasy,Horror',
'13+'
);

INSERT INTO Movies VALUES (
'tt3183402',
'Veronica',
2017,
'Drama,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3201640',
'Extinction',
2018,
'Action,Drama,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt3203528',
'Bad Samaritan',
2018,
'Crime,Drama,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt3203606',
'Trumbo',
2015,
'Biography,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3203620',
'The Dinner',
2017,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3208026',
'Black ''47',
2018,
'Action,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt3216348',
'Incarnate',
2016,
'Horror,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt3228088',
'Spark: A Space Tail',
2016,
'Action,Adventure,Animation',
'7+'
);

INSERT INTO Movies VALUES (
'tt3233418',
'Spare Parts',
2015,
'Biography,Drama,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt3234084',
'I Do... Until I Don''t',
2017,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt3236120',
'I''ll See You in My Dreams',
2015,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt3255590',
'El Camino Christmas',
2017,
'Comedy,Crime,Western',
'18+'
);

INSERT INTO Movies VALUES (
'tt3256226',
'IO',
2019,
'Adventure,Drama,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt3260524',
'A Secret Love',
2020,
'Biography,Documentary,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3268340',
'Crown Heights',
2017,
'Biography,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3278540',
'A Nice Girl Like You',
2020,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt3282076',
'Domino',
2019,
'Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3292080',
'The Journey Is the Destination',
2016,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3311020',
'Be Afraid',
2017,
'Horror,Sci-Fi,Thriller',
'16+'
);

INSERT INTO Movies VALUES (
'tt3316948',
'American Ultra',
2015,
'Action,Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt3317234',
'Game Over, Man!',
2018,
'Action,Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt3317696',
'There Is Many Like Us',
2015,
'Biography,Documentary,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt3319920',
'Regression',
2015,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt3322892',
'XX',
2017,
'Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt3322898',
'Baby Steps',
2015,
'Comedy,Drama,Family',
'18+'
);

INSERT INTO Movies VALUES (
'tt3332064',
'Pan',
2015,
'Action,Adventure,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt3335606',
'Berlin Syndrome',
2017,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt3340446',
'Storm Boy',
2019,
'Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt3349578',
'Bad Kids of Crestview Academy',
2017,
'Action,Comedy,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3375972',
'The Price of Fame',
2017,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt3379352',
'Mully',
2015,
'Adventure,Biography,Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt3385516',
'X-Men: Apocalypse',
2016,
'Action,Adventure,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt3401748',
'Oddball',
2015,
'Adventure,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt3405236',
'Raees',
2017,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3410408',
'Rocky Handsome',
2016,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3411444',
'Ferdinand',
2017,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt3415992',
'The Time of Their Lives',
2017,
'Comedy',
'16+'
);

INSERT INTO Movies VALUES (
'tt3416532',
'A Monster Calls',
2016,
'Adventure,Drama,Family',
'13+'
);

INSERT INTO Movies VALUES (
'tt3416828',
'Ice Age: Collision Course',
2016,
'Adventure,Animation,Comedy',
'all'
);

INSERT INTO Movies VALUES (
'tt3447364',
'Detective Byomkesh Bakshy!',
2015,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3451230',
'High Strung',
2016,
'Drama,Music,Romance',
'all'
);

INSERT INTO Movies VALUES (
'tt3451984',
'Another Time',
2018,
'Adventure,Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt3453964',
'Jugni',
2016,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt3458510',
'Dude',
2018,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3460252',
'The Hateful Eight',
2015,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt3481000',
'Chocolate City',
2015,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3481634',
'Inconceivable',
2017,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3482000',
'A Thousand Junkies',
2017,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt34978640',
'Run',
2020,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt3498820',
'Captain America: Civil War',
2016,
'Action,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt3501632',
'Thor: Ragnarok',
2017,
'Action,Adventure,Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt3503406',
'The Whole Truth',
2016,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt3507138',
'A Girl Like Grace',
2015,
'Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt3511596',
'Close Range',
2015,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3521126',
'The Disaster Artist',
2017,
'Biography,Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3521164',
'Moana',
2016,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt3547306',
'Cut Throat City',
2020,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3553976',
'Captain Fantastic',
2016,
'Adventure,Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3567666',
'Stratton',
2017,
'Action,Adventure,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3569230',
'Legend',
2015,
'Biography,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3588588',
'Backtrace',
2018,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3606752',
'Cars 3',
2017,
'Adventure,Animation,Comedy',
'all'
);

INSERT INTO Movies VALUES (
'tt3606756',
'Incredibles 2',
2018,
'Action,Adventure,Animation',
'7+'
);

INSERT INTO Movies VALUES (
'tt3608930',
'In a Valley of Violence',
2016,
'Action,Drama,Western',
'18+'
);

INSERT INTO Movies VALUES (
'tt3610576',
'Hope Lost',
2015,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3614530',
'Jem and the Holograms',
2015,
'Adventure,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt3620846',
'Happy Birthday',
2016,
'Comedy,Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3625516',
'MindGamers',
2015,
'Action,Sci-Fi,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3650484',
'Brothers',
2015,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt3654796',
'Creep 2',
2017,
'Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3660770',
'Monkey Kingdom',
2015,
'Documentary',
'all'
);

INSERT INTO Movies VALUES (
'tt3661298',
'Septembers of Shiraz',
2015,
'Drama,History,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt3661394',
'The One and Only Ivan',
2020,
'Adventure,Comedy,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt3672120',
'Pottersville',
2017,
'Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt3685236',
'Ibiza',
2018,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt3687398',
'The Runner',
2015,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3691740',
'The BFG',
2016,
'Adventure,Family,Fantasy',
'7+'
);

INSERT INTO Movies VALUES (
'tt3700364',
'Marshall''s Miracle',
2015,
'Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt3703836',
'Henry Gamble''s Birthday Party',
2015,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3704416',
'Digging for Fire',
2015,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3707106',
'By the Sea',
2015,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt3707114',
'Janis: Little Girl Blue',
2015,
'Biography,Documentary,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt3711510',
'The Warning',
2018,
'Crime,Drama,Fantasy',
'18+'
);

INSERT INTO Movies VALUES (
'tt3715320',
'Irrational Man',
2015,
'Comedy,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3721964',
'Gringo',
2018,
'Action,Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt3722070',
'The Lady in the Van',
2015,
'Biography,Comedy,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt3722614',
'Revolt',
2017,
'Action,Adventure,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt3727982',
'Ava''s Possessions',
2015,
'Comedy,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt3730510',
'Puerto Ricans in Paris',
2015,
'Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt3732280',
'When Angels Sleep',
2018,
'Adventure,Drama,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt3739110',
'The Yellow Birds',
2017,
'Drama,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt3746298',
'Vendetta',
2015,
'Action,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3746824',
'Sheep & Wolves',
2016,
'Animation,Comedy,Family',
'all'
);

INSERT INTO Movies VALUES (
'tt3748172',
'Gerald''s Game',
2017,
'Drama,Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3748440',
'Blue Mountain State: The Rise of Thadland',
2016,
'Comedy,Sport',
'18+'
);

INSERT INTO Movies VALUES (
'tt3748528',
'Rogue One: A Star Wars Story',
2016,
'Action,Adventure,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt3755362',
'Rendez-Vous',
2015,
'Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt3758172',
'Jungle',
2017,
'Adventure,Biography,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3766394',
'Hello, My Name Is Doris',
2015,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt3767278',
'Bayou Caviar',
2018,
'Crime,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3771536',
'Shivaay',
2016,
'Action,Crime,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt3774114',
'Snowden',
2016,
'Biography,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3774466',
'Ashby',
2015,
'Comedy,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt3776826',
'Operation Avalanche',
2016,
'Comedy,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt3778354',
'Bear with Us',
2016,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt3778644',
'Solo: A Star Wars Story',
2018,
'Action,Adventure,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt3780500',
'Journey''s End',
2017,
'Drama,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt3799232',
'The Kissing Booth',
2018,
'Comedy,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt3799694',
'The Nice Guys',
2016,
'Action,Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt3802576',
'Brothers',
2015,
'Action,Drama,Sport',
'13+'
);

INSERT INTO Movies VALUES (
'tt3804756',
'Mothers of the Bride',
2015,
'Comedy,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt3813310',
'Cop Car',
2015,
'Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3824412',
'Results',
2015,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt3829378',
'Stephanie',
2017,
'Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt3833474',
'Never Let Go',
2015,
'Action,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3833480',
'The Outpost',
2019,
'Action,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt3835080',
'31',
2016,
'Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3846674',
'To All the Boys I''ve Loved Before',
2018,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt3848668',
'The Little Prince',
2015,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt3859272',
'Tragedy Girls',
2017,
'Comedy,Crime,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt3860092',
'Everything About Her',
2016,
'Comedy,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt3864056',
'The Goldfinch',
2019,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt3892172',
'Leave No Trace',
2018,
'Adventure,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt3896102',
'Tad, the Lost Explorer, and the Secret of King Midas',
2017,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt3896198',
'Guardians of the Galaxy Vol. 2',
2017,
'Action,Adventure,Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt3907584',
'All the Bright Places',
2020,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt3957956',
'12 Rounds 3: Lockdown',
2015,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3962984',
'The Black Prince',
2017,
'Drama,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt3963816',
'Marauders',
2016,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3967856',
'Okja',
2017,
'Action,Adventure,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt3967878',
'Illang: The Wolf Brigade',
2018,
'Action,Drama,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt3972110',
'The Assault',
2017,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt3977462',
'Full Out',
2015,
'Biography,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt3979300',
'Magic Camp',
2020,
'Comedy,Family,Fantasy',
'7+'
);

INSERT INTO Movies VALUES (
'tt3993886',
'All Day and a Night',
2020,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4000956',
'Brother Nature',
2016,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt4002772',
'Once I Was a Beehive',
2015,
'Comedy,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt4003440',
'The House That Jack Built',
2018,
'Crime,Drama,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt4007558',
'Shaandaar',
2015,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt4008566',
'The Influence',
2019,
'Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt4016934',
'The Handmaiden',
2016,
'Drama,Romance,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4019560',
'Exposed',
2016,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt4034208',
'The Next Skin',
2016,
'Drama,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4034228',
'Manchester by the Sea',
2016,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4034452',
'Hyena Road',
2015,
'Drama,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt4052050',
'He''s Out There',
2018,
'Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4068576',
'The Nightingale',
2018,
'Adventure,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4072296',
'Ruta Madre',
2019,
'Comedy,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt4083572',
'Urge',
2016,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt4086018',
'Charming',
2018,
'Adventure,Animation,Comedy',
'all'
);

INSERT INTO Movies VALUES (
'tt4102722',
'The Night Watchmen',
2017,
'Action,Comedy,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt4106514',
'The Postcard Killings',
2020,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt4109632',
'A Million Happy Nows',
2017,
'Drama,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt4110568',
'Dil Dhadakne Do',
2015,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt4111956',
'A World Away',
2019,
'Adventure,Fantasy',
'13+'
);

INSERT INTO Movies VALUES (
'tt4118606',
'The Curse of Sleeping Beauty',
2016,
'Fantasy,Horror,Mystery',
'16+'
);

INSERT INTO Movies VALUES (
'tt4126304',
'Cartel Land',
2015,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt4126476',
'After',
2019,
'Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt4129428',
'Jagga Jasoos',
2017,
'Adventure,Comedy,Musical',
'7+'
);

INSERT INTO Movies VALUES (
'tt4136084',
'Florence Foster Jenkins',
2016,
'Biography,Comedy,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt4139588',
'Polar',
2019,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4144190',
'Wiener-Dog',
2016,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4144332',
'Deidra & Laney Rob a Train',
2017,
'Comedy,Crime,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt4151192',
'The Condemned 2',
2015,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4154664',
'Captain Marvel',
2019,
'Action,Adventure,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt4154756',
'Avengers: Infinity War',
2018,
'Action,Adventure,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt4154796',
'Avengers: Endgame',
2019,
'Action,Adventure,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt4172498',
'E19 Virus',
2017,
'Horror',
'13+'
);

INSERT INTO Movies VALUES (
'tt4174926',
'Where Love Found Me',
2016,
'Action,Adventure,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt4180290',
'Come Out Fighting',
2016,
'Crime,Drama,Sport',
'18+'
);

INSERT INTO Movies VALUES (
'tt4180560',
'Otherhood',
2019,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt4181052',
'Special Correspondents',
2016,
'Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt4191054',
'Strange Magic',
2015,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt4196848',
'Mr. Church',
2016,
'Comedy,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt4205718',
'Intersect',
2020,
'Horror,Sci-Fi,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4210080',
'The Confirmation',
2016,
'Adventure,Comedy,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt4213806',
'Toro',
2016,
'Action,Crime,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt4225622',
'The Babysitter',
2017,
'Comedy,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt4230700',
'Complete Unknown',
2016,
'Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt4257940',
'The Lost Husband',
2020,
'Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt4258698',
'Southside with You',
2016,
'Biography,Drama,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt4266076',
'The Night Eats the World',
2018,
'Drama,Horror,Thriller',
'16+'
);

INSERT INTO Movies VALUES (
'tt4267026',
'Hell House LLC',
2015,
'Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt4269118',
'Seven in Heaven',
2018,
'Drama,Horror,Mystery',
'13+'
);

INSERT INTO Movies VALUES (
'tt4270516',
'Grandma',
2015,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4273292',
'Under the Shadow',
2016,
'Drama,Fantasy,Horror',
'13+'
);

INSERT INTO Movies VALUES (
'tt4293752',
'Gascoigne',
2015,
'Biography,Documentary,Sport',
'13+'
);

INSERT INTO Movies VALUES (
'tt4296186',
'An Inspector Calls',
2015,
'Comedy,Mystery',
'7+'
);

INSERT INTO Movies VALUES (
'tt4323594',
'I''m No Longer Here',
2019,
'Drama,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt4327752',
'Lady Bloodfight',
2016,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4329242',
'Love Jacked',
2018,
'Comedy,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt4332232',
'Fractured',
2019,
'Drama,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4333674',
'Hunterrr',
2015,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt4338154',
'Hawaizaada',
2015,
'Biography,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt4341582',
'Queen of Katwe',
2016,
'Biography,Drama,Sport',
'7+'
);

INSERT INTO Movies VALUES (
'tt4353250',
'The Last Black Man in San Francisco',
2019,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4354740',
'Dharam Sankat Mein',
2015,
'Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt4357394',
'Tau',
2018,
'Horror,Sci-Fi,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4364194',
'The Peanut Butter Falcon',
2019,
'Adventure,Comedy,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt4379728',
'Three',
2016,
'Action,Crime,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt4382824',
'Army of One',
2016,
'Biography,Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt4384148',
'The Underground Sinema',
2015,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt4397342',
'Cities of Last Things',
2018,
'Crime,Drama,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt4400994',
'The Ballad of Lefty Brown',
2017,
'Action,Drama,Western',
'18+'
);

INSERT INTO Movies VALUES (
'tt4411584',
'The Secret: Dare to Dream',
2020,
'Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt4413338',
'Abzurdah',
2015,
'Biography,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt4426464',
'Arctic Dogs',
2019,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt4430136',
'Pyaar Ka Punchnama 2',
2015,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt4430212',
'Drishyam',
2015,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt4432804',
'Last Day of School',
2016,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt4434004',
'Udta Punjab',
2016,
'Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4442130',
'Wild Horses',
2015,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt4454078',
'Supercon',
2018,
'Action,Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt4464394',
'The Gracefield Incident',
2017,
'Horror,Mystery,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt4466894',
'Sahara',
2017,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt4486728',
'Saved by Grace',
2016,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt4489160',
'You''re My Boss',
2015,
'Comedy,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt4497338',
'Interrogation',
2016,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4499228',
'Gehenna: Where Death Lives',
2016,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4500196',
'Two Wrongs',
2015,
'Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt4503906',
'Pokémon the Movie: Hoopa and the Clash of Ages',
2015,
'Action,Adventure,Animation',
'7+'
);

INSERT INTO Movies VALUES (
'tt4513674',
'Café Society',
2016,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt4518260',
'Albion: The Enchanted Stallion',
2016,
'Action,Adventure,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt4520988',
'Frozen II',
2019,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt4528386',
'¡Asu Mare! 2',
2015,
'Biography,Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt4532818',
'Sophie and the Rising Sun',
2016,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4535650',
'Dilwale',
2015,
'Action,Comedy,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt4540710',
'Miss Sloane',
2016,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4550098',
'Nocturnal Animals',
2016,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4550420',
'My Blind Brother',
2016,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt4559006',
'Ae Dil Hai Mushkil',
2016,
'Drama,Musical,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt4560008',
'This Beautiful Fantastic',
2016,
'Comedy,Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt4560436',
'Mile 22',
2018,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4565520',
'The Layover',
2017,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt4569494',
'No Place to Hide: The Rehtaeh Parsons Story',
2015,
'Crime,Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt4572792',
'The Book of Henry',
2017,
'Crime,Drama,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt4573516',
'Sleight',
2016,
'Crime,Drama,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt4575576',
'Christopher Robin',
2018,
'Adventure,Comedy,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt4575782',
'Prayer Never Fails',
2016,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt4578118',
'Rupture',
2016,
'Horror,Sci-Fi,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4587366',
'Eliminators',
2016,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4594834',
'Chi-Raq',
2015,
'Comedy,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4594836',
'Darc',
2018,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4601180',
'730',
2015,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4607228',
'Arctic Heart',
2016,
'Comedy,Drama,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt4610378',
'The Resistance Banker',
2018,
'Biography,Drama,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt4614612',
'Peterloo',
2018,
'Drama,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt4616250',
'The Perfect Weapon',
2016,
'Action,Sci-Fi,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt4623856',
'Wolves',
2016,
'Comedy,Drama,Family',
'18+'
);

INSERT INTO Movies VALUES (
'tt4624424',
'Storks',
2016,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt4628812',
'The Breakup Playlist',
2015,
'Drama,Music,Musical',
'7+'
);

INSERT INTO Movies VALUES (
'tt4629266',
'Born in China',
2016,
'Documentary',
'all'
);

INSERT INTO Movies VALUES (
'tt4630444',
'Being Charlie',
2015,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt4632316',
'Gleason',
2016,
'Biography,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt4633690',
'Shot Caller',
2017,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4651410',
'Precious Cargo',
2016,
'Action,Comedy,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4661798',
'Joshy',
2016,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4662420',
'All Nighter',
2017,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4666726',
'Christine',
2016,
'Biography,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4669186',
'Kevin Hart: What Now?',
2016,
'Comedy,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt4669264',
'Beirut',
2018,
'Action,Adventure,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt4669296',
'Lords of Chaos',
2018,
'Biography,Drama,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt4669986',
'Loving',
2016,
'Biography,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt4677924',
'Woodshock',
2017,
'Drama,Fantasy,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt4678200',
'Judge Singh LLB',
2015,
'Drama',
'all'
);

INSERT INTO Movies VALUES (
'tt4682786',
'Collateral Beauty',
2016,
'Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt4685554',
'The Snow Queen 3: Fire and Ice',
2016,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt4686108',
'Love Beats Rhymes',
2017,
'Drama,Musical',
'18+'
);

INSERT INTO Movies VALUES (
'tt4686844',
'The Death of Stalin',
2017,
'Comedy,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt4686862',
'Almost Adults',
2016,
'Comedy,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt4687108',
'In the Tall Grass',
2019,
'Horror,Mystery,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt4693358',
'OtherLife',
2017,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt4694544',
'Once Upon a Time in Venice',
2017,
'Adventure,Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt4695012',
'It Comes at Night',
2017,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt4698684',
'Hunt for the Wilderpeople',
2016,
'Adventure,Comedy,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt4703048',
'6 Days',
2017,
'Action,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt4712076',
'The Long Dumb Road',
2018,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt4718728',
'Gadaar: The Traitor',
2015,
'Thriller',
'7+'
);

INSERT INTO Movies VALUES (
'tt4729430',
'Klaus',
2019,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt4733736',
'Double Daddy',
2015,
'Drama,Romance,Thriller',
'16+'
);

INSERT INTO Movies VALUES (
'tt4738360',
'The Last King',
2016,
'Action,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt4742274',
'Forest Fairies',
2015,
'Adventure,Family,Fantasy',
'all'
);

INSERT INTO Movies VALUES (
'tt4743226',
'Air Strike',
2018,
'Action,Adventure,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4758646',
'War Machine',
2017,
'Comedy,Drama,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt4762824',
'The Legacy of a Whitetail Deer Hunter',
2018,
'Comedy,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt4763168',
'Kindergarten Cop 2',
2016,
'Action,Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt4769824',
'In This Corner of the World',
2016,
'Animation,Drama,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt4769836',
'The Do-Over',
2016,
'Action,Adventure,Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt4776998',
'The Promise',
2016,
'Action,Adventure,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt4777008',
'Maleficent: Mistress of Evil',
2019,
'Adventure,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt4786282',
'Lights Out',
2016,
'Horror,Mystery',
'13+'
);

INSERT INTO Movies VALUES (
'tt4796122',
'Satanic',
2016,
'Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt4797436',
'Jack Goes Home',
2016,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt4799064',
'Mindhorn',
2016,
'Action,Adventure,Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt4801232',
'In Search of Fellini',
2017,
'Adventure,Biography,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4807408',
'The Best of Enemies',
2019,
'Biography,Drama,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt4815122',
'Time Trap',
2017,
'Action,Adventure,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt4824302',
'Mother''s Day',
2016,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt4827558',
'High Life',
2018,
'Drama,Sci-Fi,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4837126',
'Love Everlasting',
2016,
'Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt4838334',
'The Fight Within',
2016,
'Action,Romance,Sport',
'13+'
);

INSERT INTO Movies VALUES (
'tt4842270',
'Beauty and the Bestie',
2015,
'Action,Comedy,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt4842646',
'The Most Hated Woman in America',
2017,
'Biography,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt4844148',
'Mia and the White Lion',
2018,
'Adventure,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt4846232',
'Good Time',
2017,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4846340',
'Hidden Figures',
2016,
'Biography,Drama,History',
'7+'
);

INSERT INTO Movies VALUES (
'tt4853102',
'Batman: The Killing Joke',
2016,
'Action,Animation,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt4855748',
'XOXO',
2016,
'Drama,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt4857264',
'The Invisible Guest',
2016,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt4858674',
'Stargirl',
2020,
'Comedy,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt4863386',
'Camino',
2016,
'Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt4867110',
'Swiped',
2018,
'Comedy,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt4872078',
'The Intervention',
2016,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4876036',
'Olympia',
2018,
'Drama,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt4878482',
'Dumplin''',
2018,
'Comedy,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt4882376',
'First They Killed My Father',
2017,
'Biography,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt4898730',
'Temple',
2017,
'Adventure,Drama,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt4900018',
'Keith Richards: Under the Influence',
2015,
'Documentary,Music',
'7+'
);

INSERT INTO Movies VALUES (
'tt4900716',
'Kapoor & Sons',
2016,
'Comedy,Drama,Family',
'13+'
);

INSERT INTO Movies VALUES (
'tt4902716',
'Rebirth',
2016,
'Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt4902904',
'The Resurrection of Gavin Stone',
2017,
'Comedy,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt4908644',
'Winter on Fire: Ukraine''s Fight for Freedom',
2015,
'Documentary,History',
'16+'
);

INSERT INTO Movies VALUES (
'tt4911288',
'Danger Close',
2017,
'Action,Documentary,History',
'16+'
);

INSERT INTO Movies VALUES (
'tt4911408',
'Citizen Soldier',
2016,
'Documentary,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt4911996',
'Goldstone',
2016,
'Action,Crime,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt4924942',
'The Invisible Guardian',
2017,
'Crime,Mystery,Thriller',
'16+'
);

INSERT INTO Movies VALUES (
'tt4925292',
'Lady Bird',
2017,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4930176',
'Mercy',
2016,
'Drama,Mystery',
'all'
);

INSERT INTO Movies VALUES (
'tt4935334',
'Southbound',
2015,
'Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt4935462',
'Amazing Grace',
2018,
'Documentary,Music',
'all'
);

INSERT INTO Movies VALUES (
'tt4935746',
'The Darkness',
2016,
'Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt4936176',
'Mascots',
2016,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt4936450',
'Graduation',
2016,
'Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4940416',
'Duck Duck Goose',
2018,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt4943322',
'The Ottoman Lieutenant',
2017,
'Drama,History,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt4944352',
'Heneral Luna',
2015,
'Action,Biography,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt4947738',
'Spirit of the Game',
2016,
'Biography',
'7+'
);

INSERT INTO Movies VALUES (
'tt4948040',
'Emma''s Chance',
2016,
'Drama,Family,Sport',
'7+'
);

INSERT INTO Movies VALUES (
'tt4952376',
'Brothers',
2015,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt4971344',
'The Sisters Brothers',
2018,
'Drama,Western',
'18+'
);

INSERT INTO Movies VALUES (
'tt4971408',
'Await Further Instructions',
2018,
'Horror,Mystery,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt4971824',
'Very Big Shot',
2015,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4972062',
'Don''t Think Twice',
2016,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt4974684',
'Kara Bela',
2015,
'Action,Adventure,Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt4975920',
'The Kid',
2019,
'Biography,Drama,Western',
'18+'
);

INSERT INTO Movies VALUES (
'tt4978274',
'Priceless',
2016,
'Crime,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt4981636',
'Middle School: The Worst Years of My Life',
2016,
'Comedy,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt4984868',
'Faraar',
2015,
'Action',
'13+'
);

INSERT INTO Movies VALUES (
'tt4986098',
'The Titan',
2018,
'Drama,Mystery,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt4986134',
'Rebel in the Rye',
2017,
'Biography,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt4995776',
'The Red Sea Diving Resort',
2019,
'Drama,History,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5000698',
'Marriage of Lies',
2016,
'Drama,Mystery,Thriller',
'7+'
);

INSERT INTO Movies VALUES (
'tt5001754',
'Braven',
2018,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5007774',
'A Box of Faith',
2015,
'Family',
'all'
);

INSERT INTO Movies VALUES (
'tt5013782',
'Change in the Air',
2018,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt5022702',
'Hush',
2016,
'Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5026484',
'Needhi Singh',
2016,
'Action,Drama,Thriller',
'7+'
);

INSERT INTO Movies VALUES (
'tt5028340',
'Mary Poppins Returns',
2018,
'Adventure,Comedy,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt5034122',
'Cruise',
2018,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt5034266',
'Our Souls at Night',
2017,
'Drama,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt5036924',
'The CEO',
2016,
'Drama,Mystery,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt5037840',
'Drunk Parents',
2019,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt5061570',
'Hostile Border',
2015,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5071886',
'Kabali',
2016,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5074352',
'Dangal',
2016,
'Action,Biography,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt5074552',
'Saadey CM Saab',
2016,
'Comedy,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt5076150',
'Doubting Thomas',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5080254',
'What the Jatt!!',
2015,
'Comedy',
'all'
);

INSERT INTO Movies VALUES (
'tt5085924',
'Wildling',
2018,
'Drama,Fantasy,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt5093026',
'Papillon',
2017,
'Adventure,Biography,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt5094192',
'Goyo: The Boy General',
2018,
'Action,Biography,History',
'16+'
);

INSERT INTO Movies VALUES (
'tt5095030',
'Ant-Man and the Wasp',
2018,
'Action,Adventure,Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt5096470',
'Love Wedding Repeat',
2020,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt5104604',
'Isle of Dogs',
2018,
'Adventure,Animation,Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt5108476',
'Befikre',
2016,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt5112692',
'Secrets',
2017,
'Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt5114154',
'The Keeping Hours',
2017,
'Drama,Fantasy,Horror',
'13+'
);

INSERT INTO Movies VALUES (
'tt5115546',
'Ghost Team',
2016,
'Comedy,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt5116302',
'Togo',
2019,
'Adventure,Biography,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt5117484',
'Frat Star',
2017,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5122374',
'Tini: The New Life of Violetta',
2016,
'Adventure,Family,Music',
'all'
);

INSERT INTO Movies VALUES (
'tt5126540',
'Black Box',
2020,
'Sci-Fi,Thriller',
'16+'
);

INSERT INTO Movies VALUES (
'tt5128826',
'The Alchemist Cookbook',
2016,
'Comedy,Drama,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt5140248',
'The Beginning of Life',
2016,
'Documentary,Family',
'all'
);

INSERT INTO Movies VALUES (
'tt5153236',
'Hampstead',
2017,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt5155780',
'The Discovery',
2017,
'Drama,Romance,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt5156746',
'Force 2',
2016,
'Action,Thriller',
'7+'
);

INSERT INTO Movies VALUES (
'tt5163286',
'Jeremiah Tower: The Last Magnificent',
2016,
'Biography,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt5168832',
'After Porn Ends 2',
2017,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt5176486',
'Grandma''s House',
2016,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt5176580',
'Wild Nights with Emily',
2018,
'Comedy,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt5179598',
'Billionaire Boys Club',
2018,
'Biography,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5186714',
'The Salesman',
2016,
'Drama,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt5197544',
'Baar Baar Dekho',
2016,
'Drama,Romance,Sci-Fi',
'7+'
);

INSERT INTO Movies VALUES (
'tt5205210',
'Strange Weather',
2016,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5206260',
'The Willoughbys',
2020,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt5207116',
'X: Past Is Present',
2015,
'Drama,Mystery,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt5207846',
'The First Secret City',
2015,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt5208216',
'Wonderstruck',
2017,
'Adventure,Drama,Mystery',
'7+'
);

INSERT INTO Movies VALUES (
'tt5208252',
'Operation Finale',
2018,
'Biography,Drama,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt5215952',
'The Wailing',
2016,
'Drama,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt5222768',
'White Fang',
2018,
'Adventure,Animation,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt5224012',
'Kiss and Cry',
2017,
'Biography,Drama,Music',
'13+'
);

INSERT INTO Movies VALUES (
'tt5246700',
'How It Ends',
2018,
'Action,Drama,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt5246902',
'Blood Brother',
2018,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5247022',
'Paterson',
2016,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt5254610',
'Final Score',
2018,
'Action,Adventure,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5259822',
'Tesla',
2020,
'Biography,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt5260026',
'The Wedding Party',
2016,
'Comedy,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt5266668',
'Rogue Warfare',
2019,
'Action,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt5267472',
'Step Sisters',
2018,
'Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt5268348',
'Generation Wealth',
2018,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt5275828',
'Lo and Behold: Reveries of the Connected World',
2016,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt5275866',
'Norman Lear: Just Another Version of You',
2016,
'Biography,Documentary,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt5278462',
'Author: The JT LeRoy Story',
2016,
'Biography,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt5278506',
'Tickled',
2016,
'Crime,Documentary,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt5281700',
'Heartbeats',
2017,
'Comedy,Drama,Music',
'7+'
);

INSERT INTO Movies VALUES (
'tt5294518',
'Eli',
2019,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt5297578',
'Zindagi Kitni Haseen Hay',
2016,
'Adventure,Drama,Romance',
'all'
);

INSERT INTO Movies VALUES (
'tt5304992',
'Set It Up',
2018,
'Comedy,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt5305246',
'93 Days',
2016,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt5316540',
'Close',
2019,
'Action,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5317732',
'The Little Prince',
2015,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt5323662',
'A Silent Voice: The Movie',
2016,
'Animation,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt5325684',
'Hate Story IV',
2018,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5328340',
'Lights Out',
2016,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt5330986',
'Wild Prairie Rose',
2016,
'Drama,Family',
'13+'
);

INSERT INTO Movies VALUES (
'tt5335314',
'One Step Behind the Seraphim',
2017,
'Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt5339586',
'Mike Epps: Don''t Take It Personal',
2015,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt5340882',
'Zoombies',
2016,
'Action,Adventure,Comedy',
'16+'
);

INSERT INTO Movies VALUES (
'tt5344794',
'Sniper: Special Ops',
2016,
'Action,Thriller,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt5360996',
'Mary Magdalene',
2018,
'Biography,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt5371168',
'The Extraordinary Journey of the Fakir',
2018,
'Adventure,Comedy,Drama',
'all'
);

INSERT INTO Movies VALUES (
'tt5377564',
'U Turn',
2016,
'Crime,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt5397194',
'Anon',
2018,
'Crime,Mystery,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt5427194',
'The Miracle Season',
2018,
'Drama,Sport',
'7+'
);

INSERT INTO Movies VALUES (
'tt5439796',
'Logan Lucky',
2017,
'Action,Comedy,Crime',
'13+'
);

INSERT INTO Movies VALUES (
'tt5442456',
'24 Hours to Live',
2017,
'Action,Sci-Fi,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5442884',
'Hope Dances',
2017,
'Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt5451244',
'The Motive',
2017,
'Comedy,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5451640',
'Secrets of Deception',
2017,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5456546',
'Judwaa 2',
2017,
'Action,Comedy,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt5457484',
'Cabin 28',
2017,
'Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt5460548',
'Corporate',
2017,
'Drama,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt5462602',
'The Big Sick',
2017,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt5467554',
'Daphne',
2017,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5472374',
'Meri Pyaari Bindu',
2017,
'Comedy,Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt5474042',
'Half Girlfriend',
2017,
'Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt5474644',
'My Little Pony: Equestria Girls - Legend of Everfree',
2016,
'Animation,Comedy,Family',
'all'
);

INSERT INTO Movies VALUES (
'tt5478478',
'Hostiles',
2017,
'Drama,Western',
'18+'
);

INSERT INTO Movies VALUES (
'tt5501104',
'Border',
2018,
'Crime,Drama,Fantasy',
'18+'
);

INSERT INTO Movies VALUES (
'tt5507934',
'Lo más sencillo es complicarlo todo',
2018,
'Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt5510970',
'Bill Frisell: A Portrait',
2017,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt5512872',
'Be Somebody',
2016,
'Comedy,Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt5519340',
'Bright',
2017,
'Action,Fantasy,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5519566',
'The First Monday in May',
2016,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt5521550',
'Dirty 30',
2016,
'Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt5523010',
'The Nutcracker and the Four Realms',
2018,
'Adventure,Family,Fantasy',
'7+'
);

INSERT INTO Movies VALUES (
'tt5524630',
'The Brave',
2019,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5536610',
'Private Life',
2018,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5539054',
'You Get Me',
2017,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt5541002',
'Pachamama',
2018,
'Adventure,Animation,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt5541240',
'To the Bone',
2017,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5556054',
'Four Kids and It',
2020,
'Family,Fantasy',
'7+'
);

INSERT INTO Movies VALUES (
'tt5565254',
'Wetlands',
2017,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5566790',
'A Futile and Stupid Gesture',
2018,
'Biography,Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt5577494',
'Clemency',
2019,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5579356',
'Dogged',
2017,
'Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt5579982',
'Apple of My Eye',
2017,
'Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt5580390',
'The Shape of Water',
2017,
'Drama,Fantasy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt5580392',
'Amateur',
2018,
'Drama,Sport',
'18+'
);

INSERT INTO Movies VALUES (
'tt5580536',
'Arsenal',
2017,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5592248',
'The Beguiled',
2017,
'Drama,History,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5595168',
'Kingsglaive: Final Fantasy XV',
2016,
'Action,Adventure,Animation',
'13+'
);

INSERT INTO Movies VALUES (
'tt5598110',
'In the Shadow of Iris',
2016,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5598216',
'Team Foxcatcher',
2016,
'Biography,Crime,Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt5598292',
'Polaroid',
2019,
'Drama,Horror,Mystery',
'13+'
);

INSERT INTO Movies VALUES (
'tt5606896',
'Three',
2016,
'Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt5608972',
'Bir Baba Hindu',
2016,
'Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt5609150',
'The Promise',
2016,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt5610626',
'Dragonheart: Battle for the Heartfire',
2017,
'Action,Adventure,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt5616176',
'2 Hearts',
2020,
'Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt5616294',
'Spinning Man',
2018,
'Drama,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5622412',
'Black Water',
2018,
'Action,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5629084',
'Superpower Dogs',
2019,
'Documentary',
'all'
);

INSERT INTO Movies VALUES (
'tt5629524',
'Beyond the Edge',
2018,
'Action,Adventure,Fantasy',
'13+'
);

INSERT INTO Movies VALUES (
'tt5638642',
'The Ritual',
2017,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5639898',
'Social Animals',
2018,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt5640450',
'ARQ',
2016,
'Action,Sci-Fi,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5649144',
'The Florida Project',
2017,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5655222',
'The Hero',
2017,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt5666304',
'The Little Hours',
2017,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt5667482',
'Izzie''s Way Home',
2016,
'Adventure,Animation',
'all'
);

INSERT INTO Movies VALUES (
'tt5673714',
'First We Take Brooklyn',
2018,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5687040',
'Ismael''s Ghosts',
2017,
'Drama,Mystery,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt5687270',
'The Corrupted',
2019,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5688868',
'Primal Rage',
2018,
'Action,Adventure,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt5688932',
'Sorry to Bother You',
2018,
'Comedy,Drama,Fantasy',
'18+'
);

INSERT INTO Movies VALUES (
'tt5688996',
'Alex Strangelove',
2018,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt5689068',
'Killing Gunther',
2017,
'Action,Comedy,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5692390',
'Status Update',
2018,
'Comedy,Fantasy,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt5696326',
'Running for Grace',
2018,
'Family,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt5698568',
'1898: Our Last Men in the Philippines',
2016,
'Drama,History,War',
'13+'
);

INSERT INTO Movies VALUES (
'tt5700672',
'Train to Busan',
2016,
'Action,Horror,Thriller',
'16+'
);

INSERT INTO Movies VALUES (
'tt5702446',
'God Bless the Broken Road',
2018,
'Drama,Family,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt5704748',
'Becoming Cary Grant',
2017,
'Biography,Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt5704912',
'A Cowgirl''s Story',
2017,
'Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt5710042',
'Mercy',
2016,
'Drama,Mystery,Thriller',
'all'
);

INSERT INTO Movies VALUES (
'tt5710514',
'I Don''t Feel at Home in This World Anymore',
2017,
'Comedy,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5714320',
'Let''s Dance',
2019,
'Drama,Music,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt5715066',
'Mortal',
2020,
'Action,Adventure,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5715874',
'The Killing of a Sacred Deer',
2017,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt5717492',
'Small Crimes',
2017,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5719700',
'Home Again',
2017,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt5723286',
'Wheelman',
2017,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5723774',
'Hotel Coolgardie',
2016,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt5727208',
'Uncut Gems',
2019,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5737862',
'Landline',
2017,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5740806',
'Coin Heist',
2017,
'Crime,Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt5741304',
'Jailbreak',
2017,
'Action,Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt5742374',
'You Were Never Really Here',
2017,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5743858',
'25 Kille',
2016,
'Comedy,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt5755912',
'Barcelona: A Love Untold',
2016,
'Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt5770430',
'Ozzy',
2016,
'Adventure,Animation,Comedy',
'all'
);

INSERT INTO Movies VALUES (
'tt5770620',
'The Lovers',
2017,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt5773986',
'Studio 54',
2018,
'Documentary,History,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt5774062',
'Spontaneous',
2020,
'Comedy,Drama,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt5783956',
'When We First Met',
2018,
'Comedy,Fantasy,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt5785116',
'Begum Jaan',
2017,
'Action,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt5788462',
'Rocco',
2016,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt5789976',
'King of Thieves',
2018,
'Biography,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5792656',
'Running with the Devil',
2019,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5795086',
'Gemini',
2017,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt5804412',
'Landline',
2017,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt5809020',
'Handsome: A Netflix Mystery Movie',
2017,
'Comedy,Mystery',
'16+'
);

INSERT INTO Movies VALUES (
'tt5813366',
'Bleeding Steel',
2017,
'Action,Sci-Fi,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5814408',
'A Witches'' Ball',
2017,
'Adventure,Comedy,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt5816374',
'Band Aid',
2017,
'Comedy,Drama,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt5817548',
'Ice Princess Lily',
2018,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt5818722',
'Nasha Natasha',
2020,
'Biography,Documentary,Music',
'7+'
);

INSERT INTO Movies VALUES (
'tt5825380',
'Wonder Wheel',
2017,
'Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt5826432',
'Burning Sands',
2017,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5827360',
'Catching Feelings',
2017,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt5827790',
'Unknown Origins',
2020,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5829032',
'Camp Cold Brook',
2018,
'Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt5829040',
'Fun Mom Dinner',
2017,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt5831402',
'The Feels',
2017,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt5834760',
'Look Away',
2018,
'Drama,Fantasy,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt5834854',
'Mary',
2019,
'Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt5843876',
'Chemical Hearts',
2020,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt5848272',
'Ralph Breaks the Internet',
2018,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt5848416',
'Walk. Ride. Rodeo.',
2019,
'Biography,Drama,Sport',
'7+'
);

INSERT INTO Movies VALUES (
'tt5851786',
'Gnome Alone',
2017,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt5862166',
'The Poison Rose',
2019,
'Crime,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5862312',
'Veronica',
2017,
'Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt5865326',
'The Laundromat',
2019,
'Comedy,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5881528',
'Damsel',
2018,
'Comedy,Drama,Western',
'18+'
);

INSERT INTO Movies VALUES (
'tt5884230',
'Brad''s Status',
2017,
'Comedy,Drama,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt5884234',
'First Kill',
2017,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt5884960',
'Home',
2015,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt5886440',
'Marrowbone',
2017,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt5886842',
'Remembering Leonard: His Life, Legacy and Battle with COPD',
2017,
'Documentary',
'all'
);

INSERT INTO Movies VALUES (
'tt5889204',
'Pokémon the Movie: Volcanion and the Mechanical Marvel',
2016,
'Action,Adventure,Animation',
'7+'
);

INSERT INTO Movies VALUES (
'tt5891626',
'Ordinary People',
2016,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5893332',
'Sandy Wexler',
2017,
'Comedy,Drama,Music',
'16+'
);

INSERT INTO Movies VALUES (
'tt5895028',
'13th',
2016,
'Crime,Documentary,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt5895892',
'The Last Descent',
2016,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt5902484',
'Kaatru Veliyidai',
2017,
'Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt5913798',
'Wounds',
2019,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt5914996',
'No Game No Life: Zero',
2017,
'Adventure,Animation,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5929654',
'Think Like a Dog',
2020,
'Comedy,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt5929754',
'Wildlife',
2018,
'Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt5929776',
'Before the Flood',
2016,
'Documentary,News',
'7+'
);

INSERT INTO Movies VALUES (
'tt5946128',
'Dear Zindagi',
2016,
'Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt5946668',
'4/20 Massacre',
2018,
'Action,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt5952332',
'Amanda Knox',
2016,
'Crime,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt5956100',
'Tiger Zinda Hai',
2017,
'Action,Adventure,Thriller',
'7+'
);

INSERT INTO Movies VALUES (
'tt5959952',
'Mission Control: The Unsung Heroes of Apollo',
2017,
'Documentary,History',
'7+'
);

INSERT INTO Movies VALUES (
'tt5960374',
'Vox Lux',
2018,
'Drama,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt5962210',
'Ingrid Goes West',
2017,
'Comedy,Drama,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt5968274',
'The Angel',
2018,
'Action,Biography,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt5969180',
'I Hate Kids',
2019,
'Adventure,Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt5978822',
'The Wedding Party',
2016,
'Comedy,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt5985288',
'Sour Apples',
2016,
'Drama,History',
'7+'
);

INSERT INTO Movies VALUES (
'tt5985820',
'A Chaster Marriage',
2016,
'Comedy,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt5989218',
'Life Itself',
2018,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt5990066',
'Bad Match',
2017,
'Crime,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt5997666',
'Jab Harry Met Sejal',
2017,
'Comedy,Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt5998744',
'S Storm',
2016,
'Action,Crime',
'13+'
);

INSERT INTO Movies VALUES (
'tt5999530',
'Before We Vanish',
2017,
'Drama,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt6003368',
'Diary of a Wimpy Kid: The Long Haul',
2017,
'Adventure,Comedy,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt6009140',
'Wedding Unplanned',
2017,
'Comedy,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt6012380',
'Ordinary Love',
2019,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt6014472',
'S.W.A.T.: Under Siege',
2017,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6016744',
'The Edge of Democracy',
2019,
'Documentary,History',
'16+'
);

INSERT INTO Movies VALUES (
'tt6018306',
'Last Flag Flying',
2017,
'Comedy,Drama,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt6021694',
'The Outdoorsman',
2017,
'Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt6032076',
'Polar',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6035292',
'Happy Birthday',
2016,
'Action,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt6045466',
'Madame',
2017,
'Comedy,Drama,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt6048930',
'Naked',
2017,
'Comedy,Fantasy,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt6053948',
'Sunday''s Illness',
2018,
'Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt6055082',
'My Pet Dinosaur',
2017,
'Action,Adventure,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt6060156',
'Toc Toc',
2017,
'Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt6061074',
'First Match',
2018,
'Drama,Sport',
'18+'
);

INSERT INTO Movies VALUES (
'tt6062774',
'Monos',
2019,
'Adventure,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6063090',
'Light of My Life',
2019,
'Drama,Sci-Fi,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6067832',
'Batman & Bill',
2017,
'Animation,Documentary,Mystery',
'16+'
);

INSERT INTO Movies VALUES (
'tt6072400',
'The Promise',
2016,
'Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt6091368',
'Secondhand Hearts',
2017,
'Drama,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt6095472',
'The Angry Birds Movie 2',
2019,
'Action,Adventure,Animation',
'7+'
);

INSERT INTO Movies VALUES (
'tt6097002',
'Toro',
2016,
'Crime,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt6103292',
'Lock',
2016,
'Thriller',
'7+'
);

INSERT INTO Movies VALUES (
'tt6105774',
'The Reliant',
2019,
'Action',
'13+'
);

INSERT INTO Movies VALUES (
'tt6107548',
'Late Night',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6110504',
'Becoming Bond',
2017,
'Biography,Comedy,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt6116568',
'Making a Killing',
2018,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt6116856',
'The Night Comes for Us',
2018,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6119856',
'Irreplaceable You',
2018,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt6141246',
'The Aeronauts',
2019,
'Action,Adventure,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt6142496',
'6 Balloons',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6149154',
'Waiting for the Barbarians',
2019,
'Drama,History',
'16+'
);

INSERT INTO Movies VALUES (
'tt6155172',
'Roma',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6155456',
'Juanita',
2019,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6163142',
'Grace',
2018,
'Comedy,Drama,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt6173902',
'Hulk: Where Monsters Dwell',
2016,
'Action,Animation,Fantasy',
'7+'
);

INSERT INTO Movies VALUES (
'tt6176928',
'Whose Streets?',
2017,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt6185286',
'Saving Capitalism',
2017,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt6186696',
'The Most Assassinated Woman in the World',
2018,
'Biography,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt6186910',
'Imaikkaa Nodigal',
2018,
'Crime,Drama,Thriller',
'all'
);

INSERT INTO Movies VALUES (
'tt6189022',
'Angel Has Fallen',
2019,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6193408',
'A Shaun the Sheep Movie: Farmageddon',
2019,
'Adventure,Animation,Comedy',
'all'
);

INSERT INTO Movies VALUES (
'tt6196936',
'The Kill Team',
2019,
'Action,Biography,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6197400',
'Cross: Rise of the Villains',
2019,
'Action,Fantasy,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt6198246',
'The Great War',
2019,
'Drama,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt6199572',
'Capone',
2020,
'Biography,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6200274',
'Hajwala: The Missing Engine',
2016,
'Action,Adventure,Crime',
'13+'
);

INSERT INTO Movies VALUES (
'tt6204340',
'Bullet Head',
2017,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6205872',
'Assassination Nation',
2018,
'Comedy,Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6208096',
'Modern Prodigal',
2019,
'Crime,Drama,Mystery',
'7+'
);

INSERT INTO Movies VALUES (
'tt6212478',
'American Animals',
2018,
'Biography,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6212496',
'Mr. Roosevelt',
2017,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt6213294',
'¡Ay, mi madre!',
2019,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt6214928',
'1922',
2017,
'Crime,Drama,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt6217306',
'Apostle',
2018,
'Drama,Fantasy,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt6218358',
'Calibre',
2018,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6222118',
'The Doorman',
2020,
'Action,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6224502',
'Boarding School',
2018,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6225520',
'The Man Who Invented Christmas',
2017,
'Biography,Comedy,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt6228640',
'The Horse Dancer',
2017,
'Family,Sport',
'all'
);

INSERT INTO Movies VALUES (
'tt6243140',
'Ravenous',
2017,
'Action,Adventure,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6245644',
'Before All Others',
2016,
'Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt6245710',
'Black Ballerina',
2016,
'Documentary',
'all'
);

INSERT INTO Movies VALUES (
'tt6246534',
'Miss Virginia',
2019,
'Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt6250650',
'Halloween Party',
2019,
'Horror',
'16+'
);

INSERT INTO Movies VALUES (
'tt6261048',
'Love, Kennedy',
2017,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt6263642',
'Generation Iron 2',
2017,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt6265828',
'A Ghost Story',
2017,
'Drama,Fantasy,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt6266538',
'Vice',
2018,
'Biography,Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6268734',
'Holly Star',
2018,
'Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt6269368',
'The Clovehitch Killer',
2018,
'Crime,Drama,Horror',
'13+'
);

INSERT INTO Movies VALUES (
'tt6269658',
'Monster Island',
2017,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt6272828',
'Mubarakan',
2017,
'Comedy,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt6280328',
'Raju Gari Gadhi 2',
2017,
'Comedy,Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6288124',
'Don''t Worry, He Won''t Get Far on Foot',
2018,
'Biography,Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6288694',
'Acts of Vengeance',
2017,
'Action,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6290418',
'To Each, Her Own',
2018,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6290736',
'Wheeler',
2017,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt6292852',
'I Am Mother',
2019,
'Drama,Mystery,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt6299040',
'The Ghazi Attack',
2017,
'Action,Drama,Thriller',
'7+'
);

INSERT INTO Movies VALUES (
'tt6303866',
'Beach Rats',
2017,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6306064',
'Adrift',
2018,
'Action,Adventure,Biography',
'13+'
);

INSERT INTO Movies VALUES (
'tt6306568',
'Wild Kratts: Creatures of the Deep Sea',
2016,
'Animation,Family',
'all'
);

INSERT INTO Movies VALUES (
'tt6317962',
'Fireworks',
2017,
'Animation,Drama,Fantasy',
'13+'
);

INSERT INTO Movies VALUES (
'tt6324278',
'Abominable',
2019,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt6333052',
'Casting JonBenet',
2017,
'Crime,Documentary,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt6333060',
'Icarus',
2017,
'Documentary,Sport',
'18+'
);

INSERT INTO Movies VALUES (
'tt6333064',
'Nobody Speak: Trials of the Free Press',
2017,
'Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt6333072',
'Joshua: Teenager vs. Superpower',
2017,
'Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt6333086',
'Menashe',
2017,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt6333088',
'Legion of Brothers',
2017,
'Documentary,War',
'16+'
);

INSERT INTO Movies VALUES (
'tt6342110',
'Spivak',
2018,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt6346162',
'Newsies: The Broadway Musical',
2017,
'Musical',
'7+'
);

INSERT INTO Movies VALUES (
'tt6348138',
'Missing Link',
2019,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt6352548',
'Poster Boys',
2017,
'Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt6357074',
'Pup Star: Better 2Gether',
2017,
'Family',
'all'
);

INSERT INTO Movies VALUES (
'tt6378710',
'Villains',
2019,
'Comedy,Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6379314',
'Let It Fall: Los Angeles 1982-1992',
2017,
'Documentary,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt6390668',
'Invisible Life',
2019,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6394270',
'Bombshell',
2019,
'Biography,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6412452',
'The Ballad of Buster Scruggs',
2018,
'Comedy,Drama,Musical',
'16+'
);

INSERT INTO Movies VALUES (
'tt6423886',
'Happy Anniversary',
2018,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt6428150',
'High Strung Free Dance',
2018,
'Music,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt6433832',
'The Tree of Blood',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6436726',
'7500',
2019,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6443294',
'Blaze',
2018,
'Biography,Drama,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt6444140',
'Time Share',
2018,
'Drama,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6445414',
'The Coldest Game',
2019,
'History,Sport,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6450804',
'Terminator: Dark Fate',
2019,
'Action,Adventure,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt6452332',
'Lu Over the Wall',
2017,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt6452574',
'Sanju',
2018,
'Biography,Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6456222',
'Nostalgia',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6456326',
'Monsters of Man',
2020,
'Action,Sci-Fi,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6460528',
'The Blackout',
2019,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6463468',
'Beast',
2018,
'Adventure,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6469960',
'An Imperfect Murder',
2017,
'Drama,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6472116',
'Bayonet',
2018,
'Drama,Sport',
'18+'
);

INSERT INTO Movies VALUES (
'tt6473066',
'Clouds',
2020,
'Biography,Drama,Music',
'13+'
);

INSERT INTO Movies VALUES (
'tt6494358',
'Clive Davis: The Soundtrack of Our Lives',
2017,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt6494418',
'Siberia',
2018,
'Crime,Drama,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt6506146',
'The 3rd Eye',
2017,
'Drama,Fantasy,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt6508228',
'Ghosts of War',
2020,
'Fantasy,Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6510332',
'McQueen',
2018,
'Biography,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt6511932',
'The Beach Bum',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6512300',
'Death of a Child',
2017,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt6513656',
'Escape Plan 2: Hades',
2018,
'Action,Crime,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt6516314',
'Piercing',
2018,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6516590',
'Cold Zone',
2017,
'Action,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt6518270',
'An Evening with Beverly Luff Linn',
2018,
'Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt6521876',
'Jay and Silent Bob Reboot',
2019,
'Action,Adventure,Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt6523720',
'The Quake',
2018,
'Action,Drama,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt6527456',
'Asphalt Burning',
2020,
'Action,Comedy',
'16+'
);

INSERT INTO Movies VALUES (
'tt6527586',
'Close Enemies',
2018,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6543652',
'Cold War',
2018,
'Drama,Music,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt6555772',
'Love, Surreal and Odd',
2017,
'Comedy,Romance',
'all'
);

INSERT INTO Movies VALUES (
'tt6559576',
'Selfie Dad',
2020,
'Comedy,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt6560164',
'Sweetheart',
2019,
'Adventure,Horror,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt6566830',
'Most Likely to Murder',
2018,
'Comedy,Mystery,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt6573444',
'Human Flow',
2017,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt6574146',
'Blame!',
2017,
'Action,Animation,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt6580564',
'102 Not Out',
2018,
'Comedy,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt6587640',
'Trolls World Tour',
2020,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt6588966',
'Hichki',
2018,
'Comedy,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt6593054',
'Drive',
2019,
'Action,Crime,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt6595896',
'Pokémon the Movie: I Choose You!',
2017,
'Action,Adventure,Animation',
'7+'
);

INSERT INTO Movies VALUES (
'tt6598238',
'Life in a Year',
2020,
'Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt6598626',
'Take Me',
2017,
'Comedy,Crime,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt6599184',
'The Delegation',
2018,
'Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt6599742',
'Sara''s Notebook',
2018,
'Adventure,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt6608138',
'I See You',
2017,
'Comedy,Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt6611578',
'Motor Mitraan Di',
2016,
'Comedy',
'all'
);

INSERT INTO Movies VALUES (
'tt6612946',
'Changeland',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6643972',
'Triple Threat',
2019,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6679412',
'Forgive Us Our Debts',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6679794',
'Outlaw King',
2018,
'Action,Biography,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6684398',
'U Turn',
2016,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6685596',
'Maya the Bee: The Honey Games',
2018,
'Adventure,Animation,Comedy',
'all'
);

INSERT INTO Movies VALUES (
'tt6688136',
'Expedition Happiness',
2017,
'Documentary',
'all'
);

INSERT INTO Movies VALUES (
'tt6692354',
'Ittefaq',
2017,
'Mystery,Thriller',
'7+'
);

INSERT INTO Movies VALUES (
'tt6704776',
'The Photographer of Mauthausen',
2018,
'Biography,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt6704898',
'Elisa & Marcela',
2019,
'Biography,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt6708116',
'Bad Seeds',
2018,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt6714534',
'Get Me Roger Stone',
2017,
'Biography,Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt6727296',
'Bhaagamathie',
2018,
'Horror,Thriller',
'all'
);

INSERT INTO Movies VALUES (
'tt6736198',
'Ready to Mingle',
2019,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt6742252',
'The Guilty',
2018,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6744044',
'Candy Jar',
2018,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt6749318',
'Speed Kills',
2018,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6751668',
'Parasite',
2019,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6752992',
'Happy as Lazzaro',
2018,
'Drama,Fantasy,Mystery',
'13+'
);

INSERT INTO Movies VALUES (
'tt6759506',
'King Lear',
2018,
'Action,Adventure,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt6769280',
'Time Freak',
2018,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt6769508',
'Steel Rain',
2017,
'Action,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6772802',
'Hillbilly Elegy',
2020,
'Biography,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6772804',
'Escape Plan: The Extractors',
2019,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6774588',
'Curtiz',
2018,
'Biography,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt6776106',
'And Breathe Normally',
2018,
'Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt6788942',
'Bad Genius',
2017,
'Comedy,Crime,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt6791096',
'I Feel Pretty',
2018,
'Comedy,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt6792282',
'A Twelve-Year Night',
2018,
'Adventure,Biography,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt6792666',
'Gemini',
2017,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6794450',
'Dumb: The Story of Big Brother Magazine',
2017,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt6796306',
'Kiss and Cry',
2017,
'Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt6805862',
'The Coming Convergence',
2017,
'Documentary,Drama,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt6807324',
'Doe',
2018,
'Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6811018',
'The Kid Who Would Be King',
2019,
'Action,Adventure,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt6820324',
'Timmy Failure: Mistakes Were Made',
2020,
'Adventure,Comedy,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt6821012',
'The Week Of',
2018,
'Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt6829180',
'Welcome Home',
2018,
'Crime,Drama,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt6833470',
'The Swing of Things',
2020,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt6838918',
'Vault',
2019,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6842770',
'Wild Mountain Thyme',
2020,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt6843446',
'Undercover Brother 2',
2019,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt6844138',
'Coven',
2020,
'Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt6850820',
'Peppermint',
2018,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6851966',
'Nigerian Prince',
2018,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6852872',
'Elizabeth Harvest',
2018,
'Horror,Sci-Fi,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6854672',
'Battle',
2018,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt6859352',
'Support the Girls',
2018,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6869538',
'Detective Dee: The Four Heavenly Kings',
2018,
'Action,Adventure,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6882604',
'Archive',
2020,
'Drama,Mystery,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt6885956',
'Bathinda Express',
2016,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt6886574',
'Useless',
2020,
'Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt6892462',
'The World Is Yours',
2018,
'Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt6893836',
'They''ll Love Me When I''m Dead',
2018,
'Biography,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt6900448',
'Mirai',
2018,
'Adventure,Animation,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt6903636',
'Grace Jones: Bloodlight and Bami',
2017,
'Biography,Documentary,Music',
'7+'
);

INSERT INTO Movies VALUES (
'tt6908274',
'Mirage',
2018,
'Drama,Fantasy,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt6910020',
'Nothing to Lose',
2018,
'Biography,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt6910734',
'I Need You to Kill',
2017,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt6911110',
'Slow Country',
2017,
'Action,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6916348',
'The Warrior Queen of Jhansi',
2019,
'Adventure,Drama,Fantasy',
'18+'
);

INSERT INTO Movies VALUES (
'tt6920356',
'The Souvenir',
2019,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt6936350',
'Born Racer',
2018,
'Action,Documentary,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6937368',
'The Lift Boy',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt6937724',
'Eye for an Eye',
2019,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6938828',
'At Eternity''s Gate',
2018,
'Biography,Drama,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt6952960',
'The Kindergarten Teacher',
2018,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt6977240',
'Starship Troopers: Traitor of Mars',
2017,
'Action,Animation,Fantasy',
'18+'
);

INSERT INTO Movies VALUES (
'tt7002100',
'Coco',
2017,
'Horror',
'7+'
);

INSERT INTO Movies VALUES (
'tt7019942',
'Super Deluxe',
2019,
'Comedy,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7025388',
'Abigail',
2019,
'Action,Adventure,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt7029854',
'The Mansion',
2017,
'Comedy,Horror',
'13+'
);

INSERT INTO Movies VALUES (
'tt7043012',
'Velvet Buzzsaw',
2019,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7043534',
'General Commander',
2019,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7044076',
'The Cleaning Lady',
2018,
'Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7052494',
'Trading Paint',
2019,
'Action,Drama,Sport',
'18+'
);

INSERT INTO Movies VALUES (
'tt7057496',
'Forgotten',
2017,
'Crime,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7058080',
'Angel of Mine',
2019,
'Drama,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7073710',
'What Keeps You Alive',
2018,
'Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7104578',
'Going for Gold',
2018,
'Drama,Family,Sport',
'all'
);

INSERT INTO Movies VALUES (
'tt7125860',
'If Beale Street Could Talk',
2018,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt7133686',
'Next Gen',
2018,
'Action,Adventure,Animation',
'7+'
);

INSERT INTO Movies VALUES (
'tt7134096',
'The Rhythm Section',
2020,
'Action,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt7137380',
'Destroyer',
2018,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7139936',
'A Rainy Day in New York',
2019,
'Comedy,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt7146812',
'Onward',
2020,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt7149730',
'The Silencing',
2020,
'Action,Crime,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt7149916',
'Edge of Fear',
2018,
'Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7150148',
'Maria',
2019,
'Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt7153434',
'Science Fair',
2018,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt7153766',
'Unsane',
2018,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt7155460',
'Muramba',
2017,
'Comedy,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt7158430',
'Hearts Beat Loud',
2018,
'Comedy,Drama,Music',
'13+'
);

INSERT INTO Movies VALUES (
'tt7170950',
'Like Father',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7177642',
'Khido Khundi',
2018,
'Drama,Sport',
'7+'
);

INSERT INTO Movies VALUES (
'tt7178226',
'The Cave',
2019,
'Documentary,War',
'13+'
);

INSERT INTO Movies VALUES (
'tt7183578',
'Project Gutenberg',
2018,
'Action,Crime,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt7184124',
'Night Comes On',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7186092',
'Nico, 1988',
2017,
'Biography,Drama,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt7200946',
'Oh, Ramona!',
2019,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt7205316',
'MILF',
2018,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt7207238',
'Jane',
2017,
'Biography,Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt7212754',
'Ludo',
2020,
'Action,Comedy,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt7218518',
'Pad Man',
2018,
'Comedy,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt7227742',
'Plug Love',
2017,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7248248',
'Lucky Day',
2019,
'Action,Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt7250056',
'Non-Fiction',
2018,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt7252000',
'Maktub',
2017,
'Comedy,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt7255884',
'Hush',
2016,
'Documentary,Drama,Reality-TV',
'18+'
);

INSERT INTO Movies VALUES (
'tt7256866',
'Father of the Year',
2018,
'Comedy',
'16+'
);

INSERT INTO Movies VALUES (
'tt7262384',
'The True Adventures of Wolfboy',
2019,
'Adventure,Crime,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt7284204',
'Summer ''03',
2018,
'Comedy,Drama,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt7286916',
'The Dawn Wall',
2017,
'Biography,Documentary,Sport',
'16+'
);

INSERT INTO Movies VALUES (
'tt7286958',
'Mute',
2018,
'Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7291268',
'Gaga: Five Foot Two',
2017,
'Documentary,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt7294534',
'Arjun Reddy',
2017,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt7295450',
'Between Worlds',
2018,
'Fantasy,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7296862',
'SPF-18',
2017,
'Drama,Romance,Sport',
'13+'
);

INSERT INTO Movies VALUES (
'tt7302054',
'Supervized',
2019,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt7304802',
'The Legacy of the Bones',
2019,
'Crime,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7304824',
'Offering to the Storm',
2020,
'Crime,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7315484',
'The Silence',
2019,
'Drama,Horror,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt7319822',
'Saving Zoë',
2019,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt7322850',
'Raja the Great',
2017,
'Action',
'all'
);

INSERT INTO Movies VALUES (
'tt7322864',
'Pup Star: World Tour',
2018,
'Comedy,Family,Musical',
'all'
);

INSERT INTO Movies VALUES (
'tt7329656',
'47 Meters Down: Uncaged',
2019,
'Adventure,Drama,Horror',
'13+'
);

INSERT INTO Movies VALUES (
'tt7329858',
'Pari',
2018,
'Fantasy,Horror,Mystery',
'13+'
);

INSERT INTO Movies VALUES (
'tt7332500',
'Ghost of the Mountains',
2017,
'Documentary',
'all'
);

INSERT INTO Movies VALUES (
'tt7335796',
'Behind You',
2020,
'Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt7336684',
'The (Silent) War',
2019,
'Action,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7339248',
'The Art of Self-Defense',
2019,
'Action,Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt7358154',
'Burning Cane',
2019,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7365604',
'Dog Days',
2018,
'Comedy,Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt7370952',
'Bennett''s War',
2019,
'Sport',
'13+'
);

INSERT INTO Movies VALUES (
'tt7374948',
'Always Be My Maybe',
2019,
'Comedy,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt7375578',
'The Escape of Prisoner 614',
2018,
'Action,Adventure,Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt7391996',
'C/o Kancharapalem',
2018,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt7392212',
'Rangasthalam',
2018,
'Action,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt7394816',
'Primal',
2019,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7395114',
'The Devil All the Time',
2020,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7411120',
'For the Love of Jessee',
2020,
'Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt7423486',
'Escape and Evasion',
2019,
'Drama,War',
'16+'
);

INSERT INTO Movies VALUES (
'tt7424290',
'Max Reload and the Nether Blasters',
2020,
'Adventure,Comedy,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt7427356',
'The Last Laugh',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7434324',
'Low Tide',
2019,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7435316',
'The Glorias',
2020,
'Biography,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt7440432',
'Quincy',
2018,
'Biography,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt7456312',
'The Last Thing He Wanted',
2020,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt7458762',
'The Wolf''s Call',
2019,
'Action,Thriller',
'16+'
);

INSERT INTO Movies VALUES (
'tt7460806',
'The Festival',
2018,
'Comedy,Music,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt7465992',
'Mahanati',
2018,
'Biography,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt7471004',
'Aval',
2017,
'Horror',
'13+'
);

INSERT INTO Movies VALUES (
'tt7474914',
'Unbridled',
2018,
'Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt7476236',
'Minding the Gap',
2018,
'Documentary,Sport',
'18+'
);

INSERT INTO Movies VALUES (
'tt7486356',
'Mr. Chandramouli',
2018,
'Comedy,Romance,Sport',
'18+'
);

INSERT INTO Movies VALUES (
'tt7488208',
'Over the Moon',
2020,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt7489816',
'Nothing to Hide',
2018,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7502214',
'Seven Sundays',
2017,
'Comedy,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt7511008',
'Paradise Beach',
2019,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7524414',
'Beats',
2019,
'Comedy,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7525514',
'Bad Reputation',
2018,
'Biography,Documentary,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt7525778',
'The Package',
2018,
'Comedy,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7527538',
'Jefe',
2018,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt7530986',
'Lady J',
2018,
'Drama,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt7533152',
'The Boy Who Harnessed the Wind',
2019,
'Biography,Drama,History',
'7+'
);

INSERT INTO Movies VALUES (
'tt7544820',
'Too Funny to Fail: The Life & Death of The Dana Carvey Show',
2017,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt7545524',
'Ben Is Back',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7545566',
'Skate Kitchen',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7547410',
'Dora and the Lost City of Gold',
2019,
'Action,Adventure,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt7549996',
'Judy',
2019,
'Biography,Drama,Music',
'13+'
);

INSERT INTO Movies VALUES (
'tt7550000',
'Project Power',
2020,
'Action,Crime,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt7556122',
'The Old Guard',
2020,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7557108',
'Saint Maud',
2019,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt7558302',
'Lying and Stealing',
2019,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7562334',
'Lady Driver',
2020,
'Sport',
'7+'
);

INSERT INTO Movies VALUES (
'tt7573844',
'Into the Okavango',
2018,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt7585674',
'Sat Shri Akaal England',
2017,
'Comedy,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt7588790',
'Voyeur',
2017,
'Crime,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt7594134',
'Hurley',
2019,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt7594584',
'Maria',
2019,
'Action,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7600382',
'Ride Like a Girl',
2019,
'Biography,Drama,Sport',
'7+'
);

INSERT INTO Movies VALUES (
'tt7600716',
'DNA',
2020,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7601296',
'The Legend of Halloween Jack',
2018,
'Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7605074',
'The Wandering Earth',
2019,
'Action,Adventure,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt7608028',
'The Open House',
2018,
'Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7608418',
'A Christmas Prince',
2017,
'Comedy,Family,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt7615302',
'Red Joan',
2018,
'Biography,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt7616148',
'Luce',
2019,
'Drama,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7627790',
'Before Your Time',
2017,
'Family',
'all'
);

INSERT INTO Movies VALUES (
'tt7643622',
'The World We Make',
2019,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt7653254',
'Marriage Story',
2019,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt7671064',
'Brittany Runs a Marathon',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7681824',
'We the Animals',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7682382',
'Sweetheart',
2019,
'Comedy,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt7682430',
'Howard',
2018,
'Biography,Documentary,Music',
'7+'
);

INSERT INTO Movies VALUES (
'tt7686876',
'Unexpectedly Yours',
2017,
'Comedy,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt7689052',
'Daphne & Velma',
2018,
'Action,Comedy,Crime',
'all'
);

INSERT INTO Movies VALUES (
'tt7689906',
'Monsters and Men',
2018,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7689924',
'Seeing Allred',
2018,
'Biography,Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt7690638',
'Soorma',
2018,
'Biography,Drama,Sport',
'13+'
);

INSERT INTO Movies VALUES (
'tt7730102',
'Big Kill',
2019,
'Action,Drama,Western',
'18+'
);

INSERT INTO Movies VALUES (
'tt7736496',
'Jingle Jangle: A Christmas Journey',
2020,
'Family,Fantasy,Musical',
'7+'
);

INSERT INTO Movies VALUES (
'tt7736536',
'All of You',
2017,
'Comedy,Drama,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt7748076',
'This Mountain Life',
2018,
'Adventure,Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt7755856',
'Banana Split',
2018,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt7763020',
'Dovlatov',
2018,
'Biography,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt7772580',
'The Perfection',
2018,
'Drama,Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7772872',
'Painter',
2020,
'Drama,Thriller',
'7+'
);

INSERT INTO Movies VALUES (
'tt7775622',
'Free Solo',
2018,
'Adventure,Documentary,Sport',
'13+'
);

INSERT INTO Movies VALUES (
'tt7778680',
'Photograph',
2019,
'Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt7779590',
'Euphoria',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7805960',
'Torbaaz',
2020,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7827944',
'The Wedding Party 2: Destination Dubai',
2017,
'Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt7832848',
'Inside Man: Most Wanted',
2019,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7841496',
'Perdida',
2018,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt7846844',
'Enola Holmes',
2020,
'Adventure,Crime,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt7869070',
'The Fanatic',
2019,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt7871636',
'Deliha 2',
2018,
'Comedy',
'all'
);

INSERT INTO Movies VALUES (
'tt7873348',
'Save Yourselves!',
2020,
'Adventure,Comedy,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt7895904',
'Family Blood',
2018,
'Drama,Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7903530',
'We Die Young',
2019,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7913394',
'Norm of the North: Keys to the Kingdom',
2018,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt7913994',
'Speed Demons',
2018,
'Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt7919810',
'The Turkey Bowl',
2019,
'Comedy,Sport',
'16+'
);

INSERT INTO Movies VALUES (
'tt7933796',
'Disclosure',
2020,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7939766',
'I''m Thinking of Ending Things',
2020,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7942746',
'Body at Brighton Rock',
2019,
'Comedy,Drama,Fantasy',
'18+'
);

INSERT INTO Movies VALUES (
'tt7945440',
'The Lie',
2018,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt7945450',
'Notturno',
2020,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt7946422',
'Prospect',
2018,
'Adventure,Drama,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt7946836',
'Animal World',
2018,
'Action,Fantasy,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt7947150',
'This One''s for the Ladies',
2018,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt7957694',
'The Last Summer',
2019,
'Comedy,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt7964424',
'Mirage',
2018,
'Documentary,Fantasy,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt7967412',
'Eye for an Eye',
2019,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7969042',
'Social Animals',
2018,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt7970348',
'The Stand In',
2020,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt7976208',
'The Haunting of Sharon Tate',
2019,
'Drama,Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt7976502',
'Pari',
2018,
'Horror',
'13+'
);

INSERT INTO Movies VALUES (
'tt7979142',
'The Night Clerk',
2020,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt7981318',
'Cook Off',
2017,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt7983712',
'Rogue Warfare: The Hunt',
2019,
'Action',
'18+'
);

INSERT INTO Movies VALUES (
'tt7983744',
'Rogue Warfare: Death of a Nation',
2020,
'Action',
'18+'
);

INSERT INTO Movies VALUES (
'tt7983894',
'Ammonite',
2020,
'Drama,History,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt7984734',
'The Lighthouse',
2019,
'Drama,Fantasy,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt7984766',
'The King',
2019,
'Biography,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt8000718',
'The Operative',
2019,
'Action,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt8010812',
'Float',
2019,
'Documentary,History,Sport',
'7+'
);

INSERT INTO Movies VALUES (
'tt8015080',
'Godzilla: City on the Edge of Battle',
2018,
'Action,Animation,Sci-Fi',
'13+'
);

INSERT INTO Movies VALUES (
'tt8023734',
'Kadaikutty Singam',
2018,
'Action,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt8028526',
'Boonie Bears: The Big Shrink',
2018,
'Animation',
'7+'
);

INSERT INTO Movies VALUES (
'tt8041276',
'Paddleton',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8045906',
'Words on Bathroom Walls',
2020,
'Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt8055324',
'Blanche',
2018,
'Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt8058874',
'We Summon the Darkness',
2019,
'Drama,Horror,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt8060774',
'15 Minutes of War',
2019,
'Action,Drama,History',
'16+'
);

INSERT INTO Movies VALUES (
'tt8064262',
'Paws P.I.',
2018,
'Action,Comedy,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt8064392',
'Expedition China',
2017,
'Documentary',
'all'
);

INSERT INTO Movies VALUES (
'tt8075016',
'The Courier',
2019,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8075192',
'Shoplifters',
2018,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8075260',
'Someone Great',
2019,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt8076222',
'Untamed Romania',
2018,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt8076344',
'Penguin Highway',
2018,
'Adventure,Animation,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt8080302',
'Penguins',
2019,
'Documentary,Family',
'all'
);

INSERT INTO Movies VALUES (
'tt8103160',
'Britt-Marie Was Here',
2019,
'Comedy,Drama,Sport',
'7+'
);

INSERT INTO Movies VALUES (
'tt8106534',
'6 Underground',
2019,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8106570',
'The Rachel Divide',
2018,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt8106576',
'The Bleeding Edge',
2018,
'Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt8106596',
'The Legend of Cocaine Island',
2018,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt8108230',
'Pokémon the Movie: The Power of Us',
2018,
'Action,Adventure,Animation',
'all'
);

INSERT INTO Movies VALUES (
'tt8110640',
'In the Shadow of the Moon',
2019,
'Action,Crime,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt8126440',
'Extinction',
2018,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt8128188',
'High Flying Bird',
2019,
'Drama,Sport',
'18+'
);

INSERT INTO Movies VALUES (
'tt8130968',
'Badla',
2019,
'Crime,Drama,Mystery',
'7+'
);

INSERT INTO Movies VALUES (
'tt8132700',
'Behind the Curve',
2018,
'Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt8135494',
'Active Measures',
2018,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt8145202',
'The F**k-It List',
2020,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt8151874',
'Honey Boy',
2019,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8160834',
'Follow Me',
2020,
'Adventure,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt8169446',
'Wine Country',
2019,
'Adventure,Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8170298',
'John Henry',
2020,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8176578',
'Flavors of Youth',
2018,
'Animation,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt8178486',
'Earthquake Bird',
2019,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt8179024',
'Body Cam',
2020,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8179388',
'Rim of the World',
2019,
'Action,Adventure,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt8186932',
'M.O.M. Mothers of Monsters',
2020,
'Drama,Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8188610',
'F2: Fun and Frustration',
2019,
'Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt8201170',
'The Perfect Date',
2019,
'Comedy,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt8202262',
'Justine',
2019,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8223844',
'Modest Heroes',
2018,
'Adventure,Animation,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt8230872',
'The Body Remembers When the World Broke Open',
2019,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8236336',
'The Report',
2019,
'Biography,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8236398',
'In Search of Greatness',
2018,
'Documentary,Sport',
'13+'
);

INSERT INTO Movies VALUES (
'tt8237172',
'Gundala',
2019,
'Action,Adventure,Drama',
'16+'
);

INSERT INTO Movies VALUES (
'tt8241138',
'Loop',
2020,
'Drama,Sci-Fi',
'7+'
);

INSERT INTO Movies VALUES (
'tt8242084',
'My Spy',
2020,
'Action,Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt8246392',
'Get In',
2019,
'Drama,Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8251336',
'No One Will Ever Know',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8254556',
'Girl',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8258074',
'Fantastic Fungi',
2019,
'Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt8273258',
'Lilli',
2018,
'Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8276106',
'Tattoo of Revenge',
2018,
'Comedy,Romance,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8286926',
'Njan Prakashan',
2018,
'Comedy,Drama',
'all'
);

INSERT INTO Movies VALUES (
'tt8296660',
'A Remarkable Tale',
2019,
'Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt8299768',
'Blow the Man Down',
2019,
'Comedy,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8310924',
'Faith, Hope & Love',
2019,
'Comedy,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt8318284',
'The Legion',
2020,
'Action,Adventure,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt8326250',
'Sylvia',
2018,
'Fantasy,Romance,Thriller',
'16+'
);

INSERT INTO Movies VALUES (
'tt8328716',
'Doom: Annihilation',
2019,
'Action,Adventure,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt8328740',
'Okko''s Inn',
2018,
'Adventure,Animation,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt8332802',
'Amulet',
2020,
'Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt8333746',
'Pinocchio',
2019,
'Drama,Family,Fantasy',
'13+'
);

INSERT INTO Movies VALUES (
'tt8359848',
'Climax',
2018,
'Drama,Horror,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt8361028',
'Cam',
2018,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt8362228',
'The Stand at Paxton County',
2020,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8364368',
'Crawl',
2019,
'Action,Horror,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8367184',
'The Wedding Year',
2019,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt8368406',
'Vivarium',
2019,
'Horror,Mystery,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt8372368',
'Rocketman',
2019,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt8380776',
'Grand Isle',
2019,
'Crime,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8393332',
'Twin Murders: The Silence of the White City',
2019,
'Crime,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt8400758',
'Killers Anonymous',
2019,
'Action,Crime,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt8404614',
'The Two Popes',
2019,
'Biography,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt8406660',
'Inmate Zero',
2020,
'Horror',
'16+'
);

INSERT INTO Movies VALUES (
'tt8413566',
'Disconnect',
2018,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt8430598',
'Shirley',
2020,
'Biography,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt8431078',
'Friendsgiving',
2020,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8435268',
'How to Get Over a Breakup',
2018,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt8435324',
'Bombay Rose',
2019,
'Animation,Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt8436026',
'A Fortunate Man',
2018,
'Drama,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt8439854',
'Lust Stories',
2018,
'Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt8443704',
'Dear Ex',
2018,
'Comedy,Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt8459250',
'Shéhérazade',
2018,
'Drama,Romance,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8461224',
'The Tax Collector',
2020,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8478602',
'Godzilla: The Planet Eater',
2018,
'Action,Adventure,Animation',
'7+'
);

INSERT INTO Movies VALUES (
'tt8484012',
'Sword of Trust',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8484160',
'Black Beauty',
2020,
'Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt8503618',
'Hamilton',
2020,
'Biography,Drama,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt8508734',
'His House',
2020,
'Drama,Horror,Thriller',
'16+'
);

INSERT INTO Movies VALUES (
'tt8510324',
'Good Game: The Beginning',
2018,
'Comedy,Drama,Sport',
'13+'
);

INSERT INTO Movies VALUES (
'tt8510488',
'Holiday in the Wild',
2019,
'Comedy,Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt8514564',
'The Interpreters',
2018,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt8522006',
'Happiest Season',
2020,
'Comedy,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt8523028',
'Roped',
2020,
'Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt8526872',
'Dolemite Is My Name',
2019,
'Biography,Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8529070',
'Pinky Memsaab',
2018,
'Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt8530796',
'Light in the Dark',
2020,
'Thriller',
'16+'
);

INSERT INTO Movies VALUES (
'tt8530978',
'Beats',
2019,
'Drama,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt8563452',
'Crypto',
2019,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8574836',
'Cunningham',
2019,
'Biography,Documentary,Music',
'7+'
);

INSERT INTO Movies VALUES (
'tt8580274',
'Eurovision Song Contest: The Story of Fire Saga',
2020,
'Comedy,Music',
'13+'
);

INSERT INTO Movies VALUES (
'tt8581198',
'Jane and Emma',
2018,
'Drama,History',
'7+'
);

INSERT INTO Movies VALUES (
'tt8595708',
'Pulang',
2018,
'Adventure,Drama,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt8599746',
'Let''s Dance',
2019,
'Comedy,Drama,Family',
'18+'
);

INSERT INTO Movies VALUES (
'tt8613070',
'Portrait of a Lady on Fire',
2019,
'Drama,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt8613876',
'Kidnapping Stella',
2019,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8618654',
'Kiss the Ground',
2020,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt8629748',
'Spenser Confidential',
2020,
'Action,Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt8632862',
'Fahrenheit 11/9',
2018,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt8633478',
'Run',
2020,
'Drama,Horror,Mystery',
'13+'
);

INSERT INTO Movies VALUES (
'tt8637428',
'The Farewell',
2019,
'Comedy,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt8637504',
'Disclosure',
2020,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt8663516',
'Child''s Play',
2019,
'Drama,Horror,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt8664988',
'The Blackout',
2019,
'Action,Sci-Fi,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8665746',
'RX 100',
2018,
'Action',
'all'
);

INSERT INTO Movies VALUES (
'tt8704802',
'The Last Blockbuster',
2020,
'Documentary',
'16+'
);

INSERT INTO Movies VALUES (
'tt8706138',
'Ava',
2020,
'Sci-Fi,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8709036',
'A Christmas Prince: The Royal Wedding',
2018,
'Comedy,Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt8717446',
'Blackbird',
2019,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8731842',
'Odu Raja Odu',
2018,
'Comedy,Crime,Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt8737608',
'Rams',
2020,
'Comedy,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt8741182',
'Dance Dreams: Hot Chocolate Nutcracker',
2020,
'Documentary,Family',
'all'
);

INSERT INTO Movies VALUES (
'tt8743032',
'The Silence of the Marsh',
2019,
'Action,Drama,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt8749922',
'Grand-Daddy Day Care',
2019,
'Comedy,Family',
'13+'
);

INSERT INTO Movies VALUES (
'tt8750122',
'Benchwarmers 2: Breaking Balls',
2019,
'Comedy,Sport',
'13+'
);

INSERT INTO Movies VALUES (
'tt8750570',
'Sergio',
2020,
'Biography,Drama,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt8758086',
'Mercy Black',
2019,
'Horror,Mystery,Thriller',
'16+'
);

INSERT INTO Movies VALUES (
'tt8759834',
'Selah and the Spades',
2019,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8765496',
'May the Devil Take You',
2018,
'Horror,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8769848',
'The Tomorrow Man',
2019,
'Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt8772262',
'Midsommar',
2019,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt8774798',
'100% Wolf',
2020,
'Adventure,Animation,Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt8783532',
'School Life',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8784956',
'Ava',
2020,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8809652',
'10 Minutes Gone',
2019,
'Action,Crime,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt8820590',
'T-34',
2018,
'Action,War',
'16+'
);

INSERT INTO Movies VALUES (
'tt8841972',
'The Blackout',
2019,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8851668',
'The Lovebirds',
2020,
'Action,Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt8856470',
'Pokémon: Mewtwo Strikes Back - Evolution',
2019,
'Action,Animation,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt8858104',
'Guava Island',
2019,
'Comedy,Drama,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt8858420',
'Women of Mafia 2',
2019,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8861786',
'Puppy Star Christmas',
2018,
'Comedy,Family,Musical',
'7+'
);

INSERT INTO Movies VALUES (
'tt8875940',
'Four Enchanted Sisters',
2020,
'Adventure,Comedy,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt8902948',
'Tigertail',
2020,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt8902978',
'Wander Darkly',
2020,
'Drama,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8908002',
'Luka Chuppi',
2019,
'Comedy,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt8914492',
'Game Over',
2019,
'Drama,Mystery,Thriller',
'13+'
);

INSERT INTO Movies VALUES (
'tt8917752',
'Joy',
2018,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8923482',
'One Child Nation',
2019,
'Documentary,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt8925540',
'Racetime',
2018,
'Adventure,Animation,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt8936646',
'Extraction',
2020,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt8946378',
'Knives Out',
2019,
'Comedy,Crime,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt8949056',
'Yes, God, Yes',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8951058',
'The Panama Papers',
2018,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt8954732',
'The Princess Switch',
2018,
'Comedy,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt8972556',
'I Am Vengeance: Retaliation',
2020,
'Action',
'18+'
);

INSERT INTO Movies VALUES (
'tt8976576',
'Vampires vs. the Bronx',
2020,
'Comedy,Horror',
'13+'
);

INSERT INTO Movies VALUES (
'tt8976710',
'Sextuplets',
2019,
'Comedy',
'16+'
);

INSERT INTO Movies VALUES (
'tt8983164',
'Chhalaang',
2020,
'Comedy,Drama,Sport',
'16+'
);

INSERT INTO Movies VALUES (
'tt8983240',
'Laatu',
2018,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt8988748',
'Seventeen',
2019,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt8997712',
'Broil',
2020,
'Fantasy,Horror,Thriller',
'16+'
);

INSERT INTO Movies VALUES (
'tt9010900',
'Boi',
2019,
'Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt9014248',
'Mutiny of the Worker Bees',
2020,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt9026184',
'Girl on the Third Floor',
2019,
'Drama,Horror,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt9032888',
'Good Sam',
2019,
'Comedy,Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt9056818',
'Last Breath',
2019,
'Documentary,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt9063902',
'Live Twice, Love Once',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt9068272',
'First Lady',
2020,
'Comedy,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt9086228',
'Gretel & Hansel',
2020,
'Fantasy,Horror,Mystery',
'13+'
);

INSERT INTO Movies VALUES (
'tt9100028',
'The Little Switzerland',
2019,
'Comedy',
'13+'
);

INSERT INTO Movies VALUES (
'tt9109976',
'Psycho',
2020,
'Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt9115528',
'Never Too Late',
2020,
'Comedy,Drama,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt9139586',
'Arkansas',
2020,
'Action,Crime,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt9149946',
'Bernie the Dolphin 2',
2019,
'Action,Comedy,Family',
'all'
);

INSERT INTO Movies VALUES (
'tt9150970',
'Despite Everything',
2019,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt9176296',
'Dolly Kitty and Those Twinkling Stars',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt9204088',
'Dog Days',
2018,
'Drama',
'7+'
);

INSERT INTO Movies VALUES (
'tt9204164',
'Bigfoot Family',
2020,
'Adventure,Animation,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt9219848',
'Elon Musk: The Real Life Iron Man',
2018,
'Biography,Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt9239888',
'The Ruthless',
2019,
'Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt9252508',
'Tall Girl',
2019,
'Comedy,Drama,Family',
'7+'
);

INSERT INTO Movies VALUES (
'tt9253926',
'The Curse of Hobbes House',
2020,
'Drama,Horror',
'18+'
);

INSERT INTO Movies VALUES (
'tt9257932',
'Animal World',
2018,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt9261218',
'Uncorked',
2020,
'Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt9264728',
'What Lies Below',
2020,
'Drama,Horror,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt9267206',
'Nostalgia',
2018,
'Drama,Romance,Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt9270416',
'Fantastica',
2018,
'Comedy,Fantasy',
'all'
);

INSERT INTO Movies VALUES (
'tt9310328',
'Altered Carbon: Resleeved',
2020,
'Action,Animation,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt9316022',
'Struggle: The Life and Lost Art of Szukalski',
2018,
'Biography,Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt9326056',
'Sea of Shadows',
2019,
'Crime,Documentary,History',
'13+'
);

INSERT INTO Movies VALUES (
'tt9345754',
'The Occupant',
2020,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt9351980',
'American Factory',
2019,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt9354842',
'To All the Boys: P.S. I Still Love You',
2020,
'Comedy,Drama,Romance',
'16+'
);

INSERT INTO Movies VALUES (
'tt9358044',
'Hail Satan?',
2019,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt9358052',
'Knock Down the House',
2019,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt9358206',
'Toni Morrison: The Pieces I Am',
2019,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt9395384',
'One Great Love',
2018,
'Drama,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt9398640',
'Between Two Ferns: The Movie',
2019,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt9411866',
'The Roads Not Taken',
2020,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt9412098',
'Fyre',
2019,
'Crime,Documentary,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt9412268',
'Furie',
2019,
'Action,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt9419834',
'Secret Obsession',
2019,
'Crime,Drama,Mystery',
'13+'
);

INSERT INTO Movies VALUES (
'tt9426186',
'Revenger',
2018,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt9441638',
'The Big Ugly',
2020,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt9465600',
'3022',
2019,
'Sci-Fi',
'18+'
);

INSERT INTO Movies VALUES (
'tt9484998',
'Palm Springs',
2020,
'Comedy,Fantasy,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt9495224',
'Black Mirror: Bandersnatch',
2018,
'Drama,Fantasy,Mystery',
'18+'
);

INSERT INTO Movies VALUES (
'tt9506474',
'The Hater',
2020,
'Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt9537292',
'Ala Vaikunthapurramuloo',
2020,
'Action,Comedy,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt9564774',
'Venky Mama',
2019,
'Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt9567112',
'A Kid from Coney Island',
2019,
'Biography,Documentary,Sport',
'18+'
);

INSERT INTO Movies VALUES (
'tt9577334',
'Red Dog',
2019,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt9600932',
'The Brink',
2019,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt9612368',
'An English Haunting',
2020,
'Horror',
'13+'
);

INSERT INTO Movies VALUES (
'tt9613244',
'Autonomy',
2019,
'Documentary',
'7+'
);

INSERT INTO Movies VALUES (
'tt9617716',
'Everybody''s Everything',
2019,
'Documentary,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt9617782',
'Who Let the Dogs Out',
2019,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt9619798',
'The Wrong Missy',
2020,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt9624766',
'Jiu Jitsu',
2020,
'Action,Sci-Fi,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt9632590',
'An Easy Girl',
2019,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt9636630',
'Home Sweet Home',
2020,
'Comedy,Drama,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt9646240',
'The Man Without Gravity',
2019,
'Comedy,Drama,Fantasy',
'16+'
);

INSERT INTO Movies VALUES (
'tt9647980',
'Patria',
2019,
'Documentary,History',
'18+'
);

INSERT INTO Movies VALUES (
'tt9660688',
'Black Beach',
2020,
'Crime,Drama,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt9670466',
'The Influence',
2019,
'Documentary',
'18+'
);

INSERT INTO Movies VALUES (
'tt9683478',
'The Half of It',
2020,
'Comedy,Drama',
'13+'
);

INSERT INTO Movies VALUES (
'tt9689696',
'Wander',
2020,
'Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt9708358',
'Uncle Tom',
2020,
'Documentary,History',
'all'
);

INSERT INTO Movies VALUES (
'tt9735350',
'Rebuilding Paradise',
2020,
'Documentary',
'13+'
);

INSERT INTO Movies VALUES (
'tt9735758',
'Get Duked!',
2019,
'Comedy,Horror,Music',
'18+'
);

INSERT INTO Movies VALUES (
'tt9735976',
'Wheels of Fortune',
2020,
'Comedy',
'18+'
);

INSERT INTO Movies VALUES (
'tt9738716',
'The World to Come',
2020,
'Drama,History,Western',
'18+'
);

INSERT INTO Movies VALUES (
'tt9760504',
'NiNoKuni',
2019,
'Action,Adventure,Animation',
'16+'
);

INSERT INTO Movies VALUES (
'tt9777644',
'Da 5 Bloods',
2020,
'Adventure,Drama,War',
'18+'
);

INSERT INTO Movies VALUES (
'tt9777830',
'John Leguizamo''s Latin History for Morons',
2018,
'Comedy',
'7+'
);

INSERT INTO Movies VALUES (
'tt9778348',
'The Winter Lake',
2020,
'Drama,Mystery,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt9779290',
'By Night''s End',
2020,
'Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt9779516',
'I Still Believe',
2020,
'Biography,Drama,Music',
'7+'
);

INSERT INTO Movies VALUES (
'tt9794630',
'The Vanished',
2020,
'Action,Crime,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt9799984',
'Falaknuma Das',
2019,
'Action,Thriller',
'18+'
);

INSERT INTO Movies VALUES (
'tt9806192',
'I Lost My Body',
2019,
'Animation,Drama,Fantasy',
'18+'
);

INSERT INTO Movies VALUES (
'tt9806322',
'Isi & Ossi',
2020,
'Comedy,Romance',
'18+'
);

INSERT INTO Movies VALUES (
'tt9809140',
'All the Freckles in the World',
2019,
'Comedy,Romance,Sport',
'16+'
);

INSERT INTO Movies VALUES (
'tt9810420',
'A Second Chance: Rivals!',
2019,
'Drama,Family,Sport',
'7+'
);

INSERT INTO Movies VALUES (
'tt9815998',
'Hooking Up',
2020,
'Comedy,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt9820352',
'Villain',
2020,
'Action,Crime,Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt9827834',
'Sylvie''s Love',
2020,
'Drama,Music,Romance',
'13+'
);

INSERT INTO Movies VALUES (
'tt9844368',
'Out of Liberty',
2019,
'Drama,Western',
'7+'
);

INSERT INTO Movies VALUES (
'tt9860728',
'Falling Inn Love',
2019,
'Comedy,Romance',
'7+'
);

INSERT INTO Movies VALUES (
'tt9898858',
'Coffee & Kareem',
2020,
'Action,Comedy,Crime',
'18+'
);

INSERT INTO Movies VALUES (
'tt9902160',
'Herself',
2020,
'Drama',
'18+'
);

INSERT INTO Movies VALUES (
'tt9916362',
'Coven',
2020,
'Drama,History,Horror',
'18+'
);

INSERT INTO Ratings VALUES (
'tt0069049',
6.7,
61
);

INSERT INTO Ratings VALUES (
'tt0315642',
7.1,
59
);

INSERT INTO Ratings VALUES (
'tt0365545',
6.4,
74
);

INSERT INTO Ratings VALUES (
'tt0460890',
6.4,
63
);

INSERT INTO Ratings VALUES (
'tt0462335',
5.5,
67
);

INSERT INTO Ratings VALUES (
'tt0475290',
6.3,
72
);

INSERT INTO Ratings VALUES (
'tt0478970',
7.2,
84
);

INSERT INTO Ratings VALUES (
'tt0490215',
7.2,
77
);

INSERT INTO Ratings VALUES (
'tt0800325',
7.0,
79
);

INSERT INTO Ratings VALUES (
'tt0810819',
7.1,
75
);

INSERT INTO Ratings VALUES (
'tt0810836',
5.4,
48
);

INSERT INTO Ratings VALUES (
'tt0825283',
3.6,
50
);

INSERT INTO Ratings VALUES (
'tt0837156',
6.1,
73
);

INSERT INTO Ratings VALUES (
'tt0837563',
5.7,
68
);

INSERT INTO Ratings VALUES (
'tt10003978',
7.6,
51
);

INSERT INTO Ratings VALUES (
'tt10011500',
7.4,
48
);

INSERT INTO Ratings VALUES (
'tt1002563',
5.7,
57
);

INSERT INTO Ratings VALUES (
'tt10054316',
4.4,
51
);

INSERT INTO Ratings VALUES (
'tt10055028',
7.4,
48
);

INSERT INTO Ratings VALUES (
'tt10059518',
6.0,
72
);

INSERT INTO Ratings VALUES (
'tt10060094',
5.6,
60
);

INSERT INTO Ratings VALUES (
'tt10065694',
5.8,
67
);

INSERT INTO Ratings VALUES (
'tt10078900',
5.4,
32
);

INSERT INTO Ratings VALUES (
'tt10091530',
5.0,
48
);

INSERT INTO Ratings VALUES (
'tt10092752',
5.2,
46
);

INSERT INTO Ratings VALUES (
'tt10121762',
7.0,
49
);

INSERT INTO Ratings VALUES (
'tt10127562',
6.5,
60
);

INSERT INTO Ratings VALUES (
'tt10127684',
6.1,
60
);

INSERT INTO Ratings VALUES (
'tt10147546',
7.6,
71
);

INSERT INTO Ratings VALUES (
'tt10156112',
7.3,
58
);

INSERT INTO Ratings VALUES (
'tt10161886',
5.9,
65
);

INSERT INTO Ratings VALUES (
'tt10165624',
3.4,
40
);

INSERT INTO Ratings VALUES (
'tt10181594',
5.2,
38
);

INSERT INTO Ratings VALUES (
'tt10183816',
5.4,
60
);

INSERT INTO Ratings VALUES (
'tt10199586',
6.7,
79
);

INSERT INTO Ratings VALUES (
'tt10199914',
6.8,
64
);

INSERT INTO Ratings VALUES (
'tt10229846',
6.2,
43
);

INSERT INTO Ratings VALUES (
'tt10230422',
5.8,
53
);

INSERT INTO Ratings VALUES (
'tt10230436',
7.5,
53
);

INSERT INTO Ratings VALUES (
'tt10230492',
5.5,
42
);

INSERT INTO Ratings VALUES (
'tt10235600',
3.7,
39
);

INSERT INTO Ratings VALUES (
'tt10243992',
6.2,
65
);

INSERT INTO Ratings VALUES (
'tt1025100',
5.7,
73
);

INSERT INTO Ratings VALUES (
'tt10253466',
5.6,
54
);

INSERT INTO Ratings VALUES (
'tt10255320',
3.6,
43
);

INSERT INTO Ratings VALUES (
'tt10276114',
8.1,
46
);

INSERT INTO Ratings VALUES (
'tt10276470',
6.1,
62
);

INSERT INTO Ratings VALUES (
'tt10288566',
7.7,
80
);

INSERT INTO Ratings VALUES (
'tt10288820',
5.3,
40
);

INSERT INTO Ratings VALUES (
'tt10289996',
7.5,
57
);

INSERT INTO Ratings VALUES (
'tt10303324',
4.0,
54
);

INSERT INTO Ratings VALUES (
'tt10307440',
6.0,
58
);

INSERT INTO Ratings VALUES (
'tt10308928',
4.6,
58
);

INSERT INTO Ratings VALUES (
'tt10324122',
5.1,
60
);

INSERT INTO Ratings VALUES (
'tt10324144',
8.1,
92
);

INSERT INTO Ratings VALUES (
'tt1034385',
6.0,
63
);

INSERT INTO Ratings VALUES (
'tt1034415',
6.7,
73
);

INSERT INTO Ratings VALUES (
'tt10350626',
5.6,
65
);

INSERT INTO Ratings VALUES (
'tt10362466',
5.1,
68
);

INSERT INTO Ratings VALUES (
'tt10394738',
7.5,
63
);

INSERT INTO Ratings VALUES (
'tt10397734',
4.2,
37
);

INSERT INTO Ratings VALUES (
'tt10431500',
8.2,
77
);

INSERT INTO Ratings VALUES (
'tt10432682',
4.3,
41
);

INSERT INTO Ratings VALUES (
'tt10456740',
6.4,
73
);

INSERT INTO Ratings VALUES (
'tt10477558',
7.5,
63
);

INSERT INTO Ratings VALUES (
'tt10514222',
6.9,
84
);

INSERT INTO Ratings VALUES (
'tt10525174',
4.0,
38
);

INSERT INTO Ratings VALUES (
'tt10525672',
7.1,
62
);

INSERT INTO Ratings VALUES (
'tt10529644',
3.7,
42
);

INSERT INTO Ratings VALUES (
'tt10539608',
5.7,
71
);

INSERT INTO Ratings VALUES (
'tt10579992',
6.4,
53
);

INSERT INTO Ratings VALUES (
'tt10589914',
6.2,
69
);

INSERT INTO Ratings VALUES (
'tt10600398',
4.7,
54
);

INSERT INTO Ratings VALUES (
'tt10618286',
6.8,
74
);

INSERT INTO Ratings VALUES (
'tt10627584',
6.8,
82
);

INSERT INTO Ratings VALUES (
'tt10637682',
5.7,
46
);

INSERT INTO Ratings VALUES (
'tt10642834',
7.2,
64
);

INSERT INTO Ratings VALUES (
'tt10649016',
6.8,
61
);

INSERT INTO Ratings VALUES (
'tt10682266',
5.3,
63
);

INSERT INTO Ratings VALUES (
'tt1070874',
7.7,
92
);

INSERT INTO Ratings VALUES (
'tt10709060',
6.1,
74
);

INSERT INTO Ratings VALUES (
'tt10711654',
7.0,
47
);

INSERT INTO Ratings VALUES (
'tt10714856',
6.3,
62
);

INSERT INTO Ratings VALUES (
'tt10715194',
5.3,
49
);

INSERT INTO Ratings VALUES (
'tt1072748',
5.5,
65
);

INSERT INTO Ratings VALUES (
'tt10728764',
6.5,
74
);

INSERT INTO Ratings VALUES (
'tt10731386',
7.1,
61
);

INSERT INTO Ratings VALUES (
'tt10773090',
5.8,
56
);

INSERT INTO Ratings VALUES (
'tt10773114',
7.3,
53
);

INSERT INTO Ratings VALUES (
'tt10773606',
4.9,
37
);

INSERT INTO Ratings VALUES (
'tt10798660',
5.3,
47
);

INSERT INTO Ratings VALUES (
'tt10816484',
6.9,
67
);

INSERT INTO Ratings VALUES (
'tt10845262',
7.5,
77
);

INSERT INTO Ratings VALUES (
'tt10851618',
8.1,
67
);

INSERT INTO Ratings VALUES (
'tt10856726',
6.3,
55
);

INSERT INTO Ratings VALUES (
'tt1086064',
5.9,
72
);

INSERT INTO Ratings VALUES (
'tt10883004',
6.7,
75
);

INSERT INTO Ratings VALUES (
'tt10886166',
3.3,
59
);

INSERT INTO Ratings VALUES (
'tt10895610',
6.9,
60
);

INSERT INTO Ratings VALUES (
'tt10915286',
7.6,
89
);

INSERT INTO Ratings VALUES (
'tt10920190',
3.3,
40
);

INSERT INTO Ratings VALUES (
'tt10933680',
5.8,
56
);

INSERT INTO Ratings VALUES (
'tt10941528',
5.6,
49
);

INSERT INTO Ratings VALUES (
'tt10958282',
6.4,
42
);

INSERT INTO Ratings VALUES (
'tt10984818',
6.3,
46
);

INSERT INTO Ratings VALUES (
'tt10994688',
5.3,
62
);

INSERT INTO Ratings VALUES (
'tt11005162',
5.5,
39
);

INSERT INTO Ratings VALUES (
'tt11007024',
7.2,
68
);

INSERT INTO Ratings VALUES (
'tt11010144',
4.6,
50
);

INSERT INTO Ratings VALUES (
'tt11044122',
7.7,
61
);

INSERT INTO Ratings VALUES (
'tt11057594',
4.6,
46
);

INSERT INTO Ratings VALUES (
'tt11057644',
6.0,
64
);

INSERT INTO Ratings VALUES (
'tt11057912',
6.2,
41
);

INSERT INTO Ratings VALUES (
'tt11101550',
3.6,
38
);

INSERT INTO Ratings VALUES (
'tt11127690',
5.7,
62
);

INSERT INTO Ratings VALUES (
'tt11156614',
5.4,
49
);

INSERT INTO Ratings VALUES (
'tt11161474',
7.0,
88
);

INSERT INTO Ratings VALUES (
'tt11199410',
5.5,
57
);

INSERT INTO Ratings VALUES (
'tt1124037',
6.9,
72
);

INSERT INTO Ratings VALUES (
'tt11240506',
4.9,
59
);

INSERT INTO Ratings VALUES (
'tt11242218',
5.6,
60
);

INSERT INTO Ratings VALUES (
'tt11276598',
3.7,
50
);

INSERT INTO Ratings VALUES (
'tt11284280',
5.2,
56
);

INSERT INTO Ratings VALUES (
'tt11327514',
7.3,
69
);

INSERT INTO Ratings VALUES (
'tt11378154',
2.7,
39
);

INSERT INTO Ratings VALUES (
'tt11378264',
7.3,
58
);

INSERT INTO Ratings VALUES (
'tt11388406',
6.0,
72
);

INSERT INTO Ratings VALUES (
'tt11388580',
7.4,
90
);

INSERT INTO Ratings VALUES (
'tt11390036',
5.9,
60
);

INSERT INTO Ratings VALUES (
'tt11394180',
7.4,
64
);

INSERT INTO Ratings VALUES (
'tt11394184',
6.8,
58
);

INSERT INTO Ratings VALUES (
'tt11394338',
7.0,
68
);

INSERT INTO Ratings VALUES (
'tt11416746',
6.8,
73
);

INSERT INTO Ratings VALUES (
'tt11426644',
7.0,
64
);

INSERT INTO Ratings VALUES (
'tt11454066',
7.1,
59
);

INSERT INTO Ratings VALUES (
'tt11464826',
7.6,
93
);

INSERT INTO Ratings VALUES (
'tt11576124',
4.2,
57
);

INSERT INTO Ratings VALUES (
'tt1158939',
6.0,
58
);

INSERT INTO Ratings VALUES (
'tt11640412',
6.8,
47
);

INSERT INTO Ratings VALUES (
'tt11642302',
5.3,
46
);

INSERT INTO Ratings VALUES (
'tt11649910',
8.0,
70
);

INSERT INTO Ratings VALUES (
'tt11651796',
6.9,
60
);

INSERT INTO Ratings VALUES (
'tt11656172',
3.1,
53
);

INSERT INTO Ratings VALUES (
'tt11681250',
6.1,
63
);

INSERT INTO Ratings VALUES (
'tt11690838',
6.4,
46
);

INSERT INTO Ratings VALUES (
'tt11697484',
3.9,
52
);

INSERT INTO Ratings VALUES (
'tt11749980',
5.9,
46
);

INSERT INTO Ratings VALUES (
'tt11792734',
3.7,
45
);

INSERT INTO Ratings VALUES (
'tt11827806',
5.3,
47
);

INSERT INTO Ratings VALUES (
'tt1183374',
5.7,
62
);

INSERT INTO Ratings VALUES (
'tt11835236',
5.5,
41
);

INSERT INTO Ratings VALUES (
'tt11905462',
7.6,
67
);

INSERT INTO Ratings VALUES (
'tt11905962',
6.4,
70
);

INSERT INTO Ratings VALUES (
'tt11906032',
7.8,
49
);

INSERT INTO Ratings VALUES (
'tt11958344',
6.7,
81
);

INSERT INTO Ratings VALUES (
'tt11968072',
4.0,
42
);

INSERT INTO Ratings VALUES (
'tt11988512',
5.6,
53
);

INSERT INTO Ratings VALUES (
'tt11990802',
5.6,
43
);

INSERT INTO Ratings VALUES (
'tt11994750',
7.0,
57
);

INSERT INTO Ratings VALUES (
'tt12036052',
7.3,
54
);

INSERT INTO Ratings VALUES (
'tt12053202',
4.7,
38
);

INSERT INTO Ratings VALUES (
'tt1206885',
6.1,
73
);

INSERT INTO Ratings VALUES (
'tt12100044',
7.1,
45
);

INSERT INTO Ratings VALUES (
'tt12108272',
6.1,
57
);

INSERT INTO Ratings VALUES (
'tt12116846',
4.6,
55
);

INSERT INTO Ratings VALUES (
'tt1211837',
7.5,
85
);

INSERT INTO Ratings VALUES (
'tt12139700',
5.5,
51
);

INSERT INTO Ratings VALUES (
'tt12187586',
7.3,
53
);

INSERT INTO Ratings VALUES (
'tt12215286',
5.1,
45
);

INSERT INTO Ratings VALUES (
'tt1226837',
7.4,
87
);

INSERT INTO Ratings VALUES (
'tt12282598',
5.6,
50
);

INSERT INTO Ratings VALUES (
'tt12298506',
6.2,
61
);

INSERT INTO Ratings VALUES (
'tt1230168',
6.6,
64
);

INSERT INTO Ratings VALUES (
'tt12323842',
6.4,
43
);

INSERT INTO Ratings VALUES (
'tt1235187',
6.6,
59
);

INSERT INTO Ratings VALUES (
'tt12381488',
4.6,
74
);

INSERT INTO Ratings VALUES (
'tt1239242',
6.0,
50
);

INSERT INTO Ratings VALUES (
'tt12393526',
6.6,
63
);

INSERT INTO Ratings VALUES (
'tt12517908',
3.4,
39
);

INSERT INTO Ratings VALUES (
'tt12538822',
6.9,
74
);

INSERT INTO Ratings VALUES (
'tt12588398',
5.7,
36
);

INSERT INTO Ratings VALUES (
'tt12607910',
6.0,
79
);

INSERT INTO Ratings VALUES (
'tt1266036',
5.5,
57
);

INSERT INTO Ratings VALUES (
'tt12660966',
6.6,
48
);

INSERT INTO Ratings VALUES (
'tt12724622',
6.4,
53
);

INSERT INTO Ratings VALUES (
'tt12752158',
1.3,
34
);

INSERT INTO Ratings VALUES (
'tt12757438',
3.7,
43
);

INSERT INTO Ratings VALUES (
'tt12766708',
6.5,
42
);

INSERT INTO Ratings VALUES (
'tt12792418',
6.8,
60
);

INSERT INTO Ratings VALUES (
'tt12824834',
4.8,
40
);

INSERT INTO Ratings VALUES (
'tt12838350',
4.7,
66
);

INSERT INTO Ratings VALUES (
'tt1285009',
5.3,
64
);

INSERT INTO Ratings VALUES (
'tt12888462',
8.1,
83
);

INSERT INTO Ratings VALUES (
'tt1289401',
6.8,
78
);

INSERT INTO Ratings VALUES (
'tt12981810',
1.3,
36
);

INSERT INTO Ratings VALUES (
'tt12982218',
6.8,
41
);

INSERT INTO Ratings VALUES (
'tt1298644',
5.5,
67
);

INSERT INTO Ratings VALUES (
'tt12987894',
7.2,
68
);

INSERT INTO Ratings VALUES (
'tt13009186',
6.1,
53
);

INSERT INTO Ratings VALUES (
'tt1302006',
7.8,
98
);

INSERT INTO Ratings VALUES (
'tt13033280',
4.3,
42
);

INSERT INTO Ratings VALUES (
'tt13055780',
5.9,
57
);

INSERT INTO Ratings VALUES (
'tt13065386',
7.6,
64
);

INSERT INTO Ratings VALUES (
'tt13081264',
6.3,
44
);

INSERT INTO Ratings VALUES (
'tt1308728',
5.5,
64
);

INSERT INTO Ratings VALUES (
'tt13106900',
4.1,
41
);

INSERT INTO Ratings VALUES (
'tt13143964',
6.6,
88
);

INSERT INTO Ratings VALUES (
'tt13150630',
7.2,
60
);

INSERT INTO Ratings VALUES (
'tt13179918',
2.4,
42
);

INSERT INTO Ratings VALUES (
'tt13206564',
8.1,
62
);

INSERT INTO Ratings VALUES (
'tt13236566',
5.9,
62
);

INSERT INTO Ratings VALUES (
'tt13237174',
7.2,
54
);

INSERT INTO Ratings VALUES (
'tt13276386',
6.5,
49
);

INSERT INTO Ratings VALUES (
'tt13279528',
5.9,
51
);

INSERT INTO Ratings VALUES (
'tt13290168',
5.6,
45
);

INSERT INTO Ratings VALUES (
'tt13292206',
2.3,
38
);

INSERT INTO Ratings VALUES (
'tt13318052',
5.8,
52
);

INSERT INTO Ratings VALUES (
'tt13410288',
6.4,
58
);

INSERT INTO Ratings VALUES (
'tt13528990',
7.3,
47
);

INSERT INTO Ratings VALUES (
'tt1365050',
7.7,
74
);

INSERT INTO Ratings VALUES (
'tt13723064',
5.9,
57
);

INSERT INTO Ratings VALUES (
'tt1386691',
6.3,
61
);

INSERT INTO Ratings VALUES (
'tt1464763',
5.5,
64
);

INSERT INTO Ratings VALUES (
'tt1480285',
4.5,
54
);

INSERT INTO Ratings VALUES (
'tt1485796',
7.5,
82
);

INSERT INTO Ratings VALUES (
'tt1488606',
6.5,
72
);

INSERT INTO Ratings VALUES (
'tt1489887',
7.1,
78
);

INSERT INTO Ratings VALUES (
'tt1507002',
5.7,
50
);

INSERT INTO Ratings VALUES (
'tt1536537',
6.8,
86
);

INSERT INTO Ratings VALUES (
'tt1540011',
5.0,
64
);

INSERT INTO Ratings VALUES (
'tt1542768',
5.9,
61
);

INSERT INTO Ratings VALUES (
'tt1544608',
5.2,
59
);

INSERT INTO Ratings VALUES (
'tt1545304',
5.2,
57
);

INSERT INTO Ratings VALUES (
'tt1552211',
3.8,
46
);

INSERT INTO Ratings VALUES (
'tt1588878',
5.2,
58
);

INSERT INTO Ratings VALUES (
'tt1617661',
5.3,
71
);

INSERT INTO Ratings VALUES (
'tt1618434',
6.1,
76
);

INSERT INTO Ratings VALUES (
'tt1620680',
4.3,
62
);

INSERT INTO Ratings VALUES (
'tt1620981',
5.9,
68
);

INSERT INTO Ratings VALUES (
'tt1629242',
5.6,
61
);

INSERT INTO Ratings VALUES (
'tt16411500',
6.8,
42
);

INSERT INTO Ratings VALUES (
'tt1655441',
7.2,
77
);

INSERT INTO Ratings VALUES (
'tt1655461',
5.7,
56
);

INSERT INTO Ratings VALUES (
'tt1680140',
5.4,
51
);

INSERT INTO Ratings VALUES (
'tt1690967',
6.0,
64
);

INSERT INTO Ratings VALUES (
'tt1691916',
6.4,
71
);

INSERT INTO Ratings VALUES (
'tt1694021',
5.3,
60
);

INSERT INTO Ratings VALUES (
'tt1712192',
6.4,
62
);

INSERT INTO Ratings VALUES (
'tt1712261',
6.3,
70
);

INSERT INTO Ratings VALUES (
'tt1714917',
7.2,
62
);

INSERT INTO Ratings VALUES (
'tt1720621',
5.8,
53
);

INSERT INTO Ratings VALUES (
'tt1724970',
5.3,
63
);

INSERT INTO Ratings VALUES (
'tt1727770',
6.0,
67
);

INSERT INTO Ratings VALUES (
'tt1727824',
7.9,
85
);

INSERT INTO Ratings VALUES (
'tt1730768',
7.0,
71
);

INSERT INTO Ratings VALUES (
'tt1734493',
6.3,
69
);

INSERT INTO Ratings VALUES (
'tt1754656',
7.6,
74
);

INSERT INTO Ratings VALUES (
'tt1773753',
5.1,
59
);

INSERT INTO Ratings VALUES (
'tt1780967',
6.0,
65
);

INSERT INTO Ratings VALUES (
'tt1781922',
6.8,
73
);

INSERT INTO Ratings VALUES (
'tt1790809',
6.5,
78
);

INSERT INTO Ratings VALUES (
'tt1799516',
6.4,
59
);

INSERT INTO Ratings VALUES (
'tt1801552',
4.8,
58
);

INSERT INTO Ratings VALUES (
'tt1825683',
7.3,
84
);

INSERT INTO Ratings VALUES (
'tt1830643',
4.5,
56
);

INSERT INTO Ratings VALUES (
'tt1833116',
6.6,
70
);

INSERT INTO Ratings VALUES (
'tt1838556',
6.0,
72
);

INSERT INTO Ratings VALUES (
'tt1841642',
5.3,
61
);

INSERT INTO Ratings VALUES (
'tt1860242',
6.9,
73
);

INSERT INTO Ratings VALUES (
'tt1878841',
4.5,
59
);

INSERT INTO Ratings VALUES (
'tt1880399',
6.8,
67
);

INSERT INTO Ratings VALUES (
'tt1918734',
4.9,
62
);

INSERT INTO Ratings VALUES (
'tt1935194',
5.4,
59
);

INSERT INTO Ratings VALUES (
'tt1935859',
6.7,
76
);

INSERT INTO Ratings VALUES (
'tt1937340',
5.4,
44
);

INSERT INTO Ratings VALUES (
'tt1949605',
4.9,
50
);

INSERT INTO Ratings VALUES (
'tt1950135',
4.6,
45
);

INSERT INTO Ratings VALUES (
'tt1950235',
5.9,
73
);

INSERT INTO Ratings VALUES (
'tt1961175',
6.2,
72
);

INSERT INTO Ratings VALUES (
'tt1974419',
6.1,
70
);

INSERT INTO Ratings VALUES (
'tt1979376',
7.6,
82
);

INSERT INTO Ratings VALUES (
'tt1979388',
6.7,
75
);

INSERT INTO Ratings VALUES (
'tt1999890',
5.5,
61
);

INSERT INTO Ratings VALUES (
'tt2005151',
7.1,
79
);

INSERT INTO Ratings VALUES (
'tt2006295',
6.9,
69
);

INSERT INTO Ratings VALUES (
'tt2016335',
5.4,
51
);

INSERT INTO Ratings VALUES (
'tt2025690',
6.7,
72
);

INSERT INTO Ratings VALUES (
'tt2032572',
5.3,
63
);

INSERT INTO Ratings VALUES (
'tt2057392',
7.3,
75
);

INSERT INTO Ratings VALUES (
'tt2066051',
7.3,
79
);

INSERT INTO Ratings VALUES (
'tt2069797',
5.7,
62
);

INSERT INTO Ratings VALUES (
'tt2072233',
5.6,
67
);

INSERT INTO Ratings VALUES (
'tt2076298',
7.0,
71
);

INSERT INTO Ratings VALUES (
'tt2080374',
7.2,
76
);

INSERT INTO Ratings VALUES (
'tt2090465',
6.1,
63
);

INSERT INTO Ratings VALUES (
'tt2093991',
6.3,
62
);

INSERT INTO Ratings VALUES (
'tt2106651',
6.3,
71
);

INSERT INTO Ratings VALUES (
'tt2114504',
4.2,
52
);

INSERT INTO Ratings VALUES (
'tt2126357',
5.8,
66
);

INSERT INTO Ratings VALUES (
'tt2140379',
6.5,
73
);

INSERT INTO Ratings VALUES (
'tt2197936',
6.6,
57
);

INSERT INTO Ratings VALUES (
'tt2224026',
6.5,
74
);

INSERT INTO Ratings VALUES (
'tt2226597',
6.4,
72
);

INSERT INTO Ratings VALUES (
'tt2235695',
6.1,
60
);

INSERT INTO Ratings VALUES (
'tt2277860',
7.2,
81
);

INSERT INTO Ratings VALUES (
'tt2291540',
6.2,
66
);

INSERT INTO Ratings VALUES (
'tt2323912',
3.7,
44
);

INSERT INTO Ratings VALUES (
'tt2338424',
6.2,
62
);

INSERT INTO Ratings VALUES (
'tt2365580',
6.5,
67
);

INSERT INTO Ratings VALUES (
'tt2368254',
6.7,
67
);

INSERT INTO Ratings VALUES (
'tt2380307',
8.4,
87
);

INSERT INTO Ratings VALUES (
'tt2386237',
4.9,
60
);

INSERT INTO Ratings VALUES (
'tt2386404',
6.3,
64
);

INSERT INTO Ratings VALUES (
'tt2388771',
6.5,
69
);

INSERT INTO Ratings VALUES (
'tt2390335',
3.2,
38
);

INSERT INTO Ratings VALUES (
'tt2395427',
7.3,
84
);

INSERT INTO Ratings VALUES (
'tt2396589',
7.4,
91
);

INSERT INTO Ratings VALUES (
'tt2401097',
5.6,
60
);

INSERT INTO Ratings VALUES (
'tt2404465',
6.9,
64
);

INSERT INTO Ratings VALUES (
'tt2417712',
5.8,
62
);

INSERT INTO Ratings VALUES (
'tt2424988',
7.0,
60
);

INSERT INTO Ratings VALUES (
'tt2433040',
5.1,
51
);

INSERT INTO Ratings VALUES (
'tt2452042',
7.0,
72
);

INSERT INTO Ratings VALUES (
'tt2452386',
7.3,
89
);

INSERT INTO Ratings VALUES (
'tt2474932',
5.8,
56
);

INSERT INTO Ratings VALUES (
'tt2477218',
5.7,
50
);

INSERT INTO Ratings VALUES (
'tt2479478',
4.9,
62
);

INSERT INTO Ratings VALUES (
'tt2481498',
6.7,
74
);

INSERT INTO Ratings VALUES (
'tt2499472',
5.7,
57
);

INSERT INTO Ratings VALUES (
'tt2523832',
7.0,
63
);

INSERT INTO Ratings VALUES (
'tt2538204',
5.0,
46
);

INSERT INTO Ratings VALUES (
'tt2543164',
7.9,
86
);

INSERT INTO Ratings VALUES (
'tt2548396',
5.5,
69
);

INSERT INTO Ratings VALUES (
'tt2554274',
6.5,
75
);

INSERT INTO Ratings VALUES (
'tt2566644',
6.9,
71
);

INSERT INTO Ratings VALUES (
'tt2567026',
6.2,
73
);

INSERT INTO Ratings VALUES (
'tt2582498',
6.2,
64
);

INSERT INTO Ratings VALUES (
'tt2582576',
6.3,
69
);

INSERT INTO Ratings VALUES (
'tt2582782',
7.6,
81
);

INSERT INTO Ratings VALUES (
'tt2582784',
6.0,
62
);

INSERT INTO Ratings VALUES (
'tt2586120',
6.3,
57
);

INSERT INTO Ratings VALUES (
'tt2597760',
5.4,
57
);

INSERT INTO Ratings VALUES (
'tt2649554',
6.6,
73
);

INSERT INTO Ratings VALUES (
'tt2652118',
6.1,
64
);

INSERT INTO Ratings VALUES (
'tt2660888',
7.0,
80
);

INSERT INTO Ratings VALUES (
'tt2702920',
5.6,
60
);

INSERT INTO Ratings VALUES (
'tt2713980',
7.7,
46
);

INSERT INTO Ratings VALUES (
'tt2718440',
6.1,
58
);

INSERT INTO Ratings VALUES (
'tt2726552',
5.3,
58
);

INSERT INTO Ratings VALUES (
'tt2737304',
6.6,
86
);

INSERT INTO Ratings VALUES (
'tt2752772',
5.3,
64
);

INSERT INTO Ratings VALUES (
'tt2782692',
6.9,
74
);

INSERT INTO Ratings VALUES (
'tt2788732',
6.7,
72
);

INSERT INTO Ratings VALUES (
'tt2800050',
7.3,
64
);

INSERT INTO Ratings VALUES (
'tt2802136',
5.5,
60
);

INSERT INTO Ratings VALUES (
'tt2806390',
5.9,
49
);

INSERT INTO Ratings VALUES (
'tt2865120',
5.5,
63
);

INSERT INTO Ratings VALUES (
'tt2866708',
5.9,
58
);

INSERT INTO Ratings VALUES (
'tt2884018',
6.6,
67
);

INSERT INTO Ratings VALUES (
'tt2888046',
7.0,
71
);

INSERT INTO Ratings VALUES (
'tt2910904',
7.0,
72
);

INSERT INTO Ratings VALUES (
'tt2931140',
6.2,
48
);

INSERT INTO Ratings VALUES (
'tt2932536',
5.6,
69
);

INSERT INTO Ratings VALUES (
'tt2933474',
4.2,
57
);

INSERT INTO Ratings VALUES (
'tt2936390',
4.9,
53
);

INSERT INTO Ratings VALUES (
'tt2937366',
5.7,
62
);

INSERT INTO Ratings VALUES (
'tt2938956',
5.2,
64
);

INSERT INTO Ratings VALUES (
'tt2948356',
8.0,
85
);

INSERT INTO Ratings VALUES (
'tt2948372',
8.0,
89
);

INSERT INTO Ratings VALUES (
'tt2948606',
3.0,
36
);

INSERT INTO Ratings VALUES (
'tt2950052',
6.1,
57
);

INSERT INTO Ratings VALUES (
'tt2950418',
7.3,
65
);

INSERT INTO Ratings VALUES (
'tt2962984',
5.2,
53
);

INSERT INTO Ratings VALUES (
'tt2967226',
4.5,
50
);

INSERT INTO Ratings VALUES (
'tt2978102',
5.6,
59
);

INSERT INTO Ratings VALUES (
'tt2980210',
6.1,
67
);

INSERT INTO Ratings VALUES (
'tt2990126',
5.8,
57
);

INSERT INTO Ratings VALUES (
'tt2990140',
7.0,
84
);

INSERT INTO Ratings VALUES (
'tt3009772',
6.4,
61
);

INSERT INTO Ratings VALUES (
'tt3014078',
5.2,
49
);

INSERT INTO Ratings VALUES (
'tt3016748',
3.6,
51
);

INSERT INTO Ratings VALUES (
'tt3018070',
5.4,
57
);

INSERT INTO Ratings VALUES (
'tt30216076',
7.8,
12
);

INSERT INTO Ratings VALUES (
'tt3038708',
5.0,
58
);

INSERT INTO Ratings VALUES (
'tt3053228',
3.5,
52
);

INSERT INTO Ratings VALUES (
'tt3065204',
7.3,
81
);

INSERT INTO Ratings VALUES (
'tt3068194',
6.4,
65
);

INSERT INTO Ratings VALUES (
'tt3072482',
6.7,
73
);

INSERT INTO Ratings VALUES (
'tt3074546',
4.4,
45
);

INSERT INTO Ratings VALUES (
'tt3077214',
6.9,
69
);

INSERT INTO Ratings VALUES (
'tt3082854',
6.4,
59
);

INSERT INTO Ratings VALUES (
'tt3083008',
6.5,
65
);

INSERT INTO Ratings VALUES (
'tt3089630',
4.3,
60
);

INSERT INTO Ratings VALUES (
'tt3095734',
5.7,
65
);

INSERT INTO Ratings VALUES (
'tt3100274',
6.2,
62
);

INSERT INTO Ratings VALUES (
'tt3111426',
6.2,
65
);

INSERT INTO Ratings VALUES (
'tt3120280',
5.7,
64
);

INSERT INTO Ratings VALUES (
'tt3120960',
3.9,
47
);

INSERT INTO Ratings VALUES (
'tt3131050',
3.4,
62
);

INSERT INTO Ratings VALUES (
'tt3148502',
7.4,
64
);

INSERT INTO Ratings VALUES (
'tt3155328',
6.2,
72
);

INSERT INTO Ratings VALUES (
'tt3155342',
6.5,
59
);

INSERT INTO Ratings VALUES (
'tt3164256',
5.5,
58
);

INSERT INTO Ratings VALUES (
'tt3174376',
6.2,
78
);

INSERT INTO Ratings VALUES (
'tt3183402',
5.9,
81
);

INSERT INTO Ratings VALUES (
'tt3201640',
5.8,
74
);

INSERT INTO Ratings VALUES (
'tt3203528',
6.5,
67
);

INSERT INTO Ratings VALUES (
'tt3203606',
7.4,
75
);

INSERT INTO Ratings VALUES (
'tt3203620',
4.5,
54
);

INSERT INTO Ratings VALUES (
'tt3208026',
6.8,
64
);

INSERT INTO Ratings VALUES (
'tt3216348',
5.3,
61
);

INSERT INTO Ratings VALUES (
'tt3228088',
4.4,
48
);

INSERT INTO Ratings VALUES (
'tt3233418',
7.2,
66
);

INSERT INTO Ratings VALUES (
'tt3234084',
4.4,
52
);

INSERT INTO Ratings VALUES (
'tt3236120',
6.7,
60
);

INSERT INTO Ratings VALUES (
'tt3255590',
5.7,
59
);

INSERT INTO Ratings VALUES (
'tt3256226',
4.8,
59
);

INSERT INTO Ratings VALUES (
'tt3260524',
7.8,
87
);

INSERT INTO Ratings VALUES (
'tt3268340',
6.7,
56
);

INSERT INTO Ratings VALUES (
'tt3278540',
5.2,
56
);

INSERT INTO Ratings VALUES (
'tt3282076',
4.5,
55
);

INSERT INTO Ratings VALUES (
'tt3292080',
6.4,
49
);

INSERT INTO Ratings VALUES (
'tt3311020',
4.8,
52
);

INSERT INTO Ratings VALUES (
'tt3316948',
6.1,
72
);

INSERT INTO Ratings VALUES (
'tt3317234',
5.5,
63
);

INSERT INTO Ratings VALUES (
'tt3317696',
7.8,
47
);

INSERT INTO Ratings VALUES (
'tt3319920',
5.6,
64
);

INSERT INTO Ratings VALUES (
'tt3322892',
4.6,
57
);

INSERT INTO Ratings VALUES (
'tt3322898',
5.9,
46
);

INSERT INTO Ratings VALUES (
'tt3332064',
5.7,
66
);

INSERT INTO Ratings VALUES (
'tt3335606',
6.3,
67
);

INSERT INTO Ratings VALUES (
'tt3340446',
6.9,
59
);

INSERT INTO Ratings VALUES (
'tt3349578',
4.7,
51
);

INSERT INTO Ratings VALUES (
'tt3375972',
5.5,
45
);

INSERT INTO Ratings VALUES (
'tt3379352',
8.3,
51
);

INSERT INTO Ratings VALUES (
'tt3385516',
6.8,
80
);

INSERT INTO Ratings VALUES (
'tt3401748',
6.5,
60
);

INSERT INTO Ratings VALUES (
'tt3405236',
6.6,
73
);

INSERT INTO Ratings VALUES (
'tt3410408',
6.8,
58
);

INSERT INTO Ratings VALUES (
'tt3411444',
6.7,
72
);

INSERT INTO Ratings VALUES (
'tt3415992',
6.1,
51
);

INSERT INTO Ratings VALUES (
'tt3416532',
7.4,
76
);

INSERT INTO Ratings VALUES (
'tt3416828',
5.7,
69
);

INSERT INTO Ratings VALUES (
'tt3447364',
7.6,
64
);

INSERT INTO Ratings VALUES (
'tt3451230',
6.3,
63
);

INSERT INTO Ratings VALUES (
'tt3451984',
4.6,
48
);

INSERT INTO Ratings VALUES (
'tt3453964',
6.2,
36
);

INSERT INTO Ratings VALUES (
'tt3458510',
5.1,
53
);

INSERT INTO Ratings VALUES (
'tt3460252',
7.8,
85
);

INSERT INTO Ratings VALUES (
'tt3481000',
4.0,
45
);

INSERT INTO Ratings VALUES (
'tt3481634',
5.2,
59
);

INSERT INTO Ratings VALUES (
'tt3482000',
6.1,
44
);

INSERT INTO Ratings VALUES (
'tt3498820',
7.8,
86
);

INSERT INTO Ratings VALUES (
'tt3501632',
7.9,
86
);

INSERT INTO Ratings VALUES (
'tt3503406',
6.2,
67
);

INSERT INTO Ratings VALUES (
'tt3507138',
5.6,
50
);

INSERT INTO Ratings VALUES (
'tt3511596',
5.1,
47
);

INSERT INTO Ratings VALUES (
'tt3521126',
7.3,
78
);

INSERT INTO Ratings VALUES (
'tt3521164',
7.6,
83
);

INSERT INTO Ratings VALUES (
'tt3547306',
4.9,
53
);

INSERT INTO Ratings VALUES (
'tt3553976',
7.8,
82
);

INSERT INTO Ratings VALUES (
'tt3567666',
4.8,
57
);

INSERT INTO Ratings VALUES (
'tt3569230',
6.9,
75
);

INSERT INTO Ratings VALUES (
'tt3588588',
3.8,
52
);

INSERT INTO Ratings VALUES (
'tt3606752',
6.7,
76
);

INSERT INTO Ratings VALUES (
'tt3606756',
7.5,
83
);

INSERT INTO Ratings VALUES (
'tt3608930',
6.1,
63
);

INSERT INTO Ratings VALUES (
'tt3610576',
3.9,
50
);

INSERT INTO Ratings VALUES (
'tt3614530',
4.2,
55
);

INSERT INTO Ratings VALUES (
'tt3620846',
5.2,
50
);

INSERT INTO Ratings VALUES (
'tt3625516',
3.6,
45
);

INSERT INTO Ratings VALUES (
'tt3650484',
7.6,
54
);

INSERT INTO Ratings VALUES (
'tt3654796',
6.4,
67
);

INSERT INTO Ratings VALUES (
'tt3660770',
7.2,
61
);

INSERT INTO Ratings VALUES (
'tt3661298',
6.2,
55
);

INSERT INTO Ratings VALUES (
'tt3661394',
6.6,
67
);

INSERT INTO Ratings VALUES (
'tt3672120',
5.5,
52
);

INSERT INTO Ratings VALUES (
'tt3685236',
5.2,
67
);

INSERT INTO Ratings VALUES (
'tt3687398',
4.7,
54
);

INSERT INTO Ratings VALUES (
'tt3691740',
6.3,
72
);

INSERT INTO Ratings VALUES (
'tt3700364',
5.7,
43
);

INSERT INTO Ratings VALUES (
'tt3703836',
6.1,
57
);

INSERT INTO Ratings VALUES (
'tt3704416',
5.8,
58
);

INSERT INTO Ratings VALUES (
'tt3707106',
5.3,
59
);

INSERT INTO Ratings VALUES (
'tt3707114',
7.4,
62
);

INSERT INTO Ratings VALUES (
'tt3711510',
5.9,
57
);

INSERT INTO Ratings VALUES (
'tt3715320',
6.6,
69
);

INSERT INTO Ratings VALUES (
'tt3721964',
6.1,
65
);

INSERT INTO Ratings VALUES (
'tt3722070',
6.7,
68
);

INSERT INTO Ratings VALUES (
'tt3722614',
5.3,
59
);

INSERT INTO Ratings VALUES (
'tt3727982',
5.6,
55
);

INSERT INTO Ratings VALUES (
'tt3730510',
5.4,
50
);

INSERT INTO Ratings VALUES (
'tt3732280',
5.5,
52
);

INSERT INTO Ratings VALUES (
'tt3739110',
5.8,
56
);

INSERT INTO Ratings VALUES (
'tt3746298',
4.7,
51
);

INSERT INTO Ratings VALUES (
'tt3746824',
5.8,
55
);

INSERT INTO Ratings VALUES (
'tt3748172',
6.5,
88
);

INSERT INTO Ratings VALUES (
'tt3748440',
5.7,
58
);

INSERT INTO Ratings VALUES (
'tt3748528',
7.8,
85
);

INSERT INTO Ratings VALUES (
'tt3755362',
5.6,
58
);

INSERT INTO Ratings VALUES (
'tt3758172',
6.7,
74
);

INSERT INTO Ratings VALUES (
'tt3766394',
6.6,
65
);

INSERT INTO Ratings VALUES (
'tt3767278',
4.6,
49
);

INSERT INTO Ratings VALUES (
'tt3771536',
6.1,
60
);

INSERT INTO Ratings VALUES (
'tt3774114',
7.3,
78
);

INSERT INTO Ratings VALUES (
'tt3774466',
6.4,
62
);

INSERT INTO Ratings VALUES (
'tt3776826',
6.1,
60
);

INSERT INTO Ratings VALUES (
'tt3778354',
6.7,
44
);

INSERT INTO Ratings VALUES (
'tt3778644',
6.9,
79
);

INSERT INTO Ratings VALUES (
'tt3780500',
6.7,
62
);

INSERT INTO Ratings VALUES (
'tt3799232',
5.9,
73
);

INSERT INTO Ratings VALUES (
'tt3799694',
7.4,
81
);

INSERT INTO Ratings VALUES (
'tt3802576',
6.4,
54
);

INSERT INTO Ratings VALUES (
'tt3804756',
5.0,
39
);

INSERT INTO Ratings VALUES (
'tt3813310',
6.3,
65
);

INSERT INTO Ratings VALUES (
'tt3824412',
5.5,
56
);

INSERT INTO Ratings VALUES (
'tt3829378',
5.8,
59
);

INSERT INTO Ratings VALUES (
'tt3833474',
5.3,
47
);

INSERT INTO Ratings VALUES (
'tt3833480',
6.8,
71
);

INSERT INTO Ratings VALUES (
'tt3835080',
5.1,
64
);

INSERT INTO Ratings VALUES (
'tt3846674',
7.0,
94
);

INSERT INTO Ratings VALUES (
'tt3859272',
6.0,
62
);

INSERT INTO Ratings VALUES (
'tt3860092',
7.3,
52
);

INSERT INTO Ratings VALUES (
'tt3864056',
6.4,
67
);

INSERT INTO Ratings VALUES (
'tt3892172',
7.1,
76
);

INSERT INTO Ratings VALUES (
'tt3896102',
6.2,
57
);

INSERT INTO Ratings VALUES (
'tt3896198',
7.6,
85
);

INSERT INTO Ratings VALUES (
'tt3907584',
6.6,
67
);

INSERT INTO Ratings VALUES (
'tt3957956',
5.1,
56
);

INSERT INTO Ratings VALUES (
'tt3962984',
5.7,
55
);

INSERT INTO Ratings VALUES (
'tt3963816',
5.5,
64
);

INSERT INTO Ratings VALUES (
'tt3967856',
7.3,
92
);

INSERT INTO Ratings VALUES (
'tt3967878',
6.0,
60
);

INSERT INTO Ratings VALUES (
'tt3972110',
3.6,
38
);

INSERT INTO Ratings VALUES (
'tt3977462',
6.3,
60
);

INSERT INTO Ratings VALUES (
'tt3979300',
6.3,
59
);

INSERT INTO Ratings VALUES (
'tt3993886',
6.0,
64
);

INSERT INTO Ratings VALUES (
'tt4000956',
4.9,
48
);

INSERT INTO Ratings VALUES (
'tt4002772',
6.2,
53
);

INSERT INTO Ratings VALUES (
'tt4003440',
6.8,
73
);

INSERT INTO Ratings VALUES (
'tt4007558',
3.7,
45
);

INSERT INTO Ratings VALUES (
'tt4008566',
4.6,
46
);

INSERT INTO Ratings VALUES (
'tt4016934',
8.1,
81
);

INSERT INTO Ratings VALUES (
'tt4019560',
4.4,
57
);

INSERT INTO Ratings VALUES (
'tt4034208',
6.1,
49
);

INSERT INTO Ratings VALUES (
'tt4034228',
7.8,
81
);

INSERT INTO Ratings VALUES (
'tt4034452',
6.5,
61
);

INSERT INTO Ratings VALUES (
'tt4052050',
5.3,
58
);

INSERT INTO Ratings VALUES (
'tt4068576',
7.3,
71
);

INSERT INTO Ratings VALUES (
'tt4072296',
4.6,
40
);

INSERT INTO Ratings VALUES (
'tt4083572',
4.3,
54
);

INSERT INTO Ratings VALUES (
'tt4086018',
5.6,
56
);

INSERT INTO Ratings VALUES (
'tt4102722',
5.4,
54
);

INSERT INTO Ratings VALUES (
'tt4106514',
5.8,
63
);

INSERT INTO Ratings VALUES (
'tt4109632',
6.5,
49
);

INSERT INTO Ratings VALUES (
'tt4110568',
7.0,
59
);

INSERT INTO Ratings VALUES (
'tt4111956',
3.9,
47
);

INSERT INTO Ratings VALUES (
'tt4118606',
4.3,
53
);

INSERT INTO Ratings VALUES (
'tt4126304',
7.3,
69
);

INSERT INTO Ratings VALUES (
'tt4126476',
5.3,
71
);

INSERT INTO Ratings VALUES (
'tt4129428',
6.4,
71
);

INSERT INTO Ratings VALUES (
'tt4136084',
6.8,
69
);

INSERT INTO Ratings VALUES (
'tt4139588',
6.3,
73
);

INSERT INTO Ratings VALUES (
'tt4144190',
5.9,
67
);

INSERT INTO Ratings VALUES (
'tt4144332',
6.0,
65
);

INSERT INTO Ratings VALUES (
'tt4151192',
4.2,
49
);

INSERT INTO Ratings VALUES (
'tt4154664',
6.7,
81
);

INSERT INTO Ratings VALUES (
'tt4154756',
8.4,
90
);

INSERT INTO Ratings VALUES (
'tt4154796',
8.4,
90
);

INSERT INTO Ratings VALUES (
'tt4172498',
2.9,
39
);

INSERT INTO Ratings VALUES (
'tt4174926',
5.7,
38
);

INSERT INTO Ratings VALUES (
'tt4180290',
7.6,
46
);

INSERT INTO Ratings VALUES (
'tt4180560',
6.1,
65
);

INSERT INTO Ratings VALUES (
'tt4181052',
5.9,
56
);

INSERT INTO Ratings VALUES (
'tt4191054',
5.8,
62
);

INSERT INTO Ratings VALUES (
'tt4196848',
7.6,
73
);

INSERT INTO Ratings VALUES (
'tt4205718',
3.5,
53
);

INSERT INTO Ratings VALUES (
'tt4210080',
6.4,
59
);

INSERT INTO Ratings VALUES (
'tt4213806',
5.9,
52
);

INSERT INTO Ratings VALUES (
'tt4225622',
6.4,
71
);

INSERT INTO Ratings VALUES (
'tt4230700',
5.4,
56
);

INSERT INTO Ratings VALUES (
'tt4257940',
6.1,
59
);

INSERT INTO Ratings VALUES (
'tt4258698',
6.3,
63
);

INSERT INTO Ratings VALUES (
'tt4266076',
6.0,
65
);

INSERT INTO Ratings VALUES (
'tt4267026',
6.4,
65
);

INSERT INTO Ratings VALUES (
'tt4269118',
5.4,
53
);

INSERT INTO Ratings VALUES (
'tt4270516',
6.7,
66
);

INSERT INTO Ratings VALUES (
'tt4273292',
6.8,
68
);

INSERT INTO Ratings VALUES (
'tt4293752',
7.0,
56
);

INSERT INTO Ratings VALUES (
'tt4296186',
4.9,
68
);

INSERT INTO Ratings VALUES (
'tt4323594',
7.3,
61
);

INSERT INTO Ratings VALUES (
'tt4327752',
5.6,
55
);

INSERT INTO Ratings VALUES (
'tt4329242',
5.9,
58
);

INSERT INTO Ratings VALUES (
'tt4332232',
6.5,
73
);

INSERT INTO Ratings VALUES (
'tt4333674',
7.0,
57
);

INSERT INTO Ratings VALUES (
'tt4338154',
5.5,
46
);

INSERT INTO Ratings VALUES (
'tt4341582',
7.4,
68
);

INSERT INTO Ratings VALUES (
'tt4353250',
7.2,
70
);

INSERT INTO Ratings VALUES (
'tt4354740',
6.3,
53
);

INSERT INTO Ratings VALUES (
'tt4357394',
5.8,
67
);

INSERT INTO Ratings VALUES (
'tt4364194',
7.6,
78
);

INSERT INTO Ratings VALUES (
'tt4379728',
5.9,
62
);

INSERT INTO Ratings VALUES (
'tt4382824',
5.2,
58
);

INSERT INTO Ratings VALUES (
'tt4384148',
4.2,
39
);

INSERT INTO Ratings VALUES (
'tt4397342',
6.3,
52
);

INSERT INTO Ratings VALUES (
'tt4400994',
6.3,
60
);

INSERT INTO Ratings VALUES (
'tt4411584',
6.6,
64
);

INSERT INTO Ratings VALUES (
'tt4413338',
5.4,
52
);

INSERT INTO Ratings VALUES (
'tt4426464',
4.9,
51
);

INSERT INTO Ratings VALUES (
'tt4430136',
7.2,
63
);

INSERT INTO Ratings VALUES (
'tt4430212',
8.2,
72
);

INSERT INTO Ratings VALUES (
'tt4432804',
2.8,
38
);

INSERT INTO Ratings VALUES (
'tt4434004',
7.7,
80
);

INSERT INTO Ratings VALUES (
'tt4442130',
4.8,
53
);

INSERT INTO Ratings VALUES (
'tt4454078',
3.7,
45
);

INSERT INTO Ratings VALUES (
'tt4464394',
4.2,
53
);

INSERT INTO Ratings VALUES (
'tt4466894',
5.5,
53
);

INSERT INTO Ratings VALUES (
'tt4486728',
5.8,
45
);

INSERT INTO Ratings VALUES (
'tt4489160',
6.3,
51
);

INSERT INTO Ratings VALUES (
'tt4497338',
4.9,
50
);

INSERT INTO Ratings VALUES (
'tt4499228',
4.9,
50
);

INSERT INTO Ratings VALUES (
'tt4500196',
7.3,
44
);

INSERT INTO Ratings VALUES (
'tt4503906',
5.9,
55
);

INSERT INTO Ratings VALUES (
'tt4513674',
6.6,
69
);

INSERT INTO Ratings VALUES (
'tt4518260',
5.3,
51
);

INSERT INTO Ratings VALUES (
'tt4520988',
6.8,
78
);

INSERT INTO Ratings VALUES (
'tt4528386',
5.6,
41
);

INSERT INTO Ratings VALUES (
'tt4532818',
6.7,
52
);

INSERT INTO Ratings VALUES (
'tt4535650',
5.1,
57
);

INSERT INTO Ratings VALUES (
'tt4540710',
7.5,
76
);

INSERT INTO Ratings VALUES (
'tt4550098',
7.4,
81
);

INSERT INTO Ratings VALUES (
'tt4550420',
6.1,
56
);

INSERT INTO Ratings VALUES (
'tt4559006',
5.9,
59
);

INSERT INTO Ratings VALUES (
'tt4560008',
6.9,
65
);

INSERT INTO Ratings VALUES (
'tt4560436',
6.1,
72
);

INSERT INTO Ratings VALUES (
'tt4565520',
4.8,
59
);

INSERT INTO Ratings VALUES (
'tt4569494',
7.4,
45
);

INSERT INTO Ratings VALUES (
'tt4572792',
6.6,
70
);

INSERT INTO Ratings VALUES (
'tt4573516',
5.9,
63
);

INSERT INTO Ratings VALUES (
'tt4575576',
7.2,
75
);

INSERT INTO Ratings VALUES (
'tt4575782',
5.0,
35
);

INSERT INTO Ratings VALUES (
'tt4578118',
4.9,
58
);

INSERT INTO Ratings VALUES (
'tt4587366',
5.6,
61
);

INSERT INTO Ratings VALUES (
'tt4594834',
5.9,
60
);

INSERT INTO Ratings VALUES (
'tt4594836',
5.8,
51
);

INSERT INTO Ratings VALUES (
'tt4601180',
7.6,
48
);

INSERT INTO Ratings VALUES (
'tt4607228',
5.2,
44
);

INSERT INTO Ratings VALUES (
'tt4610378',
6.9,
82
);

INSERT INTO Ratings VALUES (
'tt4614612',
6.5,
60
);

INSERT INTO Ratings VALUES (
'tt4616250',
2.9,
46
);

INSERT INTO Ratings VALUES (
'tt4623856',
5.7,
55
);

INSERT INTO Ratings VALUES (
'tt4624424',
6.8,
73
);

INSERT INTO Ratings VALUES (
'tt4628812',
6.5,
39
);

INSERT INTO Ratings VALUES (
'tt4629266',
7.2,
60
);

INSERT INTO Ratings VALUES (
'tt4630444',
6.2,
58
);

INSERT INTO Ratings VALUES (
'tt4632316',
8.3,
63
);

INSERT INTO Ratings VALUES (
'tt4633690',
7.3,
75
);

INSERT INTO Ratings VALUES (
'tt4651410',
4.6,
58
);

INSERT INTO Ratings VALUES (
'tt4661798',
5.9,
59
);

INSERT INTO Ratings VALUES (
'tt4662420',
5.8,
59
);

INSERT INTO Ratings VALUES (
'tt4666726',
6.9,
65
);

INSERT INTO Ratings VALUES (
'tt4669186',
6.0,
62
);

INSERT INTO Ratings VALUES (
'tt4669264',
6.5,
66
);

INSERT INTO Ratings VALUES (
'tt4669296',
6.6,
64
);

INSERT INTO Ratings VALUES (
'tt4669986',
7.0,
70
);

INSERT INTO Ratings VALUES (
'tt4677924',
4.2,
48
);

INSERT INTO Ratings VALUES (
'tt4678200',
7.3,
44
);

INSERT INTO Ratings VALUES (
'tt4682786',
6.8,
75
);

INSERT INTO Ratings VALUES (
'tt4685554',
6.0,
54
);

INSERT INTO Ratings VALUES (
'tt4686108',
5.5,
51
);

INSERT INTO Ratings VALUES (
'tt4686844',
7.3,
75
);

INSERT INTO Ratings VALUES (
'tt4686862',
5.6,
59
);

INSERT INTO Ratings VALUES (
'tt4687108',
5.5,
66
);

INSERT INTO Ratings VALUES (
'tt4693358',
6.2,
65
);

INSERT INTO Ratings VALUES (
'tt4694544',
5.3,
63
);

INSERT INTO Ratings VALUES (
'tt4695012',
6.1,
72
);

INSERT INTO Ratings VALUES (
'tt4698684',
7.8,
80
);

INSERT INTO Ratings VALUES (
'tt4703048',
6.2,
65
);

INSERT INTO Ratings VALUES (
'tt4712076',
6.1,
56
);

INSERT INTO Ratings VALUES (
'tt4718728',
6.2,
41
);

INSERT INTO Ratings VALUES (
'tt4729430',
8.2,
78
);

INSERT INTO Ratings VALUES (
'tt4733736',
5.8,
51
);

INSERT INTO Ratings VALUES (
'tt4738360',
6.1,
60
);

INSERT INTO Ratings VALUES (
'tt4742274',
5.7,
41
);

INSERT INTO Ratings VALUES (
'tt4743226',
3.2,
50
);

INSERT INTO Ratings VALUES (
'tt4758646',
6.0,
69
);

INSERT INTO Ratings VALUES (
'tt4762824',
5.5,
56
);

INSERT INTO Ratings VALUES (
'tt4763168',
4.4,
55
);

INSERT INTO Ratings VALUES (
'tt4769824',
7.8,
68
);

INSERT INTO Ratings VALUES (
'tt4769836',
5.7,
66
);

INSERT INTO Ratings VALUES (
'tt4776998',
6.1,
68
);

INSERT INTO Ratings VALUES (
'tt4777008',
6.6,
76
);

INSERT INTO Ratings VALUES (
'tt4786282',
6.3,
74
);

INSERT INTO Ratings VALUES (
'tt4796122',
3.7,
51
);

INSERT INTO Ratings VALUES (
'tt4797436',
5.1,
53
);

INSERT INTO Ratings VALUES (
'tt4799064',
6.3,
66
);

INSERT INTO Ratings VALUES (
'tt4801232',
6.2,
53
);

INSERT INTO Ratings VALUES (
'tt4807408',
7.3,
70
);

INSERT INTO Ratings VALUES (
'tt4815122',
6.2,
68
);

INSERT INTO Ratings VALUES (
'tt4824302',
5.7,
69
);

INSERT INTO Ratings VALUES (
'tt4827558',
5.7,
68
);

INSERT INTO Ratings VALUES (
'tt4837126',
6.3,
54
);

INSERT INTO Ratings VALUES (
'tt4838334',
4.4,
46
);

INSERT INTO Ratings VALUES (
'tt4842270',
4.8,
45
);

INSERT INTO Ratings VALUES (
'tt4842646',
6.1,
55
);

INSERT INTO Ratings VALUES (
'tt4844148',
6.5,
60
);

INSERT INTO Ratings VALUES (
'tt4846232',
7.3,
77
);

INSERT INTO Ratings VALUES (
'tt4846340',
7.8,
83
);

INSERT INTO Ratings VALUES (
'tt4853102',
6.4,
70
);

INSERT INTO Ratings VALUES (
'tt4855748',
5.3,
57
);

INSERT INTO Ratings VALUES (
'tt4857264',
8.0,
83
);

INSERT INTO Ratings VALUES (
'tt4858674',
6.2,
74
);

INSERT INTO Ratings VALUES (
'tt4863386',
7.0,
47
);

INSERT INTO Ratings VALUES (
'tt4867110',
2.8,
48
);

INSERT INTO Ratings VALUES (
'tt4872078',
6.0,
58
);

INSERT INTO Ratings VALUES (
'tt4876036',
6.3,
46
);

INSERT INTO Ratings VALUES (
'tt4878482',
6.5,
83
);

INSERT INTO Ratings VALUES (
'tt4882376',
7.2,
67
);

INSERT INTO Ratings VALUES (
'tt4898730',
3.7,
52
);

INSERT INTO Ratings VALUES (
'tt4900018',
7.1,
58
);

INSERT INTO Ratings VALUES (
'tt4900716',
7.7,
84
);

INSERT INTO Ratings VALUES (
'tt4902716',
5.0,
50
);

INSERT INTO Ratings VALUES (
'tt4902904',
6.3,
55
);

INSERT INTO Ratings VALUES (
'tt4908644',
8.3,
89
);

INSERT INTO Ratings VALUES (
'tt4911288',
4.4,
44
);

INSERT INTO Ratings VALUES (
'tt4911408',
5.9,
51
);

INSERT INTO Ratings VALUES (
'tt4911996',
6.6,
61
);

INSERT INTO Ratings VALUES (
'tt4924942',
6.4,
65
);

INSERT INTO Ratings VALUES (
'tt4925292',
7.4,
81
);

INSERT INTO Ratings VALUES (
'tt4930176',
6.2,
37
);

INSERT INTO Ratings VALUES (
'tt4935334',
5.9,
64
);

INSERT INTO Ratings VALUES (
'tt4935462',
7.5,
64
);

INSERT INTO Ratings VALUES (
'tt4935746',
5.6,
59
);

INSERT INTO Ratings VALUES (
'tt4936176',
5.8,
57
);

INSERT INTO Ratings VALUES (
'tt4936450',
7.3,
72
);

INSERT INTO Ratings VALUES (
'tt4940416',
5.8,
53
);

INSERT INTO Ratings VALUES (
'tt4943322',
6.4,
64
);

INSERT INTO Ratings VALUES (
'tt4944352',
7.3,
63
);

INSERT INTO Ratings VALUES (
'tt4947738',
5.3,
42
);

INSERT INTO Ratings VALUES (
'tt4948040',
6.1,
51
);

INSERT INTO Ratings VALUES (
'tt4952376',
7.4,
54
);

INSERT INTO Ratings VALUES (
'tt4971344',
6.9,
72
);

INSERT INTO Ratings VALUES (
'tt4971408',
4.9,
56
);

INSERT INTO Ratings VALUES (
'tt4971824',
6.9,
53
);

INSERT INTO Ratings VALUES (
'tt4972062',
6.7,
66
);

INSERT INTO Ratings VALUES (
'tt4974684',
6.7,
52
);

INSERT INTO Ratings VALUES (
'tt4975920',
5.9,
62
);

INSERT INTO Ratings VALUES (
'tt4978274',
6.1,
59
);

INSERT INTO Ratings VALUES (
'tt4981636',
6.1,
62
);

INSERT INTO Ratings VALUES (
'tt4984868',
5.4,
38
);

INSERT INTO Ratings VALUES (
'tt4986098',
4.8,
63
);

INSERT INTO Ratings VALUES (
'tt4986134',
6.7,
66
);

INSERT INTO Ratings VALUES (
'tt4995776',
6.6,
75
);

INSERT INTO Ratings VALUES (
'tt5000698',
5.0,
45
);

INSERT INTO Ratings VALUES (
'tt5001754',
5.9,
82
);

INSERT INTO Ratings VALUES (
'tt5007774',
6.2,
33
);

INSERT INTO Ratings VALUES (
'tt5013782',
5.8,
47
);

INSERT INTO Ratings VALUES (
'tt5022702',
6.6,
73
);

INSERT INTO Ratings VALUES (
'tt5026484',
5.4,
39
);

INSERT INTO Ratings VALUES (
'tt5028340',
6.6,
73
);

INSERT INTO Ratings VALUES (
'tt5034122',
5.4,
52
);

INSERT INTO Ratings VALUES (
'tt5034266',
6.9,
65
);

INSERT INTO Ratings VALUES (
'tt5036924',
5.8,
37
);

INSERT INTO Ratings VALUES (
'tt5037840',
4.0,
54
);

INSERT INTO Ratings VALUES (
'tt5061570',
5.5,
46
);

INSERT INTO Ratings VALUES (
'tt5071886',
6.1,
65
);

INSERT INTO Ratings VALUES (
'tt5074352',
8.3,
97
);

INSERT INTO Ratings VALUES (
'tt5074552',
5.4,
37
);

INSERT INTO Ratings VALUES (
'tt5076150',
5.1,
45
);

INSERT INTO Ratings VALUES (
'tt5080254',
5.2,
32
);

INSERT INTO Ratings VALUES (
'tt5085924',
5.5,
62
);

INSERT INTO Ratings VALUES (
'tt5093026',
7.2,
75
);

INSERT INTO Ratings VALUES (
'tt5094192',
6.5,
51
);

INSERT INTO Ratings VALUES (
'tt5095030',
7.0,
81
);

INSERT INTO Ratings VALUES (
'tt5096470',
5.6,
52
);

INSERT INTO Ratings VALUES (
'tt5104604',
7.8,
80
);

INSERT INTO Ratings VALUES (
'tt5108476',
4.2,
50
);

INSERT INTO Ratings VALUES (
'tt5112692',
5.6,
42
);

INSERT INTO Ratings VALUES (
'tt5114154',
6.4,
58
);

INSERT INTO Ratings VALUES (
'tt5115546',
4.9,
50
);

INSERT INTO Ratings VALUES (
'tt5116302',
7.9,
76
);

INSERT INTO Ratings VALUES (
'tt5117484',
3.5,
41
);

INSERT INTO Ratings VALUES (
'tt5122374',
5.4,
50
);

INSERT INTO Ratings VALUES (
'tt5126540',
3.1,
61
);

INSERT INTO Ratings VALUES (
'tt5128826',
5.2,
50
);

INSERT INTO Ratings VALUES (
'tt5140248',
7.4,
52
);

INSERT INTO Ratings VALUES (
'tt5153236',
6.1,
59
);

INSERT INTO Ratings VALUES (
'tt5155780',
6.2,
72
);

INSERT INTO Ratings VALUES (
'tt5156746',
6.2,
55
);

INSERT INTO Ratings VALUES (
'tt5163286',
6.6,
50
);

INSERT INTO Ratings VALUES (
'tt5168832',
5.5,
66
);

INSERT INTO Ratings VALUES (
'tt5176486',
6.0,
43
);

INSERT INTO Ratings VALUES (
'tt5176580',
6.2,
54
);

INSERT INTO Ratings VALUES (
'tt5179598',
5.6,
62
);

INSERT INTO Ratings VALUES (
'tt5186714',
7.7,
72
);

INSERT INTO Ratings VALUES (
'tt5197544',
5.4,
58
);

INSERT INTO Ratings VALUES (
'tt5205210',
6.0,
51
);

INSERT INTO Ratings VALUES (
'tt5206260',
6.4,
80
);

INSERT INTO Ratings VALUES (
'tt5207116',
5.2,
43
);

INSERT INTO Ratings VALUES (
'tt5207846',
7.4,
43
);

INSERT INTO Ratings VALUES (
'tt5208216',
6.2,
63
);

INSERT INTO Ratings VALUES (
'tt5208252',
6.6,
69
);

INSERT INTO Ratings VALUES (
'tt5215952',
7.4,
75
);

INSERT INTO Ratings VALUES (
'tt5222768',
6.9,
76
);

INSERT INTO Ratings VALUES (
'tt5224012',
6.7,
44
);

INSERT INTO Ratings VALUES (
'tt5246700',
5.1,
60
);

INSERT INTO Ratings VALUES (
'tt5246902',
4.5,
50
);

INSERT INTO Ratings VALUES (
'tt5247022',
7.3,
73
);

INSERT INTO Ratings VALUES (
'tt5254610',
5.8,
61
);

INSERT INTO Ratings VALUES (
'tt5259822',
5.1,
59
);

INSERT INTO Ratings VALUES (
'tt5260026',
5.0,
54
);

INSERT INTO Ratings VALUES (
'tt5266668',
2.9,
44
);

INSERT INTO Ratings VALUES (
'tt5267472',
5.5,
57
);

INSERT INTO Ratings VALUES (
'tt5268348',
6.7,
57
);

INSERT INTO Ratings VALUES (
'tt5275828',
7.0,
64
);

INSERT INTO Ratings VALUES (
'tt5275866',
7.3,
49
);

INSERT INTO Ratings VALUES (
'tt5278462',
7.1,
68
);

INSERT INTO Ratings VALUES (
'tt5278506',
7.4,
70
);

INSERT INTO Ratings VALUES (
'tt5281700',
5.4,
47
);

INSERT INTO Ratings VALUES (
'tt5294518',
5.8,
64
);

INSERT INTO Ratings VALUES (
'tt5297578',
5.6,
49
);

INSERT INTO Ratings VALUES (
'tt5304992',
6.5,
69
);

INSERT INTO Ratings VALUES (
'tt5305246',
6.1,
53
);

INSERT INTO Ratings VALUES (
'tt5316540',
5.7,
65
);

INSERT INTO Ratings VALUES (
'tt5317732',
8.0,
74
);

INSERT INTO Ratings VALUES (
'tt5323662',
8.2,
78
);

INSERT INTO Ratings VALUES (
'tt5325684',
3.4,
41
);

INSERT INTO Ratings VALUES (
'tt5330986',
6.8,
40
);

INSERT INTO Ratings VALUES (
'tt5335314',
8.1,
63
);

INSERT INTO Ratings VALUES (
'tt5339586',
4.5,
40
);

INSERT INTO Ratings VALUES (
'tt5340882',
3.4,
48
);

INSERT INTO Ratings VALUES (
'tt5344794',
3.0,
49
);

INSERT INTO Ratings VALUES (
'tt5360996',
5.9,
63
);

INSERT INTO Ratings VALUES (
'tt5371168',
6.8,
60
);

INSERT INTO Ratings VALUES (
'tt5377564',
7.4,
59
);

INSERT INTO Ratings VALUES (
'tt5397194',
6.1,
69
);

INSERT INTO Ratings VALUES (
'tt5427194',
6.5,
60
);

INSERT INTO Ratings VALUES (
'tt5439796',
7.0,
77
);

INSERT INTO Ratings VALUES (
'tt5442456',
5.8,
64
);

INSERT INTO Ratings VALUES (
'tt5442884',
5.7,
39
);

INSERT INTO Ratings VALUES (
'tt5451244',
6.5,
63
);

INSERT INTO Ratings VALUES (
'tt5451640',
4.3,
44
);

INSERT INTO Ratings VALUES (
'tt5456546',
3.7,
51
);

INSERT INTO Ratings VALUES (
'tt5457484',
3.3,
45
);

INSERT INTO Ratings VALUES (
'tt5460548',
6.5,
48
);

INSERT INTO Ratings VALUES (
'tt5462602',
7.5,
79
);

INSERT INTO Ratings VALUES (
'tt5467554',
6.0,
62
);

INSERT INTO Ratings VALUES (
'tt5472374',
6.1,
59
);

INSERT INTO Ratings VALUES (
'tt5474042',
4.7,
55
);

INSERT INTO Ratings VALUES (
'tt5474644',
6.5,
55
);

INSERT INTO Ratings VALUES (
'tt5478478',
7.2,
76
);

INSERT INTO Ratings VALUES (
'tt5501104',
7.0,
68
);

INSERT INTO Ratings VALUES (
'tt5507934',
3.8,
33
);

INSERT INTO Ratings VALUES (
'tt5510970',
7.3,
66
);

INSERT INTO Ratings VALUES (
'tt5512872',
5.6,
54
);

INSERT INTO Ratings VALUES (
'tt5519340',
6.3,
76
);

INSERT INTO Ratings VALUES (
'tt5519566',
7.1,
56
);

INSERT INTO Ratings VALUES (
'tt5521550',
5.5,
55
);

INSERT INTO Ratings VALUES (
'tt5523010',
5.6,
65
);

INSERT INTO Ratings VALUES (
'tt5524630',
5.2,
49
);

INSERT INTO Ratings VALUES (
'tt5536610',
7.2,
67
);

INSERT INTO Ratings VALUES (
'tt5539054',
4.7,
52
);

INSERT INTO Ratings VALUES (
'tt5541002',
6.8,
57
);

INSERT INTO Ratings VALUES (
'tt5541240',
6.7,
69
);

INSERT INTO Ratings VALUES (
'tt5556054',
5.1,
52
);

INSERT INTO Ratings VALUES (
'tt5565254',
4.4,
45
);

INSERT INTO Ratings VALUES (
'tt5566790',
6.7,
75
);

INSERT INTO Ratings VALUES (
'tt5577494',
6.5,
60
);

INSERT INTO Ratings VALUES (
'tt5579356',
3.4,
37
);

INSERT INTO Ratings VALUES (
'tt5579982',
5.6,
46
);

INSERT INTO Ratings VALUES (
'tt5580390',
7.3,
82
);

INSERT INTO Ratings VALUES (
'tt5580392',
5.9,
66
);

INSERT INTO Ratings VALUES (
'tt5580536',
4.0,
53
);

INSERT INTO Ratings VALUES (
'tt5592248',
6.3,
70
);

INSERT INTO Ratings VALUES (
'tt5595168',
6.7,
67
);

INSERT INTO Ratings VALUES (
'tt5598110',
6.1,
52
);

INSERT INTO Ratings VALUES (
'tt5598216',
7.2,
85
);

INSERT INTO Ratings VALUES (
'tt5598292',
5.2,
60
);

INSERT INTO Ratings VALUES (
'tt5608972',
2.6,
38
);

INSERT INTO Ratings VALUES (
'tt5609150',
9.7,
68
);

INSERT INTO Ratings VALUES (
'tt5610626',
5.3,
53
);

INSERT INTO Ratings VALUES (
'tt5616176',
6.3,
62
);

INSERT INTO Ratings VALUES (
'tt5616294',
5.7,
61
);

INSERT INTO Ratings VALUES (
'tt5622412',
4.7,
54
);

INSERT INTO Ratings VALUES (
'tt5629084',
7.6,
56
);

INSERT INTO Ratings VALUES (
'tt5629524',
4.5,
53
);

INSERT INTO Ratings VALUES (
'tt5638642',
6.4,
83
);

INSERT INTO Ratings VALUES (
'tt5639898',
5.3,
53
);

INSERT INTO Ratings VALUES (
'tt5640450',
6.3,
74
);

INSERT INTO Ratings VALUES (
'tt5649144',
7.6,
77
);

INSERT INTO Ratings VALUES (
'tt5655222',
6.5,
63
);

INSERT INTO Ratings VALUES (
'tt5666304',
5.8,
64
);

INSERT INTO Ratings VALUES (
'tt5667482',
1.6,
38
);

INSERT INTO Ratings VALUES (
'tt5673714',
4.1,
45
);

INSERT INTO Ratings VALUES (
'tt5687040',
5.5,
53
);

INSERT INTO Ratings VALUES (
'tt5687270',
5.7,
53
);

INSERT INTO Ratings VALUES (
'tt5688868',
5.0,
53
);

INSERT INTO Ratings VALUES (
'tt5688932',
6.9,
73
);

INSERT INTO Ratings VALUES (
'tt5688996',
6.3,
64
);

INSERT INTO Ratings VALUES (
'tt5689068',
4.8,
57
);

INSERT INTO Ratings VALUES (
'tt5692390',
5.8,
60
);

INSERT INTO Ratings VALUES (
'tt5696326',
6.1,
54
);

INSERT INTO Ratings VALUES (
'tt5698568',
6.5,
56
);

INSERT INTO Ratings VALUES (
'tt5700672',
7.6,
81
);

INSERT INTO Ratings VALUES (
'tt5702446',
5.8,
50
);

INSERT INTO Ratings VALUES (
'tt5704748',
6.6,
70
);

INSERT INTO Ratings VALUES (
'tt5704912',
5.6,
51
);

INSERT INTO Ratings VALUES (
'tt5710042',
4.2,
37
);

INSERT INTO Ratings VALUES (
'tt5710514',
6.9,
70
);

INSERT INTO Ratings VALUES (
'tt5714320',
6.4,
51
);

INSERT INTO Ratings VALUES (
'tt5715066',
5.9,
64
);

INSERT INTO Ratings VALUES (
'tt5715874',
7.0,
76
);

INSERT INTO Ratings VALUES (
'tt5717492',
5.8,
58
);

INSERT INTO Ratings VALUES (
'tt5719700',
5.8,
67
);

INSERT INTO Ratings VALUES (
'tt5723286',
6.4,
79
);

INSERT INTO Ratings VALUES (
'tt5723774',
6.8,
57
);

INSERT INTO Ratings VALUES (
'tt5727208',
7.4,
80
);

INSERT INTO Ratings VALUES (
'tt5737862',
6.4,
58
);

INSERT INTO Ratings VALUES (
'tt5740806',
4.8,
48
);

INSERT INTO Ratings VALUES (
'tt5741304',
5.4,
58
);

INSERT INTO Ratings VALUES (
'tt5742374',
6.7,
74
);

INSERT INTO Ratings VALUES (
'tt5743858',
5.7,
41
);

INSERT INTO Ratings VALUES (
'tt5755912',
6.6,
52
);

INSERT INTO Ratings VALUES (
'tt5770430',
5.2,
58
);

INSERT INTO Ratings VALUES (
'tt5770620',
6.1,
54
);

INSERT INTO Ratings VALUES (
'tt5773986',
7.0,
61
);

INSERT INTO Ratings VALUES (
'tt5774062',
6.5,
66
);

INSERT INTO Ratings VALUES (
'tt5783956',
6.4,
75
);

INSERT INTO Ratings VALUES (
'tt5785116',
5.6,
50
);

INSERT INTO Ratings VALUES (
'tt5788462',
5.7,
54
);

INSERT INTO Ratings VALUES (
'tt5789976',
5.6,
61
);

INSERT INTO Ratings VALUES (
'tt5792656',
5.4,
59
);

INSERT INTO Ratings VALUES (
'tt5795086',
5.4,
55
);

INSERT INTO Ratings VALUES (
'tt5804412',
6.3,
58
);

INSERT INTO Ratings VALUES (
'tt5809020',
5.2,
45
);

INSERT INTO Ratings VALUES (
'tt5813366',
5.2,
61
);

INSERT INTO Ratings VALUES (
'tt5814408',
5.0,
40
);

INSERT INTO Ratings VALUES (
'tt5816374',
6.6,
63
);

INSERT INTO Ratings VALUES (
'tt5817548',
5.3,
43
);

INSERT INTO Ratings VALUES (
'tt5818722',
6.5,
47
);

INSERT INTO Ratings VALUES (
'tt5825380',
6.2,
65
);

INSERT INTO Ratings VALUES (
'tt5826432',
6.0,
68
);

INSERT INTO Ratings VALUES (
'tt5827360',
5.7,
45
);

INSERT INTO Ratings VALUES (
'tt5827790',
6.1,
59
);

INSERT INTO Ratings VALUES (
'tt5829032',
4.4,
48
);

INSERT INTO Ratings VALUES (
'tt5829040',
5.3,
57
);

INSERT INTO Ratings VALUES (
'tt5831402',
5.1,
57
);

INSERT INTO Ratings VALUES (
'tt5834760',
5.8,
64
);

INSERT INTO Ratings VALUES (
'tt5834854',
4.5,
53
);

INSERT INTO Ratings VALUES (
'tt5843876',
6.3,
64
);

INSERT INTO Ratings VALUES (
'tt5848272',
7.0,
79
);

INSERT INTO Ratings VALUES (
'tt5848416',
6.5,
52
);

INSERT INTO Ratings VALUES (
'tt5851786',
5.6,
51
);

INSERT INTO Ratings VALUES (
'tt5862166',
4.8,
57
);

INSERT INTO Ratings VALUES (
'tt5862312',
6.2,
81
);

INSERT INTO Ratings VALUES (
'tt5865326',
6.3,
71
);

INSERT INTO Ratings VALUES (
'tt5881528',
5.5,
57
);

INSERT INTO Ratings VALUES (
'tt5884230',
6.5,
65
);

INSERT INTO Ratings VALUES (
'tt5884234',
5.0,
58
);

INSERT INTO Ratings VALUES (
'tt5884960',
8.4,
74
);

INSERT INTO Ratings VALUES (
'tt5886440',
6.7,
68
);

INSERT INTO Ratings VALUES (
'tt5886842',
7.7,
44
);

INSERT INTO Ratings VALUES (
'tt5889204',
5.9,
54
);

INSERT INTO Ratings VALUES (
'tt5891626',
7.3,
56
);

INSERT INTO Ratings VALUES (
'tt5893332',
5.3,
62
);

INSERT INTO Ratings VALUES (
'tt5895028',
8.2,
76
);

INSERT INTO Ratings VALUES (
'tt5895892',
5.5,
53
);

INSERT INTO Ratings VALUES (
'tt5902484',
5.8,
42
);

INSERT INTO Ratings VALUES (
'tt5913798',
4.1,
55
);

INSERT INTO Ratings VALUES (
'tt5914996',
7.3,
64
);

INSERT INTO Ratings VALUES (
'tt5929654',
5.2,
55
);

INSERT INTO Ratings VALUES (
'tt5929754',
6.8,
69
);

INSERT INTO Ratings VALUES (
'tt5929776',
8.2,
74
);

INSERT INTO Ratings VALUES (
'tt5946128',
7.4,
66
);

INSERT INTO Ratings VALUES (
'tt5946668',
3.7,
47
);

INSERT INTO Ratings VALUES (
'tt5952332',
6.9,
69
);

INSERT INTO Ratings VALUES (
'tt5956100',
5.9,
72
);

INSERT INTO Ratings VALUES (
'tt5959952',
7.5,
58
);

INSERT INTO Ratings VALUES (
'tt5960374',
5.9,
62
);

INSERT INTO Ratings VALUES (
'tt5962210',
6.6,
70
);

INSERT INTO Ratings VALUES (
'tt5968274',
6.7,
75
);

INSERT INTO Ratings VALUES (
'tt5969180',
5.1,
51
);

INSERT INTO Ratings VALUES (
'tt5978822',
5.9,
54
);

INSERT INTO Ratings VALUES (
'tt5985288',
7.1,
57
);

INSERT INTO Ratings VALUES (
'tt5985820',
5.4,
46
);

INSERT INTO Ratings VALUES (
'tt5989218',
6.9,
68
);

INSERT INTO Ratings VALUES (
'tt5990066',
5.6,
56
);

INSERT INTO Ratings VALUES (
'tt5997666',
5.1,
55
);

INSERT INTO Ratings VALUES (
'tt5998744',
5.2,
29
);

INSERT INTO Ratings VALUES (
'tt5999530',
6.2,
54
);

INSERT INTO Ratings VALUES (
'tt6003368',
4.3,
58
);

INSERT INTO Ratings VALUES (
'tt6009140',
6.1,
55
);

INSERT INTO Ratings VALUES (
'tt6012380',
6.6,
60
);

INSERT INTO Ratings VALUES (
'tt6014472',
4.6,
53
);

INSERT INTO Ratings VALUES (
'tt6016744',
7.3,
83
);

INSERT INTO Ratings VALUES (
'tt6018306',
6.9,
67
);

INSERT INTO Ratings VALUES (
'tt6021694',
5.4,
37
);

INSERT INTO Ratings VALUES (
'tt6032076',
7.1,
73
);

INSERT INTO Ratings VALUES (
'tt6035292',
3.6,
50
);

INSERT INTO Ratings VALUES (
'tt6045466',
6.1,
59
);

INSERT INTO Ratings VALUES (
'tt6048930',
5.4,
57
);

INSERT INTO Ratings VALUES (
'tt6053948',
6.9,
72
);

INSERT INTO Ratings VALUES (
'tt6055082',
4.1,
48
);

INSERT INTO Ratings VALUES (
'tt6060156',
6.8,
62
);

INSERT INTO Ratings VALUES (
'tt6061074',
6.4,
72
);

INSERT INTO Ratings VALUES (
'tt6062774',
6.8,
65
);

INSERT INTO Ratings VALUES (
'tt6063090',
6.6,
65
);

INSERT INTO Ratings VALUES (
'tt6067832',
7.9,
61
);

INSERT INTO Ratings VALUES (
'tt6072400',
5.0,
68
);

INSERT INTO Ratings VALUES (
'tt6091368',
5.3,
36
);

INSERT INTO Ratings VALUES (
'tt6095472',
6.4,
67
);

INSERT INTO Ratings VALUES (
'tt6097002',
6.7,
52
);

INSERT INTO Ratings VALUES (
'tt6103292',
6.0,
40
);

INSERT INTO Ratings VALUES (
'tt6105774',
3.3,
42
);

INSERT INTO Ratings VALUES (
'tt6107548',
6.5,
84
);

INSERT INTO Ratings VALUES (
'tt6110504',
7.5,
78
);

INSERT INTO Ratings VALUES (
'tt6116568',
5.2,
37
);

INSERT INTO Ratings VALUES (
'tt6116856',
6.9,
87
);

INSERT INTO Ratings VALUES (
'tt6119856',
6.4,
66
);

INSERT INTO Ratings VALUES (
'tt6141246',
6.6,
71
);

INSERT INTO Ratings VALUES (
'tt6142496',
5.9,
69
);

INSERT INTO Ratings VALUES (
'tt6149154',
6.0,
60
);

INSERT INTO Ratings VALUES (
'tt6155172',
7.6,
94
);

INSERT INTO Ratings VALUES (
'tt6155456',
6.1,
54
);

INSERT INTO Ratings VALUES (
'tt6163142',
5.7,
47
);

INSERT INTO Ratings VALUES (
'tt6173902',
5.4,
51
);

INSERT INTO Ratings VALUES (
'tt6176928',
6.0,
55
);

INSERT INTO Ratings VALUES (
'tt6185286',
6.8,
73
);

INSERT INTO Ratings VALUES (
'tt6186696',
5.4,
58
);

INSERT INTO Ratings VALUES (
'tt6186910',
7.3,
57
);

INSERT INTO Ratings VALUES (
'tt6189022',
6.4,
75
);

INSERT INTO Ratings VALUES (
'tt6193408',
6.8,
86
);

INSERT INTO Ratings VALUES (
'tt6196936',
6.0,
61
);

INSERT INTO Ratings VALUES (
'tt6197400',
2.0,
38
);

INSERT INTO Ratings VALUES (
'tt6198246',
4.1,
47
);

INSERT INTO Ratings VALUES (
'tt6199572',
4.7,
56
);

INSERT INTO Ratings VALUES (
'tt6200274',
2.0,
32
);

INSERT INTO Ratings VALUES (
'tt6204340',
5.4,
59
);

INSERT INTO Ratings VALUES (
'tt6205872',
6.0,
64
);

INSERT INTO Ratings VALUES (
'tt6208096',
4.8,
32
);

INSERT INTO Ratings VALUES (
'tt6212478',
7.0,
72
);

INSERT INTO Ratings VALUES (
'tt6212496',
6.2,
56
);

INSERT INTO Ratings VALUES (
'tt6213294',
3.9,
41
);

INSERT INTO Ratings VALUES (
'tt6214928',
6.2,
84
);

INSERT INTO Ratings VALUES (
'tt6217306',
6.3,
68
);

INSERT INTO Ratings VALUES (
'tt6218358',
6.8,
84
);

INSERT INTO Ratings VALUES (
'tt6222118',
4.7,
59
);

INSERT INTO Ratings VALUES (
'tt6224502',
5.9,
56
);

INSERT INTO Ratings VALUES (
'tt6225520',
7.0,
65
);

INSERT INTO Ratings VALUES (
'tt6228640',
4.7,
40
);

INSERT INTO Ratings VALUES (
'tt6243140',
5.8,
76
);

INSERT INTO Ratings VALUES (
'tt6245644',
5.1,
36
);

INSERT INTO Ratings VALUES (
'tt6245710',
7.5,
41
);

INSERT INTO Ratings VALUES (
'tt6246534',
7.2,
51
);

INSERT INTO Ratings VALUES (
'tt6250650',
5.1,
48
);

INSERT INTO Ratings VALUES (
'tt6261048',
6.8,
49
);

INSERT INTO Ratings VALUES (
'tt6263642',
6.1,
52
);

INSERT INTO Ratings VALUES (
'tt6265828',
6.8,
74
);

INSERT INTO Ratings VALUES (
'tt6266538',
7.2,
76
);

INSERT INTO Ratings VALUES (
'tt6268734',
5.2,
44
);

INSERT INTO Ratings VALUES (
'tt6269368',
6.5,
70
);

INSERT INTO Ratings VALUES (
'tt6269658',
4.8,
43
);

INSERT INTO Ratings VALUES (
'tt6272828',
5.6,
57
);

INSERT INTO Ratings VALUES (
'tt6280328',
5.3,
44
);

INSERT INTO Ratings VALUES (
'tt6288124',
6.8,
68
);

INSERT INTO Ratings VALUES (
'tt6288694',
5.7,
61
);

INSERT INTO Ratings VALUES (
'tt6290418',
5.4,
45
);

INSERT INTO Ratings VALUES (
'tt6290736',
6.0,
47
);

INSERT INTO Ratings VALUES (
'tt6292852',
6.7,
89
);

INSERT INTO Ratings VALUES (
'tt6299040',
7.5,
77
);

INSERT INTO Ratings VALUES (
'tt6303866',
6.4,
63
);

INSERT INTO Ratings VALUES (
'tt6306064',
6.6,
70
);

INSERT INTO Ratings VALUES (
'tt6306568',
7.5,
39
);

INSERT INTO Ratings VALUES (
'tt6317962',
5.6,
55
);

INSERT INTO Ratings VALUES (
'tt6324278',
7.0,
73
);

INSERT INTO Ratings VALUES (
'tt6333052',
6.1,
59
);

INSERT INTO Ratings VALUES (
'tt6333060',
7.9,
75
);

INSERT INTO Ratings VALUES (
'tt6333064',
6.4,
69
);

INSERT INTO Ratings VALUES (
'tt6333072',
7.3,
75
);

INSERT INTO Ratings VALUES (
'tt6333086',
6.6,
55
);

INSERT INTO Ratings VALUES (
'tt6333088',
6.1,
55
);

INSERT INTO Ratings VALUES (
'tt6342110',
5.7,
48
);

INSERT INTO Ratings VALUES (
'tt6346162',
8.2,
69
);

INSERT INTO Ratings VALUES (
'tt6348138',
6.7,
68
);

INSERT INTO Ratings VALUES (
'tt6352548',
5.4,
44
);

INSERT INTO Ratings VALUES (
'tt6357074',
4.5,
41
);

INSERT INTO Ratings VALUES (
'tt6378710',
6.3,
62
);

INSERT INTO Ratings VALUES (
'tt6379314',
7.8,
56
);

INSERT INTO Ratings VALUES (
'tt6390668',
7.7,
85
);

INSERT INTO Ratings VALUES (
'tt6394270',
6.8,
76
);

INSERT INTO Ratings VALUES (
'tt6412452',
7.2,
92
);

INSERT INTO Ratings VALUES (
'tt6423886',
5.7,
55
);

INSERT INTO Ratings VALUES (
'tt6428150',
6.8,
69
);

INSERT INTO Ratings VALUES (
'tt6433832',
6.4,
64
);

INSERT INTO Ratings VALUES (
'tt6436726',
6.3,
75
);

INSERT INTO Ratings VALUES (
'tt6443294',
6.6,
60
);

INSERT INTO Ratings VALUES (
'tt6444140',
5.9,
71
);

INSERT INTO Ratings VALUES (
'tt6445414',
6.2,
60
);

INSERT INTO Ratings VALUES (
'tt6450804',
6.2,
76
);

INSERT INTO Ratings VALUES (
'tt6452332',
6.8,
58
);

INSERT INTO Ratings VALUES (
'tt6452574',
7.6,
74
);

INSERT INTO Ratings VALUES (
'tt6456222',
5.6,
51
);

INSERT INTO Ratings VALUES (
'tt6456326',
5.4,
60
);

INSERT INTO Ratings VALUES (
'tt6460528',
4.6,
66
);

INSERT INTO Ratings VALUES (
'tt6463468',
5.8,
65
);

INSERT INTO Ratings VALUES (
'tt6469960',
2.9,
38
);

INSERT INTO Ratings VALUES (
'tt6472116',
5.6,
59
);

INSERT INTO Ratings VALUES (
'tt6473066',
7.5,
60
);

INSERT INTO Ratings VALUES (
'tt6494358',
7.5,
50
);

INSERT INTO Ratings VALUES (
'tt6494418',
4.3,
60
);

INSERT INTO Ratings VALUES (
'tt6506146',
5.1,
46
);

INSERT INTO Ratings VALUES (
'tt6508228',
5.6,
60
);

INSERT INTO Ratings VALUES (
'tt6510332',
7.7,
66
);

INSERT INTO Ratings VALUES (
'tt6511932',
5.5,
62
);

INSERT INTO Ratings VALUES (
'tt6512300',
6.4,
44
);

INSERT INTO Ratings VALUES (
'tt6513656',
3.9,
59
);

INSERT INTO Ratings VALUES (
'tt6516314',
5.5,
58
);

INSERT INTO Ratings VALUES (
'tt6516590',
3.6,
43
);

INSERT INTO Ratings VALUES (
'tt6518270',
5.8,
59
);

INSERT INTO Ratings VALUES (
'tt6521876',
5.6,
65
);

INSERT INTO Ratings VALUES (
'tt6523720',
6.2,
65
);

INSERT INTO Ratings VALUES (
'tt6527456',
5.2,
50
);

INSERT INTO Ratings VALUES (
'tt6527586',
6.4,
54
);

INSERT INTO Ratings VALUES (
'tt6543652',
7.5,
72
);

INSERT INTO Ratings VALUES (
'tt6555772',
5.6,
47
);

INSERT INTO Ratings VALUES (
'tt6559576',
4.5,
40
);

INSERT INTO Ratings VALUES (
'tt6560164',
5.8,
62
);

INSERT INTO Ratings VALUES (
'tt6566830',
5.2,
50
);

INSERT INTO Ratings VALUES (
'tt6573444',
7.2,
55
);

INSERT INTO Ratings VALUES (
'tt6574146',
6.6,
62
);

INSERT INTO Ratings VALUES (
'tt6580564',
7.4,
75
);

INSERT INTO Ratings VALUES (
'tt6587640',
6.1,
69
);

INSERT INTO Ratings VALUES (
'tt6588966',
7.5,
59
);

INSERT INTO Ratings VALUES (
'tt6593054',
3.2,
50
);

INSERT INTO Ratings VALUES (
'tt6595896',
6.3,
62
);

INSERT INTO Ratings VALUES (
'tt6598238',
6.3,
68
);

INSERT INTO Ratings VALUES (
'tt6598626',
6.1,
57
);

INSERT INTO Ratings VALUES (
'tt6599184',
6.6,
45
);

INSERT INTO Ratings VALUES (
'tt6599742',
5.9,
52
);

INSERT INTO Ratings VALUES (
'tt6608138',
7.5,
55
);

INSERT INTO Ratings VALUES (
'tt6611578',
6.3,
42
);

INSERT INTO Ratings VALUES (
'tt6612946',
5.7,
55
);

INSERT INTO Ratings VALUES (
'tt6643972',
5.6,
62
);

INSERT INTO Ratings VALUES (
'tt6679412',
6.2,
46
);

INSERT INTO Ratings VALUES (
'tt6679794',
6.9,
72
);

INSERT INTO Ratings VALUES (
'tt6685596',
5.5,
50
);

INSERT INTO Ratings VALUES (
'tt6688136',
5.9,
50
);

INSERT INTO Ratings VALUES (
'tt6692354',
7.2,
80
);

INSERT INTO Ratings VALUES (
'tt6704776',
6.8,
76
);

INSERT INTO Ratings VALUES (
'tt6704898',
6.7,
55
);

INSERT INTO Ratings VALUES (
'tt6708116',
7.2,
62
);

INSERT INTO Ratings VALUES (
'tt6714534',
7.3,
81
);

INSERT INTO Ratings VALUES (
'tt6727296',
6.9,
52
);

INSERT INTO Ratings VALUES (
'tt6736198',
5.9,
57
);

INSERT INTO Ratings VALUES (
'tt6742252',
7.5,
73
);

INSERT INTO Ratings VALUES (
'tt6744044',
5.8,
57
);

INSERT INTO Ratings VALUES (
'tt6749318',
4.3,
50
);

INSERT INTO Ratings VALUES (
'tt6751668',
8.5,
88
);

INSERT INTO Ratings VALUES (
'tt6752992',
7.5,
85
);

INSERT INTO Ratings VALUES (
'tt6759506',
6.6,
75
);

INSERT INTO Ratings VALUES (
'tt6769280',
5.8,
61
);

INSERT INTO Ratings VALUES (
'tt6769508',
7.1,
61
);

INSERT INTO Ratings VALUES (
'tt6772802',
6.7,
72
);

INSERT INTO Ratings VALUES (
'tt6772804',
4.4,
59
);

INSERT INTO Ratings VALUES (
'tt6774588',
6.1,
58
);

INSERT INTO Ratings VALUES (
'tt6776106',
7.0,
76
);

INSERT INTO Ratings VALUES (
'tt6788942',
7.6,
68
);

INSERT INTO Ratings VALUES (
'tt6791096',
5.7,
67
);

INSERT INTO Ratings VALUES (
'tt6792282',
7.5,
83
);

INSERT INTO Ratings VALUES (
'tt6792666',
5.7,
55
);

INSERT INTO Ratings VALUES (
'tt6794450',
7.4,
74
);

INSERT INTO Ratings VALUES (
'tt6796306',
5.7,
44
);

INSERT INTO Ratings VALUES (
'tt6805862',
6.0,
40
);

INSERT INTO Ratings VALUES (
'tt6807324',
5.6,
46
);

INSERT INTO Ratings VALUES (
'tt6811018',
6.1,
64
);

INSERT INTO Ratings VALUES (
'tt6820324',
6.0,
73
);

INSERT INTO Ratings VALUES (
'tt6821012',
5.2,
60
);

INSERT INTO Ratings VALUES (
'tt6829180',
5.3,
61
);

INSERT INTO Ratings VALUES (
'tt6833470',
3.0,
44
);

INSERT INTO Ratings VALUES (
'tt6838918',
5.5,
56
);

INSERT INTO Ratings VALUES (
'tt6842770',
5.8,
61
);

INSERT INTO Ratings VALUES (
'tt6843446',
3.4,
43
);

INSERT INTO Ratings VALUES (
'tt6844138',
2.8,
58
);

INSERT INTO Ratings VALUES (
'tt6850820',
6.5,
74
);

INSERT INTO Ratings VALUES (
'tt6851966',
5.9,
55
);

INSERT INTO Ratings VALUES (
'tt6852872',
5.8,
62
);

INSERT INTO Ratings VALUES (
'tt6854672',
5.9,
57
);

INSERT INTO Ratings VALUES (
'tt6859352',
6.4,
62
);

INSERT INTO Ratings VALUES (
'tt6869538',
6.3,
55
);

INSERT INTO Ratings VALUES (
'tt6882604',
6.4,
68
);

INSERT INTO Ratings VALUES (
'tt6885956',
6.3,
34
);

INSERT INTO Ratings VALUES (
'tt6886574',
5.5,
43
);

INSERT INTO Ratings VALUES (
'tt6892462',
6.3,
58
);

INSERT INTO Ratings VALUES (
'tt6893836',
7.4,
81
);

INSERT INTO Ratings VALUES (
'tt6900448',
7.0,
67
);

INSERT INTO Ratings VALUES (
'tt6903636',
6.2,
51
);

INSERT INTO Ratings VALUES (
'tt6908274',
7.4,
74
);

INSERT INTO Ratings VALUES (
'tt6910020',
2.4,
55
);

INSERT INTO Ratings VALUES (
'tt6910734',
7.2,
43
);

INSERT INTO Ratings VALUES (
'tt6911110',
5.5,
36
);

INSERT INTO Ratings VALUES (
'tt6916348',
5.0,
46
);

INSERT INTO Ratings VALUES (
'tt6920356',
6.4,
66
);

INSERT INTO Ratings VALUES (
'tt6936350',
6.2,
45
);

INSERT INTO Ratings VALUES (
'tt6937368',
7.2,
54
);

INSERT INTO Ratings VALUES (
'tt6937724',
3.4,
76
);

INSERT INTO Ratings VALUES (
'tt6938828',
6.9,
69
);

INSERT INTO Ratings VALUES (
'tt6952960',
6.7,
80
);

INSERT INTO Ratings VALUES (
'tt6977240',
5.5,
59
);

INSERT INTO Ratings VALUES (
'tt7002100',
7.2,
87
);

INSERT INTO Ratings VALUES (
'tt7019942',
8.2,
87
);

INSERT INTO Ratings VALUES (
'tt7025388',
4.8,
56
);

INSERT INTO Ratings VALUES (
'tt7029854',
4.6,
50
);

INSERT INTO Ratings VALUES (
'tt7043012',
5.7,
71
);

INSERT INTO Ratings VALUES (
'tt7043534',
3.1,
46
);

INSERT INTO Ratings VALUES (
'tt7044076',
5.5,
55
);

INSERT INTO Ratings VALUES (
'tt7052494',
4.5,
50
);

INSERT INTO Ratings VALUES (
'tt7057496',
7.4,
70
);

INSERT INTO Ratings VALUES (
'tt7058080',
6.4,
63
);

INSERT INTO Ratings VALUES (
'tt7073710',
5.7,
60
);

INSERT INTO Ratings VALUES (
'tt7104578',
4.8,
46
);

INSERT INTO Ratings VALUES (
'tt7125860',
7.1,
71
);

INSERT INTO Ratings VALUES (
'tt7133686',
6.6,
80
);

INSERT INTO Ratings VALUES (
'tt7134096',
5.4,
64
);

INSERT INTO Ratings VALUES (
'tt7137380',
6.2,
66
);

INSERT INTO Ratings VALUES (
'tt7139936',
6.4,
68
);

INSERT INTO Ratings VALUES (
'tt7146812',
7.4,
80
);

INSERT INTO Ratings VALUES (
'tt7149730',
6.3,
66
);

INSERT INTO Ratings VALUES (
'tt7149916',
4.5,
43
);

INSERT INTO Ratings VALUES (
'tt7153434',
7.5,
52
);

INSERT INTO Ratings VALUES (
'tt7153766',
6.4,
70
);

INSERT INTO Ratings VALUES (
'tt7155460',
8.0,
53
);

INSERT INTO Ratings VALUES (
'tt7158430',
6.9,
65
);

INSERT INTO Ratings VALUES (
'tt7170950',
6.1,
68
);

INSERT INTO Ratings VALUES (
'tt7177642',
5.1,
41
);

INSERT INTO Ratings VALUES (
'tt7178226',
7.5,
61
);

INSERT INTO Ratings VALUES (
'tt7183578',
6.8,
59
);

INSERT INTO Ratings VALUES (
'tt7184124',
6.7,
52
);

INSERT INTO Ratings VALUES (
'tt7186092',
6.7,
55
);

INSERT INTO Ratings VALUES (
'tt7200946',
4.8,
50
);

INSERT INTO Ratings VALUES (
'tt7205316',
4.9,
52
);

INSERT INTO Ratings VALUES (
'tt7207238',
7.8,
64
);

INSERT INTO Ratings VALUES (
'tt7212754',
7.6,
68
);

INSERT INTO Ratings VALUES (
'tt7218518',
7.8,
87
);

INSERT INTO Ratings VALUES (
'tt7227742',
6.2,
51
);

INSERT INTO Ratings VALUES (
'tt7248248',
5.1,
53
);

INSERT INTO Ratings VALUES (
'tt7250056',
6.4,
57
);

INSERT INTO Ratings VALUES (
'tt7252000',
7.2,
80
);

INSERT INTO Ratings VALUES (
'tt7255884',
6.6,
73
);

INSERT INTO Ratings VALUES (
'tt7256866',
5.2,
55
);

INSERT INTO Ratings VALUES (
'tt7262384',
5.7,
52
);

INSERT INTO Ratings VALUES (
'tt7284204',
5.5,
56
);

INSERT INTO Ratings VALUES (
'tt7286916',
8.1,
72
);

INSERT INTO Ratings VALUES (
'tt7291268',
7.0,
79
);

INSERT INTO Ratings VALUES (
'tt7294534',
7.9,
65
);

INSERT INTO Ratings VALUES (
'tt7295450',
3.9,
56
);

INSERT INTO Ratings VALUES (
'tt7296862',
3.2,
39
);

INSERT INTO Ratings VALUES (
'tt7302054',
5.1,
48
);

INSERT INTO Ratings VALUES (
'tt7304802',
6.4,
60
);

INSERT INTO Ratings VALUES (
'tt7304824',
6.2,
58
);

INSERT INTO Ratings VALUES (
'tt7315484',
5.4,
65
);

INSERT INTO Ratings VALUES (
'tt7319822',
5.4,
53
);

INSERT INTO Ratings VALUES (
'tt7322850',
6.3,
52
);

INSERT INTO Ratings VALUES (
'tt7322864',
4.1,
38
);

INSERT INTO Ratings VALUES (
'tt7329656',
5.0,
63
);

INSERT INTO Ratings VALUES (
'tt7329858',
6.6,
70
);

INSERT INTO Ratings VALUES (
'tt7332500',
7.0,
47
);

INSERT INTO Ratings VALUES (
'tt7335796',
4.2,
52
);

INSERT INTO Ratings VALUES (
'tt7336684',
5.5,
44
);

INSERT INTO Ratings VALUES (
'tt7339248',
6.6,
68
);

INSERT INTO Ratings VALUES (
'tt7358154',
5.4,
58
);

INSERT INTO Ratings VALUES (
'tt7365604',
6.2,
60
);

INSERT INTO Ratings VALUES (
'tt7370952',
6.1,
61
);

INSERT INTO Ratings VALUES (
'tt7374948',
6.7,
88
);

INSERT INTO Ratings VALUES (
'tt7375578',
4.6,
47
);

INSERT INTO Ratings VALUES (
'tt7391996',
8.8,
68
);

INSERT INTO Ratings VALUES (
'tt7392212',
8.2,
71
);

INSERT INTO Ratings VALUES (
'tt7394816',
4.9,
60
);

INSERT INTO Ratings VALUES (
'tt7395114',
7.1,
89
);

INSERT INTO Ratings VALUES (
'tt7411120',
6.0,
43
);

INSERT INTO Ratings VALUES (
'tt7423486',
4.6,
42
);

INSERT INTO Ratings VALUES (
'tt7424290',
4.9,
50
);

INSERT INTO Ratings VALUES (
'tt7427356',
5.6,
56
);

INSERT INTO Ratings VALUES (
'tt7434324',
6.3,
57
);

INSERT INTO Ratings VALUES (
'tt7435316',
6.1,
55
);

INSERT INTO Ratings VALUES (
'tt7440432',
7.6,
79
);

INSERT INTO Ratings VALUES (
'tt7456312',
4.4,
48
);

INSERT INTO Ratings VALUES (
'tt7458762',
6.9,
67
);

INSERT INTO Ratings VALUES (
'tt7460806',
5.8,
61
);

INSERT INTO Ratings VALUES (
'tt7465992',
8.4,
86
);

INSERT INTO Ratings VALUES (
'tt7471004',
6.7,
68
);

INSERT INTO Ratings VALUES (
'tt7474914',
5.0,
47
);

INSERT INTO Ratings VALUES (
'tt7476236',
8.0,
90
);

INSERT INTO Ratings VALUES (
'tt7486356',
5.1,
38
);

INSERT INTO Ratings VALUES (
'tt7488208',
6.3,
84
);

INSERT INTO Ratings VALUES (
'tt7489816',
6.8,
62
);

INSERT INTO Ratings VALUES (
'tt7502214',
7.6,
53
);

INSERT INTO Ratings VALUES (
'tt7511008',
4.7,
48
);

INSERT INTO Ratings VALUES (
'tt7524414',
7.1,
65
);

INSERT INTO Ratings VALUES (
'tt7525514',
7.3,
56
);

INSERT INTO Ratings VALUES (
'tt7525778',
5.6,
67
);

INSERT INTO Ratings VALUES (
'tt7527538',
5.5,
38
);

INSERT INTO Ratings VALUES (
'tt7530986',
6.8,
69
);

INSERT INTO Ratings VALUES (
'tt7533152',
7.6,
89
);

INSERT INTO Ratings VALUES (
'tt7544820',
7.7,
60
);

INSERT INTO Ratings VALUES (
'tt7545524',
6.7,
65
);

INSERT INTO Ratings VALUES (
'tt7545566',
6.8,
60
);

INSERT INTO Ratings VALUES (
'tt7547410',
6.1,
68
);

INSERT INTO Ratings VALUES (
'tt7549996',
6.8,
71
);

INSERT INTO Ratings VALUES (
'tt7550000',
6.0,
69
);

INSERT INTO Ratings VALUES (
'tt7556122',
6.7,
78
);

INSERT INTO Ratings VALUES (
'tt7557108',
6.6,
71
);

INSERT INTO Ratings VALUES (
'tt7558302',
5.5,
64
);

INSERT INTO Ratings VALUES (
'tt7562334',
5.9,
51
);

INSERT INTO Ratings VALUES (
'tt7573844',
7.5,
50
);

INSERT INTO Ratings VALUES (
'tt7585674',
5.3,
39
);

INSERT INTO Ratings VALUES (
'tt7588790',
6.1,
72
);

INSERT INTO Ratings VALUES (
'tt7594134',
7.5,
47
);

INSERT INTO Ratings VALUES (
'tt7594584',
5.0,
54
);

INSERT INTO Ratings VALUES (
'tt7600382',
7.0,
58
);

INSERT INTO Ratings VALUES (
'tt7600716',
5.9,
51
);

INSERT INTO Ratings VALUES (
'tt7601296',
3.4,
44
);

INSERT INTO Ratings VALUES (
'tt7605074',
5.9,
76
);

INSERT INTO Ratings VALUES (
'tt7608028',
3.3,
47
);

INSERT INTO Ratings VALUES (
'tt7608418',
5.8,
72
);

INSERT INTO Ratings VALUES (
'tt7615302',
6.4,
66
);

INSERT INTO Ratings VALUES (
'tt7616148',
6.6,
64
);

INSERT INTO Ratings VALUES (
'tt7627790',
5.8,
42
);

INSERT INTO Ratings VALUES (
'tt7643622',
5.6,
46
);

INSERT INTO Ratings VALUES (
'tt7653254',
7.9,
83
);

INSERT INTO Ratings VALUES (
'tt7671064',
6.8,
85
);

INSERT INTO Ratings VALUES (
'tt7681824',
6.9,
60
);

INSERT INTO Ratings VALUES (
'tt7682382',
6.1,
62
);

INSERT INTO Ratings VALUES (
'tt7682430',
7.5,
62
);

INSERT INTO Ratings VALUES (
'tt7686876',
6.7,
48
);

INSERT INTO Ratings VALUES (
'tt7689052',
4.2,
52
);

INSERT INTO Ratings VALUES (
'tt7689906',
6.1,
56
);

INSERT INTO Ratings VALUES (
'tt7689924',
7.3,
74
);

INSERT INTO Ratings VALUES (
'tt7690638',
7.3,
71
);

INSERT INTO Ratings VALUES (
'tt7730102',
5.4,
51
);

INSERT INTO Ratings VALUES (
'tt7736496',
6.4,
63
);

INSERT INTO Ratings VALUES (
'tt7736536',
5.7,
42
);

INSERT INTO Ratings VALUES (
'tt7748076',
7.2,
52
);

INSERT INTO Ratings VALUES (
'tt7755856',
6.2,
55
);

INSERT INTO Ratings VALUES (
'tt7763020',
6.4,
68
);

INSERT INTO Ratings VALUES (
'tt7772580',
6.2,
84
);

INSERT INTO Ratings VALUES (
'tt7772872',
5.0,
36
);

INSERT INTO Ratings VALUES (
'tt7775622',
8.1,
77
);

INSERT INTO Ratings VALUES (
'tt7778680',
6.8,
74
);

INSERT INTO Ratings VALUES (
'tt7779590',
6.5,
50
);

INSERT INTO Ratings VALUES (
'tt7805960',
5.3,
54
);

INSERT INTO Ratings VALUES (
'tt7827944',
4.7,
42
);

INSERT INTO Ratings VALUES (
'tt7832848',
5.6,
60
);

INSERT INTO Ratings VALUES (
'tt7841496',
5.7,
53
);

INSERT INTO Ratings VALUES (
'tt7846844',
6.6,
77
);

INSERT INTO Ratings VALUES (
'tt7869070',
4.1,
54
);

INSERT INTO Ratings VALUES (
'tt7871636',
4.7,
44
);

INSERT INTO Ratings VALUES (
'tt7873348',
5.8,
61
);

INSERT INTO Ratings VALUES (
'tt7895904',
4.2,
41
);

INSERT INTO Ratings VALUES (
'tt7903530',
5.2,
54
);

INSERT INTO Ratings VALUES (
'tt7913394',
3.0,
40
);

INSERT INTO Ratings VALUES (
'tt7913994',
6.4,
41
);

INSERT INTO Ratings VALUES (
'tt7919810',
5.4,
48
);

INSERT INTO Ratings VALUES (
'tt7933796',
6.0,
69
);

INSERT INTO Ratings VALUES (
'tt7939766',
6.5,
71
);

INSERT INTO Ratings VALUES (
'tt7942746',
4.7,
50
);

INSERT INTO Ratings VALUES (
'tt7945440',
5.8,
57
);

INSERT INTO Ratings VALUES (
'tt7945450',
6.6,
55
);

INSERT INTO Ratings VALUES (
'tt7946422',
6.3,
68
);

INSERT INTO Ratings VALUES (
'tt7946836',
6.4,
61
);

INSERT INTO Ratings VALUES (
'tt7947150',
5.4,
39
);

INSERT INTO Ratings VALUES (
'tt7957694',
5.6,
61
);

INSERT INTO Ratings VALUES (
'tt7967412',
6.6,
76
);

INSERT INTO Ratings VALUES (
'tt7969042',
5.7,
53
);

INSERT INTO Ratings VALUES (
'tt7970348',
4.7,
55
);

INSERT INTO Ratings VALUES (
'tt7976208',
2.9,
48
);

INSERT INTO Ratings VALUES (
'tt7976502',
3.9,
70
);

INSERT INTO Ratings VALUES (
'tt7979142',
5.6,
62
);

INSERT INTO Ratings VALUES (
'tt7981318',
6.0,
44
);

INSERT INTO Ratings VALUES (
'tt7983712',
3.2,
41
);

INSERT INTO Ratings VALUES (
'tt7983744',
3.3,
43
);

INSERT INTO Ratings VALUES (
'tt7983894',
6.5,
67
);

INSERT INTO Ratings VALUES (
'tt7984734',
7.4,
80
);

INSERT INTO Ratings VALUES (
'tt7984766',
7.3,
90
);

INSERT INTO Ratings VALUES (
'tt8000718',
5.8,
62
);

INSERT INTO Ratings VALUES (
'tt8015080',
5.8,
58
);

INSERT INTO Ratings VALUES (
'tt8023734',
6.8,
55
);

INSERT INTO Ratings VALUES (
'tt8028526',
5.8,
43
);

INSERT INTO Ratings VALUES (
'tt8041276',
7.2,
84
);

INSERT INTO Ratings VALUES (
'tt8045906',
7.2,
66
);

INSERT INTO Ratings VALUES (
'tt8055324',
4.8,
37
);

INSERT INTO Ratings VALUES (
'tt8058874',
5.2,
58
);

INSERT INTO Ratings VALUES (
'tt8060774',
6.4,
56
);

INSERT INTO Ratings VALUES (
'tt8064262',
4.1,
43
);

INSERT INTO Ratings VALUES (
'tt8064392',
6.6,
40
);

INSERT INTO Ratings VALUES (
'tt8075016',
4.8,
61
);

INSERT INTO Ratings VALUES (
'tt8075192',
7.9,
76
);

INSERT INTO Ratings VALUES (
'tt8075260',
6.2,
68
);

INSERT INTO Ratings VALUES (
'tt8076222',
8.4,
60
);

INSERT INTO Ratings VALUES (
'tt8076344',
7.1,
67
);

INSERT INTO Ratings VALUES (
'tt8080302',
7.1,
56
);

INSERT INTO Ratings VALUES (
'tt8103160',
5.6,
50
);

INSERT INTO Ratings VALUES (
'tt8106534',
6.1,
75
);

INSERT INTO Ratings VALUES (
'tt8106570',
6.3,
64
);

INSERT INTO Ratings VALUES (
'tt8106576',
7.6,
66
);

INSERT INTO Ratings VALUES (
'tt8106596',
6.4,
57
);

INSERT INTO Ratings VALUES (
'tt8108230',
6.3,
70
);

INSERT INTO Ratings VALUES (
'tt8110640',
6.2,
77
);

INSERT INTO Ratings VALUES (
'tt8126440',
5.6,
74
);

INSERT INTO Ratings VALUES (
'tt8128188',
6.2,
66
);

INSERT INTO Ratings VALUES (
'tt8130968',
7.7,
80
);

INSERT INTO Ratings VALUES (
'tt8132700',
6.5,
77
);

INSERT INTO Ratings VALUES (
'tt8135494',
7.7,
66
);

INSERT INTO Ratings VALUES (
'tt8145202',
5.2,
48
);

INSERT INTO Ratings VALUES (
'tt8151874',
7.2,
89
);

INSERT INTO Ratings VALUES (
'tt8160834',
5.5,
55
);

INSERT INTO Ratings VALUES (
'tt8169446',
5.5,
61
);

INSERT INTO Ratings VALUES (
'tt8170298',
3.6,
48
);

INSERT INTO Ratings VALUES (
'tt8176578',
6.6,
76
);

INSERT INTO Ratings VALUES (
'tt8178486',
6.0,
61
);

INSERT INTO Ratings VALUES (
'tt8179024',
5.3,
57
);

INSERT INTO Ratings VALUES (
'tt8179388',
5.3,
63
);

INSERT INTO Ratings VALUES (
'tt8186932',
5.8,
54
);

INSERT INTO Ratings VALUES (
'tt8188610',
6.1,
49
);

INSERT INTO Ratings VALUES (
'tt8201170',
5.8,
72
);

INSERT INTO Ratings VALUES (
'tt8202262',
6.7,
47
);

INSERT INTO Ratings VALUES (
'tt8223844',
6.6,
61
);

INSERT INTO Ratings VALUES (
'tt8230872',
6.9,
67
);

INSERT INTO Ratings VALUES (
'tt8236336',
7.2,
89
);

INSERT INTO Ratings VALUES (
'tt8236398',
6.9,
51
);

INSERT INTO Ratings VALUES (
'tt8237172',
6.1,
57
);

INSERT INTO Ratings VALUES (
'tt8241138',
6.4,
57
);

INSERT INTO Ratings VALUES (
'tt8242084',
6.4,
76
);

INSERT INTO Ratings VALUES (
'tt8246392',
5.6,
79
);

INSERT INTO Ratings VALUES (
'tt8251336',
6.2,
40
);

INSERT INTO Ratings VALUES (
'tt8254556',
7.2,
66
);

INSERT INTO Ratings VALUES (
'tt8258074',
7.4,
64
);

INSERT INTO Ratings VALUES (
'tt8273258',
5.7,
42
);

INSERT INTO Ratings VALUES (
'tt8276106',
4.9,
39
);

INSERT INTO Ratings VALUES (
'tt8286926',
7.7,
56
);

INSERT INTO Ratings VALUES (
'tt8296660',
5.4,
47
);

INSERT INTO Ratings VALUES (
'tt8299768',
6.4,
82
);

INSERT INTO Ratings VALUES (
'tt8310924',
6.4,
70
);

INSERT INTO Ratings VALUES (
'tt8318284',
3.3,
50
);

INSERT INTO Ratings VALUES (
'tt8326250',
5.2,
42
);

INSERT INTO Ratings VALUES (
'tt8328716',
3.8,
55
);

INSERT INTO Ratings VALUES (
'tt8328740',
7.1,
80
);

INSERT INTO Ratings VALUES (
'tt8332802',
4.9,
55
);

INSERT INTO Ratings VALUES (
'tt8333746',
6.3,
72
);

INSERT INTO Ratings VALUES (
'tt8359848',
6.9,
75
);

INSERT INTO Ratings VALUES (
'tt8361028',
5.9,
64
);

INSERT INTO Ratings VALUES (
'tt8362228',
6.4,
50
);

INSERT INTO Ratings VALUES (
'tt8364368',
6.1,
72
);

INSERT INTO Ratings VALUES (
'tt8367184',
5.6,
52
);

INSERT INTO Ratings VALUES (
'tt8368406',
5.9,
71
);

INSERT INTO Ratings VALUES (
'tt8372368',
6.3,
79
);

INSERT INTO Ratings VALUES (
'tt8380776',
4.7,
59
);

INSERT INTO Ratings VALUES (
'tt8393332',
5.4,
54
);

INSERT INTO Ratings VALUES (
'tt8400758',
4.0,
54
);

INSERT INTO Ratings VALUES (
'tt8404614',
7.6,
76
);

INSERT INTO Ratings VALUES (
'tt8406660',
4.3,
49
);

INSERT INTO Ratings VALUES (
'tt8413566',
5.0,
41
);

INSERT INTO Ratings VALUES (
'tt8430598',
6.1,
64
);

INSERT INTO Ratings VALUES (
'tt8431078',
4.5,
50
);

INSERT INTO Ratings VALUES (
'tt8435268',
6.1,
56
);

INSERT INTO Ratings VALUES (
'tt8435324',
6.5,
46
);

INSERT INTO Ratings VALUES (
'tt8436026',
7.2,
75
);

INSERT INTO Ratings VALUES (
'tt8439854',
6.4,
63
);

INSERT INTO Ratings VALUES (
'tt8443704',
7.3,
82
);

INSERT INTO Ratings VALUES (
'tt8459250',
7.1,
59
);

INSERT INTO Ratings VALUES (
'tt8461224',
4.9,
61
);

INSERT INTO Ratings VALUES (
'tt8478602',
5.1,
56
);

INSERT INTO Ratings VALUES (
'tt8484012',
6.3,
62
);

INSERT INTO Ratings VALUES (
'tt8484160',
6.4,
58
);

INSERT INTO Ratings VALUES (
'tt8503618',
8.3,
81
);

INSERT INTO Ratings VALUES (
'tt8508734',
6.4,
87
);

INSERT INTO Ratings VALUES (
'tt8510324',
4.7,
42
);

INSERT INTO Ratings VALUES (
'tt8510488',
6.2,
63
);

INSERT INTO Ratings VALUES (
'tt8514564',
7.4,
46
);

INSERT INTO Ratings VALUES (
'tt8522006',
6.6,
83
);

INSERT INTO Ratings VALUES (
'tt8523028',
5.5,
51
);

INSERT INTO Ratings VALUES (
'tt8526872',
7.2,
92
);

INSERT INTO Ratings VALUES (
'tt8529070',
6.3,
48
);

INSERT INTO Ratings VALUES (
'tt8530796',
6.2,
39
);

INSERT INTO Ratings VALUES (
'tt8530978',
6.4,
65
);

INSERT INTO Ratings VALUES (
'tt8563452',
5.3,
58
);

INSERT INTO Ratings VALUES (
'tt8574836',
6.6,
45
);

INSERT INTO Ratings VALUES (
'tt8580274',
6.5,
84
);

INSERT INTO Ratings VALUES (
'tt8581198',
6.2,
42
);

INSERT INTO Ratings VALUES (
'tt8595708',
6.7,
48
);

INSERT INTO Ratings VALUES (
'tt8599746',
6.0,
51
);

INSERT INTO Ratings VALUES (
'tt8613070',
8.0,
80
);

INSERT INTO Ratings VALUES (
'tt8613876',
4.9,
55
);

INSERT INTO Ratings VALUES (
'tt8618654',
8.1,
87
);

INSERT INTO Ratings VALUES (
'tt8629748',
6.2,
73
);

INSERT INTO Ratings VALUES (
'tt8632862',
7.2,
66
);

INSERT INTO Ratings VALUES (
'tt8633478',
6.7,
74
);

INSERT INTO Ratings VALUES (
'tt8637428',
7.5,
76
);

INSERT INTO Ratings VALUES (
'tt8637504',
8.1,
69
);

INSERT INTO Ratings VALUES (
'tt8663516',
5.7,
67
);

INSERT INTO Ratings VALUES (
'tt8664988',
6.0,
66
);

INSERT INTO Ratings VALUES (
'tt8665746',
6.9,
52
);

INSERT INTO Ratings VALUES (
'tt8704802',
6.7,
61
);

INSERT INTO Ratings VALUES (
'tt8706138',
3.0,
70
);

INSERT INTO Ratings VALUES (
'tt8709036',
5.3,
63
);

INSERT INTO Ratings VALUES (
'tt8717446',
6.6,
61
);

INSERT INTO Ratings VALUES (
'tt8731842',
5.5,
39
);

INSERT INTO Ratings VALUES (
'tt8737608',
6.5,
60
);

INSERT INTO Ratings VALUES (
'tt8741182',
7.1,
48
);

INSERT INTO Ratings VALUES (
'tt8743032',
5.0,
55
);

INSERT INTO Ratings VALUES (
'tt8749922',
5.0,
50
);

INSERT INTO Ratings VALUES (
'tt8750122',
4.1,
46
);

INSERT INTO Ratings VALUES (
'tt8750570',
6.2,
66
);

INSERT INTO Ratings VALUES (
'tt8758086',
4.9,
55
);

INSERT INTO Ratings VALUES (
'tt8759834',
5.1,
54
);

INSERT INTO Ratings VALUES (
'tt8765496',
5.9,
70
);

INSERT INTO Ratings VALUES (
'tt8769848',
5.9,
54
);

INSERT INTO Ratings VALUES (
'tt8772262',
7.1,
80
);

INSERT INTO Ratings VALUES (
'tt8774798',
5.7,
59
);

INSERT INTO Ratings VALUES (
'tt8783532',
6.5,
56
);

INSERT INTO Ratings VALUES (
'tt8784956',
5.5,
70
);

INSERT INTO Ratings VALUES (
'tt8809652',
3.7,
51
);

INSERT INTO Ratings VALUES (
'tt8820590',
6.8,
65
);

INSERT INTO Ratings VALUES (
'tt8841972',
5.3,
66
);

INSERT INTO Ratings VALUES (
'tt8851668',
6.1,
66
);

INSERT INTO Ratings VALUES (
'tt8856470',
5.7,
58
);

INSERT INTO Ratings VALUES (
'tt8858104',
6.7,
64
);

INSERT INTO Ratings VALUES (
'tt8858420',
3.8,
45
);

INSERT INTO Ratings VALUES (
'tt8861786',
3.8,
35
);

INSERT INTO Ratings VALUES (
'tt8875940',
4.8,
42
);

INSERT INTO Ratings VALUES (
'tt8902948',
6.6,
56
);

INSERT INTO Ratings VALUES (
'tt8902978',
5.8,
55
);

INSERT INTO Ratings VALUES (
'tt8908002',
6.4,
60
);

INSERT INTO Ratings VALUES (
'tt8914492',
6.9,
74
);

INSERT INTO Ratings VALUES (
'tt8917752',
6.6,
57
);

INSERT INTO Ratings VALUES (
'tt8923482',
7.5,
84
);

INSERT INTO Ratings VALUES (
'tt8925540',
5.6,
48
);

INSERT INTO Ratings VALUES (
'tt8936646',
6.8,
87
);

INSERT INTO Ratings VALUES (
'tt8946378',
7.9,
85
);

INSERT INTO Ratings VALUES (
'tt8949056',
6.1,
65
);

INSERT INTO Ratings VALUES (
'tt8951058',
7.1,
58
);

INSERT INTO Ratings VALUES (
'tt8954732',
6.1,
63
);

INSERT INTO Ratings VALUES (
'tt8972556',
3.5,
45
);

INSERT INTO Ratings VALUES (
'tt8976576',
5.7,
59
);

INSERT INTO Ratings VALUES (
'tt8976710',
4.5,
55
);

INSERT INTO Ratings VALUES (
'tt8983164',
6.6,
58
);

INSERT INTO Ratings VALUES (
'tt8983240',
6.7,
39
);

INSERT INTO Ratings VALUES (
'tt8988748',
7.2,
60
);

INSERT INTO Ratings VALUES (
'tt8997712',
4.6,
53
);

INSERT INTO Ratings VALUES (
'tt9010900',
5.1,
45
);

INSERT INTO Ratings VALUES (
'tt9014248',
4.2,
44
);

INSERT INTO Ratings VALUES (
'tt9026184',
4.7,
57
);

INSERT INTO Ratings VALUES (
'tt9032888',
5.8,
46
);

INSERT INTO Ratings VALUES (
'tt9056818',
7.6,
65
);

INSERT INTO Ratings VALUES (
'tt9063902',
7.2,
71
);

INSERT INTO Ratings VALUES (
'tt9068272',
4.0,
36
);

INSERT INTO Ratings VALUES (
'tt9086228',
5.5,
65
);

INSERT INTO Ratings VALUES (
'tt9100028',
4.9,
45
);

INSERT INTO Ratings VALUES (
'tt9109976',
6.2,
54
);

INSERT INTO Ratings VALUES (
'tt9115528',
6.0,
48
);

INSERT INTO Ratings VALUES (
'tt9139586',
6.1,
63
);

INSERT INTO Ratings VALUES (
'tt9149946',
4.6,
42
);

INSERT INTO Ratings VALUES (
'tt9150970',
5.4,
50
);

INSERT INTO Ratings VALUES (
'tt9176296',
5.2,
49
);

INSERT INTO Ratings VALUES (
'tt9204088',
5.2,
60
);

INSERT INTO Ratings VALUES (
'tt9204164',
5.8,
56
);

INSERT INTO Ratings VALUES (
'tt9219848',
6.0,
51
);

INSERT INTO Ratings VALUES (
'tt9239888',
6.2,
55
);

INSERT INTO Ratings VALUES (
'tt9252508',
5.2,
57
);

INSERT INTO Ratings VALUES (
'tt9253926',
3.4,
41
);

INSERT INTO Ratings VALUES (
'tt9257932',
6.4,
61
);

INSERT INTO Ratings VALUES (
'tt9261218',
6.4,
75
);

INSERT INTO Ratings VALUES (
'tt9264728',
4.4,
56
);

INSERT INTO Ratings VALUES (
'tt9270416',
3.8,
44
);

INSERT INTO Ratings VALUES (
'tt9310328',
6.4,
61
);

INSERT INTO Ratings VALUES (
'tt9316022',
7.9,
67
);

INSERT INTO Ratings VALUES (
'tt9326056',
7.3,
56
);

INSERT INTO Ratings VALUES (
'tt9345754',
6.4,
67
);

INSERT INTO Ratings VALUES (
'tt9351980',
7.4,
86
);

INSERT INTO Ratings VALUES (
'tt9354842',
6.1,
68
);

INSERT INTO Ratings VALUES (
'tt9358044',
7.3,
63
);

INSERT INTO Ratings VALUES (
'tt9358052',
7.4,
73
);

INSERT INTO Ratings VALUES (
'tt9358206',
7.8,
52
);

INSERT INTO Ratings VALUES (
'tt9395384',
6.1,
44
);

INSERT INTO Ratings VALUES (
'tt9398640',
6.1,
74
);

INSERT INTO Ratings VALUES (
'tt9411866',
5.3,
53
);

INSERT INTO Ratings VALUES (
'tt9412098',
7.2,
91
);

INSERT INTO Ratings VALUES (
'tt9412268',
6.3,
63
);

INSERT INTO Ratings VALUES (
'tt9419834',
4.5,
52
);

INSERT INTO Ratings VALUES (
'tt9426186',
5.7,
56
);

INSERT INTO Ratings VALUES (
'tt9441638',
5.2,
53
);

INSERT INTO Ratings VALUES (
'tt9465600',
4.5,
57
);

INSERT INTO Ratings VALUES (
'tt9484998',
7.4,
79
);

INSERT INTO Ratings VALUES (
'tt9495224',
7.1,
75
);

INSERT INTO Ratings VALUES (
'tt9506474',
7.1,
83
);

INSERT INTO Ratings VALUES (
'tt9537292',
7.3,
62
);

INSERT INTO Ratings VALUES (
'tt9564774',
5.5,
49
);

INSERT INTO Ratings VALUES (
'tt9567112',
7.0,
51
);

INSERT INTO Ratings VALUES (
'tt9577334',
6.9,
51
);

INSERT INTO Ratings VALUES (
'tt9600932',
6.4,
51
);

INSERT INTO Ratings VALUES (
'tt9612368',
4.3,
45
);

INSERT INTO Ratings VALUES (
'tt9613244',
6.5,
46
);

INSERT INTO Ratings VALUES (
'tt9617716',
7.5,
63
);

INSERT INTO Ratings VALUES (
'tt9617782',
7.1,
44
);

INSERT INTO Ratings VALUES (
'tt9619798',
5.8,
70
);

INSERT INTO Ratings VALUES (
'tt9624766',
2.9,
56
);

INSERT INTO Ratings VALUES (
'tt9632590',
5.6,
70
);

INSERT INTO Ratings VALUES (
'tt9636630',
4.8,
47
);

INSERT INTO Ratings VALUES (
'tt9646240',
5.8,
58
);

INSERT INTO Ratings VALUES (
'tt9647980',
7.1,
46
);

INSERT INTO Ratings VALUES (
'tt9660688',
5.6,
51
);

INSERT INTO Ratings VALUES (
'tt9683478',
6.9,
89
);

INSERT INTO Ratings VALUES (
'tt9689696',
4.9,
59
);

INSERT INTO Ratings VALUES (
'tt9708358',
8.2,
69
);

INSERT INTO Ratings VALUES (
'tt9735350',
6.9,
57
);

INSERT INTO Ratings VALUES (
'tt9735758',
6.2,
73
);

INSERT INTO Ratings VALUES (
'tt9735976',
5.5,
45
);

INSERT INTO Ratings VALUES (
'tt9738716',
6.4,
65
);

INSERT INTO Ratings VALUES (
'tt9760504',
6.1,
53
);

INSERT INTO Ratings VALUES (
'tt9777644',
6.5,
70
);

INSERT INTO Ratings VALUES (
'tt9777830',
7.4,
76
);

INSERT INTO Ratings VALUES (
'tt9778348',
4.7,
50
);

INSERT INTO Ratings VALUES (
'tt9779290',
4.5,
43
);

INSERT INTO Ratings VALUES (
'tt9779516',
6.5,
64
);

INSERT INTO Ratings VALUES (
'tt9794630',
5.7,
60
);

INSERT INTO Ratings VALUES (
'tt9799984',
6.3,
52
);

INSERT INTO Ratings VALUES (
'tt9806192',
7.5,
89
);

INSERT INTO Ratings VALUES (
'tt9806322',
6.4,
62
);

INSERT INTO Ratings VALUES (
'tt9809140',
5.1,
46
);

INSERT INTO Ratings VALUES (
'tt9810420',
4.9,
48
);

INSERT INTO Ratings VALUES (
'tt9815998',
5.6,
55
);

INSERT INTO Ratings VALUES (
'tt9820352',
5.9,
52
);

INSERT INTO Ratings VALUES (
'tt9827834',
6.8,
78
);

INSERT INTO Ratings VALUES (
'tt9844368',
4.6,
45
);

INSERT INTO Ratings VALUES (
'tt9860728',
5.7,
62
);

INSERT INTO Ratings VALUES (
'tt9898858',
5.2,
51
);

INSERT INTO Ratings VALUES (
'tt9902160',
7.0,
61
);

INSERT INTO Ratings VALUES (
'tt9916362',
6.4,
58
);

INSERT INTO BoxOffice VALUES (
'tt2395427',
1402805868
);

INSERT INTO BoxOffice VALUES (
'tt0478970',
519311965
);

INSERT INTO BoxOffice VALUES (
'tt2224026',
386041607
);

INSERT INTO BoxOffice VALUES (
'tt5884960',
386041607
);

INSERT INTO BoxOffice VALUES (
'tt1979388',
332207671
);

INSERT INTO BoxOffice VALUES (
'tt2452042',
246233113
);

INSERT INTO BoxOffice VALUES (
'tt1617661',
184287723
);

INSERT INTO BoxOffice VALUES (
'tt2888046',
156954938
);

INSERT INTO BoxOffice VALUES (
'tt3460252',
155760117
);

INSERT INTO BoxOffice VALUES (
'tt3332064',
128988320
);

INSERT INTO BoxOffice VALUES (
'tt1754656',
97571250
);

INSERT INTO BoxOffice VALUES (
'tt3848668',
97571250
);

INSERT INTO BoxOffice VALUES (
'tt5317732',
97571250
);

INSERT INTO BoxOffice VALUES (
'tt2938956',
72629670
);

INSERT INTO BoxOffice VALUES (
'tt1655441',
65663276
);

INSERT INTO BoxOffice VALUES (
'tt0810819',
64191523
);

INSERT INTO BoxOffice VALUES (
'tt1781922',
54418872
);

INSERT INTO BoxOffice VALUES (
'tt2752772',
53329150
);

INSERT INTO BoxOffice VALUES (
'tt3569230',
42972994
);

INSERT INTO BoxOffice VALUES (
'tt3722070',
41387687
);

INSERT INTO BoxOffice VALUES (
'tt2080374',
34441873
);

INSERT INTO BoxOffice VALUES (
'tt4535650',
31994323
);

INSERT INTO BoxOffice VALUES (
'tt3077214',
31972096
);

INSERT INTO BoxOffice VALUES (
'tt2140379',
31807156
);

INSERT INTO BoxOffice VALUES (
'tt2006295',
27972023
);

INSERT INTO BoxOffice VALUES (
'tt3715320',
27391084
);

INSERT INTO BoxOffice VALUES (
'tt3316948',
27262374
);

INSERT INTO BoxOffice VALUES (
'tt3498820',
1153296293
);

INSERT INTO BoxOffice VALUES (
'tt3748528',
1056057273
);

INSERT INTO BoxOffice VALUES (
'tt2277860',
1028570889
);

INSERT INTO BoxOffice VALUES (
'tt2948356',
1023784195
);

INSERT INTO BoxOffice VALUES (
'tt1211837',
677718395
);

INSERT INTO BoxOffice VALUES (
'tt3521164',
643331111
);

INSERT INTO BoxOffice VALUES (
'tt3385516',
543934105
);

INSERT INTO BoxOffice VALUES (
'tt3416828',
408579038
);

INSERT INTO BoxOffice VALUES (
'tt2660888',
343471816
);

INSERT INTO BoxOffice VALUES (
'tt3065204',
321370008
);

INSERT INTO BoxOffice VALUES (
'tt5074352',
303723636
);

INSERT INTO BoxOffice VALUES (
'tt2567026',
299457024
);

INSERT INTO BoxOffice VALUES (
'tt1935859',
296482446
);

INSERT INTO BoxOffice VALUES (
'tt4846340',
235956898
);

INSERT INTO BoxOffice VALUES (
'tt1289401',
229147509
);

INSERT INTO BoxOffice VALUES (
'tt2543164',
203388186
);

INSERT INTO BoxOffice VALUES (
'tt3691740',
195243411
);

INSERT INTO BoxOffice VALUES (
'tt4624424',
183679278
);

INSERT INTO BoxOffice VALUES (
'tt4786282',
149368835
);

INSERT INTO BoxOffice VALUES (
'tt5328340',
149368835
);

INSERT INTO BoxOffice VALUES (
'tt2788732',
143695338
);

INSERT INTO BoxOffice VALUES (
'tt5700672',
92742323
);

INSERT INTO BoxOffice VALUES (
'tt4682786',
88616021
);

INSERT INTO BoxOffice VALUES (
'tt2005151',
86434523
);

INSERT INTO BoxOffice VALUES (
'tt4034228',
78988148
);

INSERT INTO BoxOffice VALUES (
'tt3799694',
71261763
);

INSERT INTO BoxOffice VALUES (
'tt3095734',
64493915
);

INSERT INTO BoxOffice VALUES (
'tt0475290',
63647656
);

INSERT INTO BoxOffice VALUES (
'tt2025690',
52099090
);

INSERT INTO BoxOffice VALUES (
'tt5215952',
49851770
);

INSERT INTO BoxOffice VALUES (
'tt4136084',
48902953
);

INSERT INTO BoxOffice VALUES (
'tt4824302',
48782670
);

INSERT INTO BoxOffice VALUES (
'tt3416532',
47309313
);

INSERT INTO BoxOffice VALUES (
'tt1540011',
45173154
);

INSERT INTO BoxOffice VALUES (
'tt4513674',
43763247
);

INSERT INTO BoxOffice VALUES (
'tt2652118',
38659039
);

INSERT INTO BoxOffice VALUES (
'tt2582782',
37879877
);

INSERT INTO BoxOffice VALUES (
'tt4016934',
37692886
);

INSERT INTO BoxOffice VALUES (
'tt3774114',
37357216
);

INSERT INTO BoxOffice VALUES (
'tt4559006',
31668920
);

INSERT INTO BoxOffice VALUES (
'tt5998744',
30381402
);

INSERT INTO BoxOffice VALUES (
'tt4550098',
30311857
);

INSERT INTO BoxOffice VALUES (
'tt5323662',
30277098
);

INSERT INTO BoxOffice VALUES (
'tt2800050',
25730120
);

INSERT INTO BoxOffice VALUES (
'tt4629266',
25081168
);

INSERT INTO BoxOffice VALUES (
'tt1124037',
25035950
);

INSERT INTO BoxOffice VALUES (
'tt4685554',
24644317
);

INSERT INTO BoxOffice VALUES (
'tt0490215',
23834809
);

INSERT INTO BoxOffice VALUES (
'tt4669186',
23591043
);

INSERT INTO BoxOffice VALUES (
'tt4981636',
23316139
);

INSERT INTO BoxOffice VALUES (
'tt1712261',
23177948
);

INSERT INTO BoxOffice VALUES (
'tt3896198',
863756051
);

INSERT INTO BoxOffice VALUES (
'tt3501632',
853977126
);

INSERT INTO BoxOffice VALUES (
'tt2380307',
807816196
);

INSERT INTO BoxOffice VALUES (
'tt7002100',
807816196
);

INSERT INTO BoxOffice VALUES (
'tt1790809',
794861794
);

INSERT INTO BoxOffice VALUES (
'tt1485796',
434993183
);

INSERT INTO BoxOffice VALUES (
'tt3606752',
383930656
);

INSERT INTO BoxOffice VALUES (
'tt3411444',
296069199
);

INSERT INTO BoxOffice VALUES (
'tt5580390',
195243464
);

INSERT INTO BoxOffice VALUES (
'tt5956100',
87320000
);

INSERT INTO BoxOffice VALUES (
'tt4925292',
78965611
);

INSERT INTO BoxOffice VALUES (
'tt1961175',
67234188
);

INSERT INTO BoxOffice VALUES (
'tt2226597',
62832209
);

INSERT INTO BoxOffice VALUES (
'tt2932536',
62187529
);

INSERT INTO BoxOffice VALUES (
'tt5462602',
56411585
);

INSERT INTO BoxOffice VALUES (
'tt5813366',
48825526
);

INSERT INTO BoxOffice VALUES (
'tt5439796',
48453605
);

INSERT INTO BoxOffice VALUES (
'tt6788942',
44560421
);

INSERT INTO BoxOffice VALUES (
'tt6003368',
40140972
);

INSERT INTO BoxOffice VALUES (
'tt6595896',
37552144
);

INSERT INTO BoxOffice VALUES (
'tt5719700',
37270721
);

INSERT INTO BoxOffice VALUES (
'tt3896102',
35704046
);

INSERT INTO BoxOffice VALUES (
'tt5478478',
35669017
);

INSERT INTO BoxOffice VALUES (
'tt2072233',
32917353
);

INSERT INTO BoxOffice VALUES (
'tt6769508',
32783733
);

INSERT INTO BoxOffice VALUES (
'tt3521126',
29820616
);

INSERT INTO BoxOffice VALUES (
'tt5456546',
28733523
);

INSERT INTO BoxOffice VALUES (
'tt1536537',
27975429
);

INSERT INTO BoxOffice VALUES (
'tt5592248',
27869129
);

INSERT INTO BoxOffice VALUES (
'tt1730768',
26152835
);

INSERT INTO BoxOffice VALUES (
'tt6317962',
25672406
);

INSERT INTO BoxOffice VALUES (
'tt4686844',
24646055
);

INSERT INTO BoxOffice VALUES (
'tt4154756',
2048359754
);

INSERT INTO BoxOffice VALUES (
'tt1825683',
1346913161
);

INSERT INTO BoxOffice VALUES (
'tt3606756',
1242805359
);

INSERT INTO BoxOffice VALUES (
'tt1727824',
903655259
);

INSERT INTO BoxOffice VALUES (
'tt5095030',
622674139
);

INSERT INTO BoxOffice VALUES (
'tt5848272',
529323962
);

INSERT INTO BoxOffice VALUES (
'tt3778644',
392924807
);

INSERT INTO BoxOffice VALUES (
'tt5028340',
349537494
);

INSERT INTO BoxOffice VALUES (
'tt4575576',
197744377
);

INSERT INTO BoxOffice VALUES (
'tt7183578',
188116796
);

INSERT INTO BoxOffice VALUES (
'tt5523010',
173961069
);

INSERT INTO BoxOffice VALUES (
'tt1620680',
132675864
);

INSERT INTO BoxOffice VALUES (
'tt8028526',
96845907
);

INSERT INTO BoxOffice VALUES (
'tt6791096',
94539426
);

INSERT INTO BoxOffice VALUES (
'tt6869538',
90040771
);

INSERT INTO BoxOffice VALUES (
'tt6452574',
76693052
);

INSERT INTO BoxOffice VALUES (
'tt6266538',
76073488
);

INSERT INTO BoxOffice VALUES (
'tt7946836',
74922830
);

INSERT INTO BoxOffice VALUES (
'tt9257932',
74922830
);

INSERT INTO BoxOffice VALUES (
'tt2126357',
72282227
);

INSERT INTO BoxOffice VALUES (
'tt8075192',
67999335
);

INSERT INTO BoxOffice VALUES (
'tt4560436',
66308758
);

INSERT INTO BoxOffice VALUES (
'tt5104604',
64241499
);

INSERT INTO BoxOffice VALUES (
'tt6306064',
59945012
);

INSERT INTO BoxOffice VALUES (
'tt6850820',
53918723
);

INSERT INTO BoxOffice VALUES (
'tt1072748',
44019588
);

INSERT INTO BoxOffice VALUES (
'tt10970452',
36075317
);

INSERT INTO BoxOffice VALUES (
'tt6910020',
36075317
);

INSERT INTO BoxOffice VALUES (
'tt4844148',
35487190
);

INSERT INTO BoxOffice VALUES (
'tt1226837',
31711319
);

INSERT INTO BoxOffice VALUES (
'tt1285009',
31039126
);

INSERT INTO BoxOffice VALUES (
'tt7775622',
29390279
);

INSERT INTO BoxOffice VALUES (
'tt7218518',
29045020
);

INSERT INTO BoxOffice VALUES (
'tt6900448',
28756961
);

INSERT INTO BoxOffice VALUES (
'tt1308728',
27506452
);

INSERT INTO BoxOffice VALUES (
'tt6588966',
26055222
);

INSERT INTO BoxOffice VALUES (
'tt8108230',
23740788
);

INSERT INTO BoxOffice VALUES (
'tt4154796',
2799439100
);

INSERT INTO BoxOffice VALUES (
'tt4520988',
1450026933
);

INSERT INTO BoxOffice VALUES (
'tt4154664',
1128274794
);

INSERT INTO BoxOffice VALUES (
'tt1979376',
1073394593
);

INSERT INTO BoxOffice VALUES (
'tt7605074',
699856699
);

INSERT INTO BoxOffice VALUES (
'tt4777008',
491730089
);

INSERT INTO BoxOffice VALUES (
'tt8946378',
312897920
);

INSERT INTO BoxOffice VALUES (
'tt6450804',
261119292
);

INSERT INTO BoxOffice VALUES (
'tt6751668',
258098332
);

INSERT INTO BoxOffice VALUES (
'tt1620981',
203044905
);

INSERT INTO BoxOffice VALUES (
'tt2066051',
195320400
);

INSERT INTO BoxOffice VALUES (
'tt8372368',
195320400
);

INSERT INTO BoxOffice VALUES (
'tt6324278',
188623517
);

INSERT INTO BoxOffice VALUES (
'tt2076298',
176345966
);

INSERT INTO BoxOffice VALUES (
'tt1025100',
173469516
);

INSERT INTO BoxOffice VALUES (
'tt6095472',
147792047
);

INSERT INTO BoxOffice VALUES (
'tt6189022',
146661977
);

INSERT INTO BoxOffice VALUES (
'tt7547410',
120597108
);

INSERT INTO BoxOffice VALUES (
'tt0837563',
113118226
);

INSERT INTO BoxOffice VALUES (
'tt1298644',
97409779
);

INSERT INTO BoxOffice VALUES (
'tt8364368',
91542097
);

INSERT INTO BoxOffice VALUES (
'tt1206885',
91490353
);

INSERT INTO BoxOffice VALUES (
'tt4126476',
69497587
);

INSERT INTO BoxOffice VALUES (
'tt6394270',
61404394
);

INSERT INTO BoxOffice VALUES (
'tt5727208',
50023780
);

INSERT INTO BoxOffice VALUES (
'tt8772262',
47850980
);

INSERT INTO BoxOffice VALUES (
'tt7329656',
47582563
);

INSERT INTO BoxOffice VALUES (
'tt7549996',
45701880
);

INSERT INTO BoxOffice VALUES (
'tt8663516',
44907074
);

INSERT INTO BoxOffice VALUES (
'tt6193408',
43100248
);

INSERT INTO BoxOffice VALUES (
'tt6811018',
32140970
);

INSERT INTO BoxOffice VALUES (
'tt8856470',
27347118
);

INSERT INTO BoxOffice VALUES (
'tt6348138',
26565710
);

INSERT INTO BoxOffice VALUES (
'tt1489887',
24959607
);

INSERT INTO BoxOffice VALUES (
'tt8333746',
23841090
);

INSERT INTO BoxOffice VALUES (
'tt7139936',
23805899
);

INSERT INTO BoxOffice VALUES (
'tt4364194',
23712090
);

INSERT INTO BoxOffice VALUES (
'tt8637428',
23076657
);

INSERT INTO BoxOffice VALUES (
'tt6107548',
22386555
);

INSERT INTO BoxOffice VALUES (
'tt7146812',
141940042
);

INSERT INTO BoxOffice VALUES (
'tt2948372',
121903885
);

INSERT INTO BoxOffice VALUES (
'tt6587640',
49276818
);

INSERT INTO BoxOffice VALUES (
'tt10362466',
47990414
);

INSERT INTO BoxOffice VALUES (
'tt10059518',
44331465
);

INSERT INTO BoxOffice VALUES (
'tt10773090',
37389889
);

INSERT INTO BoxOffice VALUES (
'tt1838556',
31220247
);

INSERT INTO BoxOffice VALUES (
'tt9537292',
28477890
);

INSERT INTO BoxOffice VALUES (
'tt9086228',
22304357
);

INSERT INTO BoxOffice VALUES (
'tt9779516',
16069730
);

INSERT INTO BoxOffice VALUES (
'tt10288566',
12745392
);

INSERT INTO BoxOffice VALUES (
'tt9204164',
10987975
);

INSERT INTO BoxOffice VALUES (
'tt8242084',
10200000
);

INSERT INTO BoxOffice VALUES (
'tt8774798',
9766489
);

INSERT INTO BoxOffice VALUES (
'tt10886166',
9458590
);

INSERT INTO BoxOffice VALUES (
'tt2702920',
8721243
);

INSERT INTO BoxOffice VALUES (
'tt10065694',
7792716
);

INSERT INTO BoxOffice VALUES (
'tt1086064',
6274027
);

INSERT INTO BoxOffice VALUES (
'tt7134096',
5989583
);

INSERT INTO BoxOffice VALUES (
'tt12381488',
5184368
);

INSERT INTO BoxOffice VALUES (
'tt12800914',
5184368
);

INSERT INTO BoxOffice VALUES (
'tt34978640',
5184368
);

INSERT INTO BoxOffice VALUES (
'tt8633478',
5184368
);

COMMIT;
