## Zoner from Broodlands to Lavaspinners Lair delvea ##
# Aardil #

sub EVENT_SPAWN {
 $x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 10, $x + 10, $y - 10, $y + 10);
	}
sub EVENT_ENTER {
    quest::movepc(341,-246,-1578,68,0);
 }

