sub EVENT_SIGNAL {
   if($signal == 226){
   quest::say("Your time has come, Lairyn!");
   }
 }  
sub EVENT_DEATH {
   quest::signalwith(224228,225,0);
   }
