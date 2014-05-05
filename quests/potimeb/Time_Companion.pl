#######################################
## NPC: Time_Companion (223228)      ##
## Zone: Plane of Time B             ##
## Threeflies dec 2012               ##
## Revised by Caved for AXClassic    ##
##                    21-03-2014     ##
## Trial mover NPC                   ##
#######################################

sub EVENT_SAY {
my $fire = quest::saylink("fire", 1);
my $water = quest::saylink("water", 1);
my $earth = quest::saylink("earth", 1);
my $air = quest::saylink("air", 1);
my $undead = quest::saylink("undead", 1);

if ($text=~ /hail/i){
$client->Message(14,"Please choose:| $fire | $water | $air | $undead  | $earth |  as your destination");
}

################FIRE#####################################
if ($text=~/fire/i && defined($qglobals{$name."potimeb"})) {
$client->Message(14,"Good luck $name");
my $QGlobalValue = $qglobals{$name."potimeb"};
quest::MovePCInstance(223, $QGlobalValue, -59.1, 587.1, 493.9, 150);
}
elsif ($text=~/fire/i && !defined($qglobals{$name."potimeb"})) {
$client->Message(14,"Good luck $name , Porting inside regular instance"); 
quest::movepc(223, -59.1, 587.1, 493.9, [64.6]);
}
else {
    $client->Message(14,"My script is totally NOT working today");
}

################WATER####################################
if ($text=~/water/i && defined($qglobals{$name."potimeb"})) {
$client->Message(14,"Good luck $name");
my $QGlobalValue = $qglobals{$name."potimeb"};
quest::MovePCInstance(223, $QGlobalValue, -58, 884.8, 493.7, 150);
}
elsif ($text=~/water/i && !defined($qglobals{$name."potimeb"})) {
$client->Message(14,"Good luck $name , Porting inside regular instance"); 
quest::movepc(223, -58, 884.8, 493.7, [67.8]);
}
else {
    $client->Message(14,"My script is totally NOT working today");
}

################EARTH####################################
if ($text=~/earth/i && defined($qglobals{$name."potimeb"})) {
$client->Message(14,"Good luck $name");
my $QGlobalValue = $qglobals{$name."potimeb"};
quest::MovePCInstance(223, $QGlobalValue, -61.9, 1638.6, 496.1, 150);
}
elsif ($text=~/earth/i && !defined($qglobals{$name."potimeb"})) {
$client->Message(14,"Good luck $name , Porting inside regular instance"); 
quest::movepc(223, -61.9, 1638.6, 496.1, [65.5]);
}
else {
    $client->Message(14,"My script is totally NOT working today");
}

################AIR######################################
if ($text=~/air/i && defined($qglobals{$name."potimeb"})) {
$client->Message(14,"Good luck $name");
my $QGlobalValue = $qglobals{$name."potimeb"};
quest::MovePCInstance(223, $QGlobalValue, -59.2, 1333.4, 494.1, 150);
}
elsif ($text=~/air/i && !defined($qglobals{$name."potimeb"})) {
$client->Message(14,"Good luck $name , Porting inside regular instance"); 
quest::movepc(223, -59.2, 1333.4, 494.1, [56.9]);
}
else {
    $client->Message(14,"My script is totally NOT working today");
}

################UNDEAD###################################
if ($text=~/undead/i && defined($qglobals{$name."potimeb"})) {
$client->Message(14,"Good luck $name");
my $QGlobalValue = $qglobals{$name."potimeb"};
quest::MovePCInstance(223, $QGlobalValue, -36.5, 1092.4, 495.2, 150);
}
elsif ($text=~/undead/i && !defined($qglobals{$name."potimeb"})) {
$client->Message(14,"Good luck $name , Porting inside regular instance"); 
quest::movepc(223, -36.5, 1092.4, 495.2, [54.6]);
}
else {
    $client->Message(14,"My script is totally NOT working today");
}
}