sub EVENT_SAY {
if($text =~ /Hail/i) {
	quest::say("Me guild master of Da Bloodwolves.");
	quest::say("No time for talk, if you have someting fer me, give it!.");
 }
}
sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 119870 => 1)){
    quest::say("Haaah!! Cower befor the mighty Daboo!! Daboo make you feared.. make you powered! Dark power flow through you! Hate and Fear in your blood!");
 	quest::say("You want to be like Daboo? Ok, take dis and wear it. come back here when you kill some stuff $name.");
	quest::summonitem(13505);
	quest::faction(70,10); #Dark Ones
	quest::faction(292,10); #Shadowknights of Night Keep
	quest::faction(106,-30); #Frogloks of Guk
    quest::ding();
	quest::exp(1000);
	quest::rebind(52,130,238,-5);
    }
  else {
    quest:say("Me can not eat this... Take back!");
    plugin::return_items(\%itemcount);
 }
}