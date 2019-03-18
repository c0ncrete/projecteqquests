sub EVENT_SPAWN {
quest::say("Fools!");
}

sub EVENT_DEATH_COMPLETE {

#VILLAGER ROOM 1

quest::spawn2(quest::ChooseRandom(211089,211090,211091,211092,211093,211094,211095),0,0,651,1324,-115,130);
quest::spawn2(quest::ChooseRandom(211089,211090,211091,211092,211093,211094,211095),0,0,564,1412,-115,130);
quest::spawn2(quest::ChooseRandom(211089,211090,211091,211092,211093,211094,211095),0,0,651,1415,-115,330);
quest::spawn2(quest::ChooseRandom(211089,211090,211091,211092,211093,211094,211095),0,0,564,1324,-115,124);

#VILLAGER ROOM 2

quest::spawn2(quest::ChooseRandom(211089,211090,211091,211092,211093,211094,211095),0,0,1338,1331,-115,130);
quest::spawn2(quest::ChooseRandom(211089,211090,211091,211092,211093,211094,211095),0,0,1253,1332,-115,68);
quest::spawn2(quest::ChooseRandom(211089,211090,211091,211092,211093,211094,211095),0,0,1251,1417,-115,188);
quest::spawn2(quest::ChooseRandom(211089,211090,211091,211092,211093,211094,211095),0,0,1341,1417,-115,318);

#VILLAGER ROOM 3

quest::spawn2(quest::ChooseRandom(211089,211090,211091,211092,211093,211094,211095),0,0,1341,2015,-115,354);
quest::spawn2(quest::ChooseRandom(211089,211090,211091,211092,211093,211094,211095),0,0,1342,1923,-115,450);
quest::spawn2(quest::ChooseRandom(211089,211090,211091,211092,211093,211094,211095),0,0,1251,1922,-115,64);
quest::spawn2(quest::ChooseRandom(211089,211090,211091,211092,211093,211094,211095),0,0,1249,2016,-115,194);


#ENEMY ROOM 1

quest::spawn2(211096,0,0,612,1493,-115,260);
quest::spawn2(211097,0,0,609,1250,-115,0);
quest::spawn2(211098,0,0,679,1372,-115,382);
quest::spawn2(211107,0,0,679,1372,-115,382);

#ENEMY ROOM 2

quest::spawn2(211099,0,0,1395,1376,-115,382);
quest::spawn2(211100,0,0,1293,1273,-115,0);
quest::spawn2(211101,0,0,1293,1471,-115,260);
quest::spawn2(211108,0,0,1293,1471,-115,260);

#ENEMY ROOM 3

quest::spawn2(211102,0,0,1405,1969,-115,386);
quest::spawn2(211103,0,0,1296,2071,-115,260);
quest::spawn2(211104,0,0,1175,1968,-115,126);
quest::spawn2(211109,0,0,1175,1968,-115,126);

}

#211089 - ogre villager
#211090 - erudite
#211091 - gnome
#211092 - dwarf
#211093 - high elf
#211094 - Troll
#211095 - wood elf

#211096 - dark elf b#d
#211097 - human bad
#211098 - ogre bad

#211099 - troll bad
#211100 - ogre bad
#211101 - human bad

#211102 - troll bad
#211103 - dark elf bad
#211104 - ogre bad
