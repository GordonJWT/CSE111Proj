CREATE TABLE Character(
    c_name VARCHAR(20),
    c_element VARCHAR(20),
    c_ascentmat VARCHAR(100),
    c_jewel VARCHAR (100),
    c_local VARCHAR (100),
    c_commmonmat VARCHAR(100),
    c_talentbook VARCHAR(100),
    c_weapontype VARCHAR(20),
    c_role VARCHAR(20),
    c_rarity DECIMAL(2,0)
);

CREATE TABLE Weapon(
    w_name VARCHAR(100),
    w_weapontype VARCHAR(20),
    w_weaponmat VARCHAR(100),
    w_ascentmat VARCHAR(100),
    w_commonmat VARCHAR(100),
    w_rarity DECIMAL(2,0)
);

CREATE TABLE Talent(
    t_charname VARCHAR(100),
    t_commonmat VARCHAR(100),
    t_talentbook VARCHAR(50),
    t_talentmat VARCHAR(50)
);

CREATE Table Boss(
    b_name VARCHAR(50),
    b_type decimal(2,0),
    b_jewel VARCHAR(100),
    b_ascentmat VARCHAR(50),
    b_talentmat VARCHAR(100)
);

CREATE TABLE Material(
    m_name VARCHAR(100),
    m_type VARCHAR(100),
    m_ascentmat VARCHAR(50),
    m_commonmat VARCHAR(100)
);

CREATE TABLE Element(
    e_name VARCHAR(20),
    e_jewel VARCHAR(100),
    e_rarity DECIMAL(2,0)
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
    ('Venti', 'Anemo', 'Hurricane Seed', 'Vayuda Turquoise', 'Cecilia', 'Slime', 'Ballad', 'Bow', 'Utility', '5'),
    ('Xiao', 'Anemo', 'Juvenile Jade', 'Vayuda Turquoise', 'Qingxin', 'Slime', 'Prosperity', 'Polearm', 'Main DPS', '5'),
--Cryo    
    ('Aloy', 'Cryo', 'Crystalline Bloom', 'Shivada Jade', 'Crystal Marrow', 'Spectral Core', 'Freedom', 'Bow', 'Sub DPS', '5'),
    ('Chongyun', 'Cryo', 'Hoarfrost Core', 'Shivada Jade', 'Cor Lapis', 'Hilichurl Mask', 'Diligence', 'Claymore', 'Utility', '4'),
    ('Diona', 'Cryo', 'Hoarfrost Core', 'Shivada Jade', 'Caila Lily', 'Hilichurl Arrowhead', 'Freedom', 'Bow', 'Utility', '4'),
    ('Eula', 'Cryo', 'Crystalline Bloom', 'Shivada Jade', 'Dandelion Seed', 'Hillichurl Mask', 'Resistance', 'Claymore', 'Main DPS', '5'),
    ('Ganyu', 'Cryo', 'Hoarfrost Core', 'Shivada Jade', 'Qingxin', 'Whopperflower Nectar', 'Diligence', 'Bow', 'Main DPS', '5'),
    ('Kaeya', 'Cryo', 'Hoarfrost Core', 'Shivada Jade', 'Caila Lily', 'Treasure Hoarder Insignia', 'Ballad', 'Sword', 'Sub DPS', '4'),
    ('Kamisato Ayaka', 'Cryo', 'Perpetual Heart', 'Shivada Jade', 'Sakura Bloom', 'Nobushi Handguard', 'Elegance', 'Sword', 'Main DPS', '5'),
    ('Qiqi', 'Cryo', 'Hoarfrost Core', 'Shivada Jade', 'Violetgrass', 'Samachurl Scroll', 'Prosperity', 'Sword', 'Utility', '5'),
    ('Rosaria', 'Cryo', 'Hoarfrost Core', 'Shivada Jade', 'Valberry', 'Fatui Insignia', 'Ballad', 'Polearm', 'Sub DPS', '4'),
--Electro
    ('Beidou', 'Electro', 'Lightning Prism', 'Vajrada Amethyst', 'Noctilucous Jade', 'Treasure Hoarder Insignia', 'Gold', 'Claymore', 'Sub DPS', '4'),
    ('Fischl', 'Electro', 'Lightning Prism', 'Vajrada Amethyst', 'Small Lamp Grass', 'Hilichurl Arrowhead', 'Ballad', 'Bow', 'Sub DPS', '4'),
    ('Keqing', 'Electro', 'Lightning Prism', 'Vajrada Amethyst', 'Cor Lapis', 'Whopperflower Nectar', 'Prosperity', 'Sword', 'Main DPS', '5'),
    ('Kujou Sara', 'Electro', 'Storm Beads', 'Vajrada Amethyst', 'Dendrobium', 'Hilichurl Mask', 'Elegance', 'Bow', 'Utility', '4'),
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
    ('Tartaglia', 'Hydro', 'Cleansing Heart', 'Varunada Lazurite', 'Starconch', 'Fatui Insignia', 'Freedom', 'Bow', 'Main DPS', '5'),
    ('Xingqiu', 'Hydro', 'Cleansing Heart', 'Varunada Lazurite', 'Silk Flower', 'Hilichurl Mask', 'Gold', 'Sword', 'Sub DPS', '4'),
--pyro
    ('Amber', 'Pyro', 'Everflame Seed', 'Agnidus Agate', 'Small Lamp Grass', 'Hilichurl Arrowhead', 'Freedom', 'Bow', 'Sub DPS', '4'),
    ('Bennett', 'Pyro', 'Everflame Seed', 'Agnidus Agate', 'Windwheel Aster', 'Treasure Hoarder Insignia', 'Resistance', 'Sword', 'Utility', '4'),
    ('Diluc', 'Pyro', 'Everflame Seed', 'Agnidus Agate', 'Small Lamp Grass', 'Fatui Insignia', 'Resistance', 'Claymore', 'Main DPS', '5'),
    ('Hu Tao', 'Pyro', 'Juvenile Jade', 'Agnidus Agate', 'Silk Flower', 'Whopperflower Nectar', 'Diligence', 'Polearm', 'Main DPS', '5'),
    ('Klee', 'Pyro', 'Everflame Seed', 'Agnidus Agate', 'Philanemo Mushroom', 'Samachurl Scroll', 'Freedom', 'Catalyst', 'Main DPS', '5'),
    ('Thoma', 'Pyro', 'Smoldering Pearl', 'Agnidus Agate', 'Fluorescent Fungus', 'Treasure Hoarder Insignia', 'Transience', 'Polearm', 'Utility', '4'),
    ('Xiangling', 'Pyro', 'Everflame Seed', 'Agnidus Agate', 'Jueyun Chili', 'Slime', 'Diligence', 'Polearm', 'Sub DPS', '4'),
    ('Xinyan', 'Pyro', 'Everflame Seed', 'Agnidus Agate', 'Violetgrass', 'Treasure Hoarder Insignia', 'Gold', 'Claymore', 'Main DPS', '4'),
    ('Yanfei', 'Pyro', 'Juvenile Jade', 'Agnidus Agate', 'Noctilucous Jade', 'Treasure Hoarder Insignia', 'Gold', 'Catalyst', 'Main DPS', '4'),
    ('Yoimiya', 'Pyro', 'Smoldering Pearl', 'Agnidus Agate', 'Naku Weed', 'Samachurl Scroll', 'Transience', 'Bow', 'Main DPS', '5');

INSERT INTO Weapon
VALUES
--Sword template ('1','2','3','4','5','6')
    ('Amenoma Kageuchi', 'Sword', 'Branch of a Distant Sea', 'Sentinel Chaos Part', 'Nobushi Handguard', '4'),
    ('Aquila Favonia', 'Sword', 'Decarabian Tile', 'Hilichurl Horn', 'Hilichurl Arrowhead', '5'),
    ('Blackcliff Longsword', 'Sword', 'Guyun Pillar', 'Sacrificial Knife', 'Hilichurl Arrowhead', '4'),
    ('Cool Steel', 'Sword', 'Decarabian Tile', 'Hilichurl Horn', 'Hilichurl Arrowhead', '3'),
    ('Dark Iron Sword', 'Sword', 'Guyun Pillar', 'Sacrificial Knife', 'Hilichurl Mask', '3'),
    ('Dull Blade', 'Sword', 'Decarabian Tile', 'Hilichurl Horn', 'Hilichurl Arrowhead', '1'),
    ('Favonius Sword', 'Sword', 'Decarabian Tile', 'Hilichurl Horn', 'Hilichurl Arrowhead', '4'),
    ('Festering Desire', 'Sword', 'Gladiator Shackle', 'Chaos Part', 'Fatui Insignia', '4'),
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
    ('Akuomaru','Claymore','Branch of a Distant Sea','Concealed','Nobushi Handguard','6'),
    ('Blackcliff Slasher','Claymore','Elixir','Mist Grass','Fatui Insignia','6'),
    ('Bloodtainted Greatsword','Claymore','Boreal Wolf Teeth','Ley Line','Hilichurl Arrowhead','6'),
    ('Debate Club','Claymore','Elixir','Mist Grass','Hilichurl Mask','6'),
    ('Favonius Greatsword','Claymore','Gladiator Shackle','Chaos Part','Fatui Insignia','6'),
    ('Ferrous Shadow','Claymore','Decarabian Tile','Hilichurl Horn','Whopperflower Nectar','6'),
    ('Katsuragikiri Nagamasa','Claymore','Narukami Magatamas','Sentinel Chaos Part','Nobushi Handguard','6'),
    ('Lithic Blade','Claymore','Guyun Pillar','Sacrificial Knife','Hilichurl Arrowhead','6'),
    ('Luxurious Sea-Lord','Claymore','Aerosiderite','Bone Shard','Slime','6'),
    ('Old Mercs Pal','Claymore','Boreal Wolf Teeth','Ley Line','Slime','6'),
    ('Prototype Archaic','Claymore','Aerosiderite','Bone Shard','Hilichurl Mask','6'),
    ('Quartz','Claymore','Guyun Pillar','Sacrificial Knife','Samachurl Scroll','6'),
    ('Rainslasher','Claymore','Elixir','Mist Grass','Samachurl Scroll','6'),
    ('Royal Greatsword','Claymore','Gladiator Shackle','Chaos Part','Slime','6'),
    ('Sacrificial Greatsword','Claymore','Boreal Wolf Teeth','Ley Line','Hilichurl Arrowhead','6'),
    ('Serpent Spine','Claymore','Aerosiderite','Bone Shard','Whopperflower Nectar','6'),
    ('Skyrider Greatsword','Claymore','Aerosiderite','Bone Shard','Treasure Hoarder Insignia','6'),
    ('Skyward Pride','Claymore','Boreal Wolf Teeth','Ley Line','Slime','6'),
    ('Snow-Tombed Starsilver','Claymore','Decarabian Tile','Hilichurl Horn','Slime','6'),
    ('Song of Broken Pines','Claymore','Decarabian Tile','Hilichurl Horn','Hilichurl Mask','6'),
    ('The Bell','Claymore','Decarabian Tile','Hilichurl Horn','Whopperflower Nectar','6'),
    ('The Unforged','Claymore','Elixir','Mist Grass','Treasure Hoarder Insignia','6'),
    ('Waster Greatsword','Claymore','Boreal Wolf Teeth','Ley Line','Slime','6'),
    ('White Iron Greatsword','Claymore','Gladiator Shackle','Chaos Part','Slime','6'),
    ('Whiteblind','Claymore','Guyun Pillar','Sacrificial Knife','Treasure Hoarder Insignia','6'),
    ('Wolfs Gravestone','Claymore','Gladiator Shackle','Chaos Part','Samachurl Scroll','6');

INSERT INTO Talent
VALUES
    ('Hu Tao','Whopperflower Nectar','Dilligence','Shard of a Foul Legacy'),
    ('Xiao','Slime','Prosperity','Shadow of the Warrior'),
    ('Diluc','Fatui Insignia','Resistance','Devalins Plume'),
    ('Razor','Hilichurl Mask','Resistance','Devalins Claw');

INSERT INTO Material
VALUES 
    ('Slimes','Common','Does not drop','Slime'),
    ('Hilichurl','Common','Does not drop','Hilichurl Mask'),
    ('Fatui Agents','Elite','Sacrificial Knife','Fatui Insignia'),
    ('Abyss Mage','Elite','Ley line','Does not Drop'),
    ('Mitachurl','Elite','Hilichurl Horn','Hilichurl Mask');

INSERT INTO Boss
VALUES
    ('Anemo Hypostasis','Normal','Vayuda Turquoise','Hurricane Seed','Does not Drop'),
    ('Oceanid','Normal','Varunada Lazurite','Cleansing Heart','Does not Drop'),
    ('Andrius','Weekly','Agnidus Agate','Does not drop','Tail of Boreas'),
    ('Dvalin','Weekly','Vayuda Turquoise','Does not drop','Dvalins Claw');

INSERT INTO Element
VALUES
    ('Varunada Lazurite Sliver', 'Varunada Lazurite', '2'),
    ('Varunada Lazurite Fragment', 'Varunada Lazurite', '3'),
    ('Varunada Lazurite Chunk', 'Varunada Lazurite', '4'),
    ('Varunada Lazurite Gemstone', 'Varunada Lazurite', '5');

