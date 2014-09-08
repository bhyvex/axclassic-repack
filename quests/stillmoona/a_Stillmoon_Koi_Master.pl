sub EVENT_SAY {
   if ($text=~/Hail/i){
   quest::emote(' looks at $name with great concern.');
   quest::say("Who are you and what is it you want?");
   quest::spawn2(338206,0,0,282.6,714.6,7.3,79.6);
   }
 }
sub EVENT_ITEM {
   if (plugin::check_handin(\%itemcount, 120129 =>1 )) { 
   quest::spawn2(338203,2780159,0,1072.7,598.4,11.8,57.2);
   quest::spawn2(338204,0,0,1096.7,607.2,13.1,161.1);
   quest::spawn2(338205,0,0,1094.4,586.9,12.8,238.2);
   quest::signalwith(338206,821,0);
   }
   if (plugin::check_handin(\%itemcount, 36216 =>1 )) { 
   quest::say("Ah, very good. Thank you for returning my gift. I shall use it to create the most beautiful koi the world has ever seen! Perhaps outsiders aren't worthless after all.");
   quest::say("here $name, it is customary for those who recive gifts also give gifts, take this to whom ever sent you to continue or friendship.");
   quest::summonitem(120130);
   quest::say("Do NOT eat it! This not for you the messenger, but for the one who sent me the gift!"); 
  }
 } 
sub EVENT_SIGNAL {
   if($signal == 823) {
   quest::say("You let him get away with my precious gift! Quickly, find him before he is able to escape the temple walls! Wounded as he was, he could not have gotten far away.")
   }
 }
sub EVENT_DEATH {
   quest::signalwith(338206,825,0);
   }
   