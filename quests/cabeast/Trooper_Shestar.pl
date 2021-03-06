
sub EVENT_SAY {
my $scaled = quest::saylink("scaled", 1);
  if($text=~/Hail/i){
    quest::say("My father was a great blacksmith.  He taught me how to make great items such as the Shestar $scaled coif].  Alas, smithing was not my rebirth, but rather the life of a warrior.");
  }
  if($text=~/scaled/i){
    quest::say("The Shestar Scaled Coif was a light coif my father would fashion out of loose scales from the scaled wolves.  I have some scales on me and if you bring me three loose scales I will have enough to create the coif for you, but I require you to also pay a fee of five gold.");
  }
}
sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount,12466=>3) && $gold>=5) {
    quest::emote(' quickly inserts the scales into a half finished coif and hands you the coif.');
	quest::say("I am afraid that is not enough and I cannot possibly complete the task while on duty. You must go and find an additional three Scaled Wolf Scales and take them, along with the Unfinished Coif, to the nearest forge and complete the smithing yourself. I hope you are a blacksmith.");
    quest::summonitem(12468);
  }
  plugin::return_items(\%itemcount);
}

#END of FILE Zone:cabeast  ID:106069 -- Trooper_Shestar

