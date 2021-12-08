CREATE TABLE Character(
    c_name VARCHAR(20) PRIMARY KEY,
    c_element VARCHAR(20),
    c_ascentmat VARCHAR(100),
    c_jewel VARCHAR (100),
    c_local VARCHAR (100),
    c_commonmat VARCHAR(100),
    c_talentbook VARCHAR(100),
    c_weapontype VARCHAR(20),
    c_role VARCHAR(20),
    c_rarity DECIMAL(2,0)
);

CREATE TABLE Weapon(
    w_name VARCHAR(100) PRIMARY KEY,
    w_weapontype VARCHAR(20),
    w_weaponmat VARCHAR(100),
    w_ascentmat VARCHAR(100),
    w_commonmat VARCHAR(100),
    w_rarity DECIMAL(2,0)
);

CREATE TABLE Talent(
    t_charname VARCHAR(100)PRIMARY KEY,
    t_commonmat VARCHAR(100),
    t_talentbook VARCHAR(50),
    t_talentmat VARCHAR(50)
);

CREATE Table NBoss(
    nb_name VARCHAR(50),
    nb_jewel VARCHAR(100),
    nb_ascentmat VARCHAR(50)
);

CREATE Table WBoss(
    wb_name VARCHAR(50),
    wb_jewel VARCHAR(100),
    wb_talentmat VARCHAR(100)
);

CREATE TABLE Monster(
    m_name VARCHAR(100) PRIMARY KEY,
    m_type VARCHAR(100),
    m_ascentmat VARCHAR(50),
    m_commonmat VARCHAR(100)
);

CREATE TABLE Jewels(
    j_name VARCHAR(20) PRIMARY KEY,
    j_jewel VARCHAR(100),
    j_rarity DECIMAL(2,0)
);

CREATE TABLE Domain(
    d_name VARCHAR(50),
    d_time VARCHAR(50),
    d_weaponmat VARCHAR(50)
);

CREATE TABLE CharMat(
    cm_name varchar(20),
    cm_commonmat varchar(20)
);
 
 
CREATE TABLE CharWeap(
    cw_name VARCHAR(20),
    cw_weapontype VARCHAR(20)
);

CREATE TABLE WeapMat(
    wm_name varchar(100),
    wm_commonmat varchar(20),
    wm_ascentmat varchar(20)
);


-------------------------------------
--Characters
INSERT INTO Character
VALUES
    ('Traveler', 'Adaptive', 'N/A', 'Brilliant Diamond', 'Windwheel Aster', 'Hilichurl Mask', 'Freedom', 'Sword', 'Utility', '5'),
--Anemo
    ('Jean', 'Anemo', 'Hurricane Seed', 'Vayuda Turquoise', 'Dandelion Seed', 'Hilichurl Mask', 'Resistance', 'Sword', 'Utility', '5'),
    ('Kaedehara Kazuha', 'Anemo', 'Marionette Core', 'Vayuda Turquoise', 'Sea Ganoderma', 'Treasure Hoarder Insignia', 'Diligence', 'Sword', 'Sub DPS', '5'),
    ('Sayu', 'Anemo', 'Marionette Core', 'Vayuda Turquoise', 'Crystal Marrow', 'Whopperflower Nectar', 'Light', 'Claymore', 'Sub DPS', '4'),
    ('Sucrose', 'Anemo', 'Hurricane Seed', 'Vayuda Turquoise', 'Windwheel Aster', 'Whopperflower Nectar', 'Freedom', 'Catalyst', 'Utility', '4'),
    ('Venti', 'Anemo', 'Hurricane Seed', 'Vayuda Turquoise', 'Cecilia', 'Slime', 'Ballad', 'Bows', 'Utility', '5'),
    ('Xiao', 'Anemo', 'Juvenile Jade', 'Vayuda Turquoise', 'Qingxin', 'Slime', 'Prosperity', 'Polearm', 'Main DPS', '5'),
--Cryo    
    ('Aloy', 'Cryo', 'Crystalline Bloom', 'Shivada Jade', 'Crystal Marrow', 'Spectral Core', 'Freedom', 'Bows', 'Sub DPS', '5'),
    ('Chongyun', 'Cryo', 'Hoarfrost Core', 'Shivada Jade', 'Cor Lapis', 'Hilichurl Mask', 'Diligence', 'Claymore', 'Utility', '4'),
    ('Diona', 'Cryo', 'Hoarfrost Core', 'Shivada Jade', 'Caila Lily', 'Hilichurl Arrowhead', 'Freedom', 'Bows', 'Utility', '4'),
    ('Eula', 'Cryo', 'Crystalline Bloom', 'Shivada Jade', 'Dandelion Seed', 'Hilichurl Mask', 'Resistance', 'Claymore', 'Main DPS', '5'),
    ('Ganyu', 'Cryo', 'Hoarfrost Core', 'Shivada Jade', 'Qingxin', 'Whopperflower Nectar', 'Diligence', 'Bows', 'Main DPS', '5'),
    ('Kaeya', 'Cryo', 'Hoarfrost Core', 'Shivada Jade', 'Caila Lily', 'Treasure Hoarder Insignia', 'Ballad', 'Sword', 'Sub DPS', '4'),
    ('Kamisato Ayaka', 'Cryo', 'Perpetual Heart', 'Shivada Jade', 'Sakura Bloom', 'Nobushi Handguard', 'Elegance', 'Sword', 'Main DPS', '5'),
    ('Qiqi', 'Cryo', 'Hoarfrost Core', 'Shivada Jade', 'Violetgrass', 'Samachurl Scroll', 'Prosperity', 'Sword', 'Utility', '5'),
    ('Rosaria', 'Cryo', 'Hoarfrost Core', 'Shivada Jade', 'Valberry', 'Fatui Insignia', 'Ballad', 'Polearm', 'Sub DPS', '4'),
--Electro
    ('Beidou', 'Electro', 'Lightning Prism', 'Vajrada Amethyst', 'Noctilucous Jade', 'Treasure Hoarder Insignia', 'Gold', 'Claymore', 'Sub DPS', '4'),
    ('Fischl', 'Electro', 'Lightning Prism', 'Vajrada Amethyst', 'Small Lamp Grass', 'Hilichurl Arrowhead', 'Ballad', 'Bows', 'Sub DPS', '4'),
    ('Keqing', 'Electro', 'Lightning Prism', 'Vajrada Amethyst', 'Cor Lapis', 'Whopperflower Nectar', 'Prosperity', 'Sword', 'Main DPS', '5'),
    ('Kujou Sara', 'Electro', 'Storm Beads', 'Vajrada Amethyst', 'Dendrobium', 'Hilichurl Mask', 'Elegance', 'Bows', 'Utility', '4'),
    ('Lisa', 'Electro', 'Lightning Prism', 'Vajrada Amethyst', 'Valberry', 'Slime', 'Ballad', 'Catalyst', 'Sbu DPS', '4'),
    ('Raiden Shogun', 'Electro', 'Storm Beads', 'Vajrada Amethyst', 'Amakumo Fruit', 'Nobushi Handguard', 'Light', 'Polearm', 'Utility', '5'),
    ('Razor', 'Electro', 'Lightning Prism', 'Vajrada Amethyst', 'Wolfhook', 'Hilichurl Mask', 'Resistance', 'Claymore', 'Main DPS', '4'),
--Geo
    ('Albedo', 'Geo', 'Basalt Pillar', 'Prithiva Topaz', 'Cecilia', 'Samachurl Scroll', 'Ballad', 'Sword', 'Sub DPS', '5'),
    ('Ningguang', 'Geo', 'Basalt Pillar', 'Prithiva Topaz', 'Glaze Lily', 'Fatui Insignia', 'Prosperity', 'Catalyst', 'Main DPS', '4'),
    ('Noelle', 'Geo', 'Basalt Pillar', 'Prithiva Topaz', 'Valberry', 'Hilichurl Mask', 'Resistance', 'Claymore', 'Main DPS', '4'),
    ('Zhongli', 'Geo', 'Basalt Pillar', 'Prithiva Topaz', 'Cor Lapis', 'Slime', 'Gold', 'Polearm', 'Utility', '5'),
--Hydro
    ('Barbara', 'Hydro', 'Cleansing Heart', 'Varunada Lazurite', 'Philanemo Mushroom', 'Samachurl Scroll', 'Freedom', 'Catalyst', 'Utility', '4'),
    ('Mona', 'Hydro', 'Cleansing Heart', 'Varunada Lazurite', 'Philanemo Mushroom', 'Whopperflower Nectar', 'Resistance', 'Catalyst', 'Sub DPS', '5'),
    ('Sangonomiya Kokomi', 'Hydro', 'Dew of Repudiation', 'Varunada Lazurite', 'Sango Pearl', 'Spectral Core', 'Transience', 'Catalyst', 'Utility', '5'),
    ('Tartaglia', 'Hydro', 'Cleansing Heart', 'Varunada Lazurite', 'Starconch', 'Fatui Insignia', 'Freedom', 'Bows', 'Main DPS', '5'),
    ('Xingqiu', 'Hydro', 'Cleansing Heart', 'Varunada Lazurite', 'Silk Flower', 'Hilichurl Mask', 'Gold', 'Sword', 'Sub DPS', '4'),
--pyro
    ('Amber', 'Pyro', 'Everflame Seed', 'Agnidus Agate', 'Small Lamp Grass', 'Hilichurl Arrowhead', 'Freedom', 'Bows', 'Sub DPS', '4'),
    ('Bennett', 'Pyro', 'Everflame Seed', 'Agnidus Agate', 'Windwheel Aster', 'Treasure Hoarder Insignia', 'Resistance', 'Sword', 'Utility', '4'),
    ('Diluc', 'Pyro', 'Everflame Seed', 'Agnidus Agate', 'Small Lamp Grass', 'Fatui Insignia', 'Resistance', 'Claymore', 'Main DPS', '5'),
    ('Hu Tao', 'Pyro', 'Juvenile Jade', 'Agnidus Agate', 'Silk Flower', 'Whopperflower Nectar', 'Diligence', 'Polearm', 'Main DPS', '5'),
    ('Klee', 'Pyro', 'Everflame Seed', 'Agnidus Agate', 'Philanemo Mushroom', 'Samachurl Scroll', 'Freedom', 'Catalyst', 'Main DPS', '5'),
    ('Thoma', 'Pyro', 'Smoldering Pearl', 'Agnidus Agate', 'Fluorescent Fungus', 'Treasure Hoarder Insignia', 'Transience', 'Polearm', 'Utility', '4'),
    ('Xiangling', 'Pyro', 'Everflame Seed', 'Agnidus Agate', 'Jueyun Chili', 'Slime', 'Diligence', 'Polearm', 'Sub DPS', '4'),
    ('Xinyan', 'Pyro', 'Everflame Seed', 'Agnidus Agate', 'Violetgrass', 'Treasure Hoarder Insignia', 'Gold', 'Claymore', 'Main DPS', '4'),
    ('Yanfei', 'Pyro', 'Juvenile Jade', 'Agnidus Agate', 'Noctilucous Jade', 'Treasure Hoarder Insignia', 'Gold', 'Catalyst', 'Main DPS', '4'),
    ('Yoimiya', 'Pyro', 'Smoldering Pearl', 'Agnidus Agate', 'Naku Weed', 'Samachurl Scroll', 'Transience', 'Bows', 'Main DPS', '5');

INSERT INTO Weapon
VALUES
--Sword template ('1','2','3','4','5','6'),
    ('Amenoma Kageuchi', 'Sword', 'Branch of a Distant Sea', 'Sentinel Chaos Part', 'Nobushi Handguard', '4'),
    ('Aquila Favonia', 'Sword', 'Decarabian Tile', 'Hilichurl Horn', 'Hilichurl Arrowhead', '5'),
    ('Blackcliff Longsword', 'Sword', 'Guyun Pillar', 'Sacrificial Knife', 'Hilichurl Arrowhead', '4'),
    ('Cool Steel', 'Sword', 'Decarabian Tile', 'Hilichurl Horn', 'Hilichurl Arrowhead', '3'),
    ('Dark Iron Sword', 'Sword', 'Guyun Pillar', 'Sacrificial Knife', 'Hilichurl Mask', '3'),
    ('Dull Blade', 'Sword', 'Decarabian Tile', 'Hilichurl Horn', 'Hilichurl Arrowhead', '1'),
    ('Favonius Sword', 'Sword', 'Decarabian Tile', 'Hilichurl Horn', 'Hilichurl Arrowhead', '4'),
    ('Festering Desire', 'Sword', 'Gladiator Shackle', 'Hilichurl Horn', 'Fatui Insignia', '4'),
    ('Fillet Blade', 'Sword', 'Elixir', 'Mist Grass', 'Treasure Hoarder Insignia', '3'),
    ('Freedom-Sworn', 'Sword', 'Gladiator Shackle', 'Chaos Part', 'Samachurl Scroll', '5'),
    ('Harbinger of Dawn', 'Sword', 'Boreal Wolf Teeth', 'Ley Line', 'Slime', '3'),
    ('Iron Sting', 'Sword', 'Aerosiderite', 'Bone Shard', 'Whopperflower Nectar', '4'),
    ('Lions roar', 'Sword', 'Guyun Pillar', 'Sacrificial Knife', 'Treasure Hoarder Insignia', '4'),
    ('Mistsplitter Reforged', 'Sword', 'Branch of a Distant Sea', 'Sentinel Chaos Part', 'Nobushi Handguard', '5'),
    ('Primordial Jade Cutter', 'Sword', 'Elixir', 'Mist Grass', 'Treasure Hoarder Insignia', '5'),
    ('Prototype Rancour', 'Sword', 'Elixir', 'Mist Grass', 'Fatui Insignia', '4'),
    ('Royal Longsword', 'Sword', 'Decarabian Tile', 'Hilichurl Horn', 'Hilichurl Mask', '4'),
    ('Sacrificial Sword', 'Sword', 'Gladiator Shackle', 'Chaos Part', 'Samachurl Scroll', '4'),
    ('Silver Sword', 'Sword', 'Decarabian Tile', 'Hilichurl Horn', 'Hilichurl Arrowhead', '2'),
    ('Skyrider Sword', 'Sword', 'Aerosiderite', 'Bone Shard', 'Fatui Insignia', '3'),
    ('Skyward Blade', 'Sword', 'Boreal Wolf Teeth', 'Ley Line', 'Slime', '5'),
    ('Summit Shaper', 'Sword', 'Guyun Pillar', 'Sacrificial Knife', 'Hilichurl Mask', '5'),
    ('Sword of Descension', 'Sword', 'Boreal Wolf Teeth', 'Ley Line', 'Treasure Hoarder Insignia', '4'),
    ('The Alley Flash', 'Sword', 'Decarabian Tile', 'Hilichurl Horn', 'Samachurl Scroll', '4'),
    ('The Black Sword', 'Sword', 'Boreal Wolf Teeth', 'Ley Line', 'Slime', '4'),
    ('The Flute', 'Sword', 'Boreal Wolf Teeth', 'Ley Line', 'Slime', '4'),
    ('Travelers Handy Sword', 'Sword', 'Gladiator Shackle', 'Chaos Part', 'Samachurl Scroll', '3'),
--Claymore
    ('Akuomaru','Claymore','Branch of a Distant Sea','Concealed','Nobushi Handguard','4'),
    ('Blackcliff Slasher','Claymore','Elixir','Mist Grass','Fatui Insignia','4'),
    ('Bloodtainted Greatsword','Claymore','Boreal Wolf Teeth','Ley Line','Hilichurl Arrowhead','3'),
    ('Debate Club','Claymore','Elixir','Mist Grass','Hilichurl Mask','3'),
    ('Favonius Greatsword','Claymore','Gladiator Shackle','Chaos Part','Fatui Insignia','4'),
    ('Ferrous Shadow','Claymore','Decarabian Tile','Hilichurl Horn','Whopperflower Nectar','3'),
    ('Katsuragikiri Nagamasa','Claymore','Narukami Magatamas','Sentinel Chaos Part','Nobushi Handguard','4'),
    ('Lithic Blade','Claymore','Guyun Pillar','Sacrificial Knife','Hilichurl Arrowhead','4'),
    ('Luxurious Sea-Lord','Claymore','Aerosiderite','Bone Shard','Slime','4'),
    ('Old Mercs Pal','Claymore','Boreal Wolf Teeth','Ley Line','Slime','2'),
    ('Prototype Archaic','Claymore','Aerosiderite','Bone Shard','Hilichurl Mask','4'),
    ('Quartz','Claymore','Guyun Pillar','Sacrificial Knife','Samachurl Scroll','3'),
    ('Rainslasher','Claymore','Elixir','Mist Grass','Samachurl Scroll','4'),
    ('Royal Greatsword','Claymore','Gladiator Shackle','Chaos Part','Slime','4'),
    ('Sacrificial Greatsword','Claymore','Boreal Wolf Teeth','Ley Line','Hilichurl Arrowhead','4'),
    ('Serpent Spine','Claymore','Aerosiderite','Bone Shard','Whopperflower Nectar','4'),
    ('Skyrider Greatsword','Claymore','Aerosiderite','Bone Shard','Treasure Hoarder Insignia','3'),
    ('Skyward Pride','Claymore','Boreal Wolf Teeth','Ley Line','Slime','5'),
    ('Snow-Tombed Starsilver','Claymore','Decarabian Tile','Hilichurl Horn','Slime','4'),
    ('Song of Broken Pines','Claymore','Decarabian Tile','Hilichurl Horn','Hilichurl Mask','5'),
    ('The Bell','Claymore','Decarabian Tile','Hilichurl Horn','Whopperflower Nectar','4'),
    ('The Unforged','Claymore','Elixir','Mist Grass','Treasure Hoarder Insignia','5'),
    ('Waster Greatsword','Claymore','Boreal Wolf Teeth','Ley Line','Slime','1'),
    ('White Iron Greatsword','Claymore','Gladiator Shackle','Chaos Part','Slime','3'),
    ('Whiteblind','Claymore','Guyun Pillar','Sacrificial Knife','Treasure Hoarder Insignia','4'),
    ("Wolf's Gravestone",'Claymore','Gladiator Shackle','Chaos Part','Samachurl Scroll','5'),
--Polearm
    ('The Catch','Polearm','Oni Masks','Sentinel Chaos Part','Spectral Core','4'),
    ("Beginner's Protector'",'Polearm','Gladiator Shackle','Chaos Part','Samachurl Scroll','1'),
    ('Black Tassel','Polearm','Aerosiderite','Bone Shard','Hilichurl Arrowhead','3'),
    ('Blackcliff Pole','Polearm','Elixir','Mist Grass','Fatui Insignia','4'),
    ('Crescent Pike','Polearm','Guyun Pillar','Sacrificial Knife','Treasure Hoarder Insignia','4'),
    ('Deathmatch','Polearm','Boreal Wolf Teeth','Ley Line','Whopperflower Nectar','4'),
    ("Dragon's Bane",'Polearm','Elixir','Mist Grass','Samachurl Scroll','4'),
    ('Dragonspine Spear','Polearm','Boreal Wolf Teeth','Mist Grass','Fatui Insignia','4'),
    ('Engulfing Lightning','Polearm','Oni Masks','Sentinel Chaos Part','Nobushi Handguard','5'),
    ('Favonius Lance','Polearm','Gladiator Shackle','Chaos Part','Slime','4'),
    ('Halberd','Polearm','Elixir','Mist Grass','Whopperflower Nectar','3'),
    ('Iron Point','Polearm','Gladiator Shackle','Chaos Part','Samachurl Scroll','2'),
    ('Kitain Cross Spear','Polearm','Oni Masks','Sentinel Chaos Part','Treasure Hoarder Insignia','4'),
    ('Lithic Spear','Polearm','Aerosiderite','Bone Shard','Hilichurl Arrowhead','4'),
    ('Primordial Jade Winged-Spear','Polearm','Guyun Pillar','Sacrificial Knife','Fatui Insignia','5'),
    ('Prototype Starglitter','Polearm','Aerosiderite','Bone Shard','Hilichurl Mask','4'),
    ('Royal Spear','Polearm','Elixir','Mist Grass','Fatui Insignia','4'),
    ('Skyward Spine','Polearm','Gladiator Shackle','Chaos Part','Samachurl Scroll','5'),
    ('Staff of Homa','Polearm','Aerosiderite','Ley Line','Slime','5'),
    ('Vortex Vanquisher','Polearm','Aerosiderite','Bone Shard','Treasure Hoarder Insignia','5'),
    ("Wavebreaker's Fin",'Polearm','Oni Masks','Concealed','Nobushi Handguard','4'),
    ('White Tassel','Polearm','Guyun Pillar','Sacrificial Knife','Fatui Insignia','3'),    
--Catalyst
    ("Apprentice's Notes",'Catalyst','Decarabian Tile','Hilichurl Horn','Hilichurl Mask','1'),
    ('Blackcliff Agate','Catalyst','Guyun Pillar','Sacrificial Knife','Samachurl Scroll','4'),
    ('Dodoco Tales','Catalyst','Boreal Wolf Teeth','Ley Line','Hilichurl Mask','4'),
    ('Emerald Orb','Catalyst','Guyun Pillar','Sacrificial Knife','Treasure Hoarder Insignia','3'),
    ('Eye of Perception','Catalyst','Elixir','Mist Grass','Hilichurl Mask','4'),
    ('Favonius Codex','Catalyst','Decarabian Tile','Hilichurl Horn','Samachurl Scroll','4'),
    ('Frostbearer','Catalyst','Gladiator Shackle','Chaos Part','Whopperflower Nectar','4'),
    ('Hakushin Ring','Catalyst','Branch of a Distant Sea','Prisms','Samachurl Scroll','4'),
    ('Lost Prayer to the Sacred Winds','Catalyst','Gladiator Shackle','Chaos Part','Slime','5'),
    ('Magic Guide','Catalyst','Decarabian Tile','Hilichurl Horn','Slime','3'),
    ('Mappa Mare','Catalyst','Aerosiderite','Bone Shard','Slime','4'),
    ('Memory of Dust','Catalyst','Aerosiderite','Bone Shard','Hilichurl Mask','5'),
    ('Otherworldly Story','Catalyst','Gladiator Shackle','Chaos Part','Hilichurl Mask','3'),
    ('Pocket Grimoire','Catalyst','Decarabian Tile','Hilichurl Horn','Hilichurl Mask','2'),
    ('Prototype Amber','Catalyst','Elixir','Mist Grass','Hilichurl Arrowhead','4'),
    ('Royal Grimoire','Catalyst','Decarabian Tile','Hilichurl Horn','Fatui Insignia','4'),
    ('Sacrificial Fragments','Catalyst','Gladiator Shackle','Chaos Part','Treasure Hoarder Insignia','4'),
    ('Skyward Atlas','Catalyst','Boreal Wolf Teeth','Ley Line','Hilichurl Arrowhead','5'),
    ('Solar Pearl','Catalyst','Guyun Pillar','Sacrificial Knife','Whopperflower Nectar','4'),
    ('The Widsith','Catalyst','Boreal Wolf Teeth','Ley Line','Hilichurl Mask','4'),
    ('Thrilling Tales of Dragon Slayers','Catalyst','Boreal Wolf Teeth','Ley Line','Samachurl Scroll','3'),
    ('Twin Nephrite','Catalyst','Elixir','Mist Grass','Fatui Insignia','3'),
    ('Wine and Song','Catalyst','Boreal Wolf Teeth','Ley Line','Treasure Hoarder Insignia','4'),
--Bows
    ('Alley Hunter','Bows','Gladiator Shackle','Chaos Part','Slime','4'),
    ("Amos' Bow",'Bows','Gladiator Shackle','Chaos Part','Slime','5'),
    ('Blackcliff Warbow','Bows','Guyun Pillar','Sacrificial Knife','Whopperflower Nectar','4'),
    ('Compound Bow','Bows','Aerosiderite','Bone Shard','Fatui Insignia','4'),
    ('Elegy for the End','Bows','Boreal Wolf Teeth','Hilichurl Horn','Fatui Insignia','5'),
    ('Favonius Warbow','Bows','Gladiator Shackle','Chaos Part','Whopperflower Nectar','4'),
    ('Hamayumi','Bows',"Narukami's Magatamas",'Prisms','Hilichurl Arrowhead','4'),
    ("Hunter's Bow",'Bows','Boreal Wolf Teeth','Ley Line','Treasure Hoarder Insignia','1'),
    ('Messenger','Bows','Elixir','Mist Grass','Treasure Hoarder Insignia','3'),
    ('Mitternachts Waltz','Bows','Decarabian Tile','Hilichurl Horn','Treasure Hoarder Insignia','4'),
    ('Polar Star','Bows','Oni Masks','Concealed','Spectral Core','5'),
    ('Prototype Crescent','Bows','Elixir','Mist Grass','Treasure Hoarder Insignia','4'),
    ('Raven Bow','Bows','Decarabian Tile','Hilichurl Horn','Hilichurl Arrowhead','3'),
    ('Recurve Bow','Bows','Gladiator Shackle','Chaos Part','Samachurl Scroll','3'),
    ('Royal Bow','Bows','Gladiator Shackle','Chaos Part','Samachurl Scroll','4'),
    ('Rust','Bows','Guyun Pillar','Sacrificial Knife','Hilichurl Mask','4'),
    ('Sacrificial Bow','Bows','Boreal Wolf Teeth','Ley Line','Slime','4'),
    ("Seasoned Hunter's Bow",'Bows','Boreal Wolf Teeth','Ley Line','Treasure Hoarder Insignia','2'),
    ("Sharpshooter's Oath",'Bows','Boreal Wolf Teeth','Ley Line','Slime','3'),
    ('Skyward Harp','Bows','Boreal Wolf Teeth','Ley Line','Hilichurl Arrowhead','5'),
    ('Slingshot','Bows','Guyun Pillar','Sacrificial Knife','Hilichurl Mask','3'),
    ('The Stringless','Bows','Decarabian Tile','Hilichurl Horn','Hilichurl Arrowhead','4'),
    ('The Viridescent Hunt','Bows','Decarabian Tile','Hilichurl Horn','Hilichurl Arrowhead','4'),
    ('Thundering Pulse','Bows',"Narukami's Magatamas",'Prisms','Hilichurl Arrowhead','5'),
    ('Windblume Ode','Bows','Gladiator Shackle','Ley Line','Whopperflower Nectar','4');

INSERT INTO Talent
VALUES
-- talent template ('1','2','3','4'),
--Anemo
    ('Jean', 'Hilichurl Mask', 'Resistance', "Dvalin's Plume"),
    ('Kaedehara Kazuha', 'Treasure Hoarder Insignia', 'Diligence', 'Gilded Scale'),
    ('Sayu', 'Whopperflower Nectar', 'Light', 'Gilded Scale'),
    ('Sucrose', 'Whopperflower Nectar', 'Freedom', 'Spirit Locket of Boreas'),
    ('Venti', 'Slime', 'Ballad', 'Tail of Boreas'),
    ('Xiao','Slime','Prosperity','Shadow of the Warrior'),
--Cryo    
    ('Aloy', 'Spectral Core', 'Freedom', 'Molten Moment'),
    ('Chongyun', 'Hilichurl Mask', 'Diligence', "Dvalin's Sigh"),
    ('Diona', 'Hilichurl Arrowhead', 'Freedom', 'Shard of a Foul Legacy'),
    ('Eula', 'Hilichurl Mask', 'Resistance', "Dragon Lord's Crown"),
    ('Ganyu', 'Whopperflower Nectar', 'Diligence', 'Shadow of the Warrior'),
    ('Kaeya', 'Treasure Hoarder Insignia', 'Ballad', 'Spirit Locket of Boreas'),
    ('Kamisato Ayaka', 'Nobushi Handguard', 'Elegance', 'Bloodjade Branch'),
    ('Qiqi', 'Samachurl Scroll', 'Prosperity', 'Tail of Boreas'),
    ('Rosaria', 'Fatui Insignia', 'Ballad', 'Shadow of the Warrior'),
--Electro
    ('Beidou', 'Treasure Hoarder Insignia', 'Gold', "Dvalin's Sigh"),
    ('Fischl', 'Hilichurl Arrowhead', 'Ballad', 'Spirit Locket of Boreas'),
    ('Keqing', 'Whopperflower Nectar', 'Prosperity', 'Ring of Boreas'),
    ('Kujou Sara', 'Hilichurl Mask', 'Elegance', 'Ashen Heart'),
    ('Lisa', 'Slime', 'Ballad', "Dvalin's Claw"),
    ('Raiden Shogun', 'Nobushi Handguard', 'Light', 'Molten Moment'),
    ('Razor', 'Hilichurl Mask', 'Resistance', "Dvalin's Claw"),
--Geo
    ('Albedo', 'Samachurl Scroll', 'Ballad', 'Tusk of Monoceros Caeli'),
    ('Ningguang', 'Fatui Insignia', 'Prosperity', 'Spirit Locket of Boreas'),
    ('Noelle', 'Hilichurl Mask', 'Resistance', "Dvalin's Claw"),
    ('Zhongli', 'Slime', 'Gold', 'Tusk of Monoceros Caeli'),
--Hydro
    ('Barbara', 'Samachurl Scroll', 'Freedom', 'Ring of Boreas'),
    ('Mona', 'Whopperflower Nectar', 'Resistance', 'Ring of Boreas'),
    ('Sangonomiya Kokomi', 'Spectral Core', 'Transience', 'Hellfire Butterfly'),
    ('Tartaglia', 'Fatui Insignia', 'Freedom', 'Shard of a Foul Legacy'),
    ('Xingqiu', 'Hilichurl Mask', 'Gold', 'Tail of Boreas'),
--pyro
    ('Amber', 'Hilichurl Arrowhead', 'Freedom', "Dvalin's Sigh"),
    ('Bennett', 'Treasure Hoarder Insignia', 'Resistance', "Dvalin's Plume"),
    ('Diluc', 'Fatui Insignia','Resistance',"Dvalin's Plume"),
    ('Hu Tao','Whopperflower Nectar','Diligence','Shard of a Foul Legacy'),
    ('Klee', 'Samachurl Scroll', 'Freedom', 'Ring of Boreas'),
    ('Thoma', 'Treasure Hoarder Insignia', 'Transience', 'Hellfire Butterfly'),
    ('Xiangling', 'Slime', 'Diligence', "Dvalin's Claw"),
    ('Xinyan', 'Treasure Hoarder Insignia', 'Gold', 'Tusk of Monoceros Caeli'),
    ('Yanfei', 'Treasure Hoarder Insignia', 'Gold', 'Bloodjade Branch'),
    ('Yoimiya', 'Samachurl Scroll', 'Transience', "Dragon Lord's Crown");

INSERT INTO Monster
VALUES 
--Common ('1','2','3','4'),
    ('Slimes','Common','Does not drop','Slime'),
    ('Hilichurls','Common','Does not drop','Hilichurl Mask'),
    ('Samachurl','Common','Does not drop','Samachurl Scroll'),
    ('Hilichurl Shooters','Common','Does not drop','Hilichurl Arrowhead'),
    ('Fatui Skirmishers','Common','Does not drop','Fatui Insignia'),
    ('Treasure Hoarders','Common','Does not drop','Treasure Hoarder Insignia'),
    ('Whopperflowers','Common','Does not drop','Whopperflower Nectar'),
    ('Nobushi','Common','Does not drop','Nobushi Handguard'),
    ('Specters','Common','Does not drop','Spectral Core'),
    
--Elite
    ('Mitachurl/Lawachurls','Elite','Hilichurl Horn','Hilichurl Mask'),
    ('Abyss Mage','Elite','Ley line','Does not Drop'),
    ('Ruined','Elite','Chaos Part','Does not Drop'),
    ('Fatui Cicin Mages','Elite','Mist Grass','Fatui Insignia'),
    ('Fatui Agents','Elite','Sacrificial Knife','Fatui Insignia'),
    ('Geovishap','Elite','Bone Shard','Does not Drop'),
    ('Ruin Sentinels','Elite','Sentinel Chaos Part','Does not Drop'),
    ('Fatui Mirror Maiden','Elite','Prisms','Does not Drop'),
    ('Rifthounds','Elite','Concealed','Does not Drop');    
    
INSERT INTO NBoss
VALUES
    ('Anemo Hypostasis','Vayuda Turquoise','Hurricane Seed'),
    ('Electro Hypostasis','Vajrada Amethyst','Lightning Prism'),
    ('Cryo Hypostasis','Shivada Jade','Crystalline Bloom'),
    ('Geo Hypostasis','Prithiva Topaz','Basalt Pillar'),
    ('Pyro Hypostasis','Agnidus Agate','Smoldering Pearl'),
    ('Hydro Hypostasis','Varunada Lazurite','Dew of Repudiation'),

    ('Oceanid','Varunada Lazurite','Cleansing Heart'),

    ('Cryo Regisvine','Shivada Jade','Hoarfrost Core'),
    ('Pyro Regisvine','Agnidus Agate','Everflame Seed'),

    ('Primo Geovishap','Prithiva Topaz','Juvenile Jade'),
    ('Primo Geovishap','Vajrada Amethyst','Juvenile Jade'),
    ('Primo Geovishap','Shivada Jade','Juvenile Jade'),
    ('Primo Geovishap','Agnidus Agate','Juvenile Jade'),
    ('Primo Geovishap','Varunada Lazurite','Juvenile Jade'),

    ('Manguu Kenki', 'Vayuda Turquoise','Marionette Core'),
    ('Manguu Kenki','Shivada Jade','Marionette Core'),

    ('Perpetual Mechanical Array','Prithiva Topaz','Perpetual Heart'),
    ('Perpetual Mechanical Array','Shivada Jade','Perpetual Heart'),

    ('Thunder Manifestation','Vajrada Amethyst','Storm Beads');

INSERT INTO WBoss
VALUES
    ('Andrius', 'Agnidus Agate','Tail of Boreas'),
    ('Andrius', 'Shivada Jade','Ring of Boreas'),
    ('Andrius', 'Prithiva Topaz','Spirit Locket of Boreas'),

    ('Dvalin', 'Vayuda Turquoise',"Dvalin's Claw"),
    ('Dvalin', 'Vajrada Amethyst',"Dvalin's Plume"),
    ('Dvalin', 'Varunada Lazurite',"Dvalin's Sigh"),

    ('Childe', 'Varunada Lazurite',"Shard of a Foul Legacy"),
    ('Childe', 'Vajrada Amethyst',"Tusk of Monoceros Caeli"),
    ('Childe', 'Shivada Jade',"Shadow of the Warrior"),

    ('Azdaha', 'Varunada Lazurite',"Dragon Lord's Crown"),
    ('Azdaha', 'Agnidus Agate',"Bloodjade Branch"),
    ('Azdaha', 'Prithiva Topaz',"Gilded Scale"),
    ('Azdaha', 'Shivada Jade',"Gilded Scale"),
    ('Azdaha', 'Vajrada Amethyst',"Gilded Scale"),

    ('Signora', 'Shivada Jade',"Molten Moment"),
    ('Signora', 'Agnidus Agate',"Hellfire Butterfly"),
    ('Signora', 'Shivada Jade',"Ashen Heart");

INSERT INTO Element
VALUES
--Hydro
    ('Varunada Lazurite Sliver', 'Varunada Lazurite', '2'),
    ('Varunada Lazurite Fragment', 'Varunada Lazurite', '3'),
    ('Varunada Lazurite Chunk', 'Varunada Lazurite', '4'),
    ('Varunada Lazurite Gemstone', 'Varunada Lazurite', '5'),
--Cryo
    ('Shivada Jade Sliver', 'Shivada Jade', '2'),
    ('Shivada Jade Fragment', 'Shivada Jade', '3'),
    ('Shivada Jade Chunk', 'Shivada Jade', '4'),
    ('Shivada Jade Gemstone', 'Shivada Jade', '5'),
--Pyro
    ('Agnidus Agate Sliver', 'Agnidus Agate', '2'),
    ('Agnidus Agate Fragment', 'Agnidus Agate', '3'),
    ('Agnidus Agate Chunk', 'Agnidus Agate', '4'),
    ('Agnidus Agate Gemstone', 'Agnidus Agate', '5'),
--Electro
    ('Vajrada Amethyst Sliver', 'Vajrada Amethyst', '2'),
    ('Vajrada Amethyst Fragment', 'Vajrada Amethyst', '3'),
    ('Vajrada Amethyst Chunk', 'Vajrada Amethyst', '4'),
    ('Vajrada Amethyst Gemstone', 'Vajrada Amethyst', '5'),
--Geo
    ('Prithiva Topaz Sliver', 'Prithiva Topaz', '2'),
    ('Prithiva Topaz Fragment', 'Prithiva Topaz', '3'),
    ('Prithiva Topaz Chunk', 'Prithiva Topaz', '4'),
    ('Prithiva Topaz Gemstone', 'Prithiva Topaz', '5'),
--Anemo
    ('Vayuda Turquoise Sliver', 'Vayuda Turquoise', '2'),
    ('Vayuda Turquoise Fragment', 'Vayuda Turquoise', '3'),
    ('Vayuda Turquoise Chunk', 'Vayuda Turquoise', '4'),
    ('Vayuda Turquoise Gemstone', 'Vayuda Turquoise', '5');

INSERT INTO Domain
VALUES
    ('Cecilia Garden','Monday/Thursday','Decarabian Tile'),
    ('Cecilia Garden','Tuesday/Friday','Boreal Wolf Teeth'),
    ('Cecilia Garden','Wednesday/Saturday','Gladiator shackle'),

    ('Hidden Palace of Lianshan Formula','Monday/Thursday','Guyun Pillar'),
    ('Hidden Palace of Lianshan Formula','Tuesday/Friday','Elixir'),
    ('Hidden Palace of Lianshan Formula','Wednesday/Saturday','Aerosiderite'),
    
    ('Court of Flowing Sand','Monday/Thursday','Branch of a Distant Sea'),
    ('Court of Flowing Sand','Tuesday/Friday','Narukami Magatamas'),
    ('Court of Flowing Sand','Wednesday/Saturday','Oni Masks');

INSERT INTO CharWeap
VALUES
    ('Jean','Sword'),
    ('Kaedehara Kazuha','Sword'),
    ('Sayu','Claymore'),
    ('Sucrose','Catalyst'),
    ('Venti','Bows'),
    ('Xiao','Polearm'),
    ('Aloy','Bows'),
    ('Chongyun','Claymore'),
    ('Diona','Bows'),
    ('Eula','Claymore'),
    ('Ganyu','Bows'),
    ('Kaeya','Sword'),
    ('Kamisato Ayaka','Sword'),
    ('Qiqi','Sword'),
    ('Rosaria','Polearm'),
    ('Beidou','Claymore'),
    ('Fischl','Bows'),
    ('Keqing','Sword'),
    ('Kujou Sara','Bows'),
    ('Lisa','Catalyst'),
    ('Raiden Shogun','Polearm'),
    ('Razor','Claymore'),
    ('Albedo','Sword'),
    ('Ningguang','Catalyst'),
    ('Noelle','Claymore'),
    ('Zhongli','Polearm'),
    ('Barbara','Catalyst'),
    ('Mona','Catalyst'),
    ('Sangonomiya Kokomi','Catalyst'),
    ('Tartaglia','Bows'),
    ('Xingqiu','Sword'),
    ('Amber','Bows'),
    ('Bennett','Sword'),
    ('Diluc','Claymore'),
    ('Hu Tao','Polearm'),
    ('Klee','Catalyst'),
    ('Thoma','Polearm'),
    ('Xiangling','Polearm'),
    ('Xinyan','Claymore'),
    ('Yanfei','Catalyst'),
    ('Yoimiya','Bows');

INSERT INTO CharMat
VALUES
    ('Jean','Hilichurl Mask'),
    ('Kaedehara Kazuha','Treasure Hoarder Insignia'),
    ('Sayu','Whopperflower Nectar'),
    ('Sucrose','Whopperflower Nectar'),
    ('Venti','Slime'),
    ('Xiao','Slime'),
    ('Aloy','Spectral Core'),
    ('Chongyun','Hilichurl Mask'),
    ('Diona','Hilichurl Arrowhead'),
    ('Eula','Hilichurl Mask'),
    ('Ganyu','Whopperflower Nectar'),
    ('Kaeya','Treasure Hoarder Insignia'),
    ('Kamisato Ayaka','Nobushi Handguard'),
    ('Qiqi','Samachurl Scroll'),
    ('Rosaria','Fatui Insignia'),
    ('Beidou','Treasure Hoarder Insignia'),
    ('Fischl','Hilichurl Arrowhead'),
    ('Keqing','Whopperflower Nectar'),
    ('Kujou Sara','Hilichurl Mask'),
    ('Lisa','Slime'),
    ('Raiden Shogun','Nobushi Handguard'),
    ('Razor','Hilichurl Mask'),
    ('Albedo','Samachurl Scroll'),
    ('Ningguang','Fatui Insignia'),
    ('Noelle','Hilichurl Mask'),
    ('Zhongli','Slime'),
    ('Barbara','Samachurl Scroll'),
    ('Mona','Whopperflower Nectar'),
    ('Sangonomiya Kokomi','Spectral Core'),
    ('Tartaglia','Fatui Insignia'),
    ('Xingqiu','Hilichurl Mask'),
    ('Amber','Hilichurl Arrowhead'),
    ('Bennett','Treasure Hoarder Insignia'),
    ('Diluc','Fatui Insignia'),
    ('Hu Tao','Whopperflower Nectar'),
    ('Klee','Samachurl Scroll'),
    ('Thoma','Treasure Hoarder Insignia'),
    ('Xiangling','Slime'),
    ('Xinyan','Treasure Hoarder Insignia'),
    ('Yanfei','Treasure Hoarder Insignia'),
    ('Yoimiya','Samachurl Scroll');
INSERT INTO WeapMat
    SELECT w_name, w_commonmat, w_ascentmat
    FROM Weapon;
    