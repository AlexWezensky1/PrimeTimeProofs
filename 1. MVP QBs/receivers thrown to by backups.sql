select passer_player_name, receiver_player_name, game_id, sum(receiving_yards) as RecYardsTotal 
from tblPBP2021
where season_type = 'reg'
and receiver_player_name in ('d.adams')
group by passer_player_name, receiver_player_name, game_id


select passer_player_name, receiver_player_name, game_id, sum(receiving_yards) as RecYardsTotal 
from tblPBP2019
where season_type = 'reg'
and receiver_player_name in ('m.andrews')
group by passer_player_name, receiver_player_name, game_id


select passer_player_name, receiver_player_name, game_id, sum(receiving_yards) as RecYardsTotal 
from tblPBP2013
where season_type = 'reg'
and receiver_player_name in ('d.thomas')
group by passer_player_name, receiver_player_name, game_id


select passer_player_name, receiver_player_name, game_id, sum(receiving_yards) as RecYardsTotal 
from tblPBP2011
where season_type = 'reg'
and receiver_player_name in ('j.nelson')
group by passer_player_name, receiver_player_name, game_id


select passer_player_name, receiver_player_name, game_id, sum(receiving_yards) as RecYardsTotal 
from tblPBP2009
where season_type = 'reg'
and receiver_player_name in ('r.wayne')
group by passer_player_name, receiver_player_name, game_id


select passer_player_name, receiver_player_name, game_id, sum(receiving_yards) as RecYardsTotal 
from tblPBP2008
where season_type = 'reg'
and receiver_player_name in ('r.wayne')
group by passer_player_name, receiver_player_name, game_id


select passer_player_name, receiver_player_name, game_id, sum(receiving_yards) as RecYardsTotal 
from tblPBP2004
where season_type = 'reg'
and receiver_player_name in ('r.wayne')
group by passer_player_name, receiver_player_name, game_id


select passer_player_name, receiver_player_name, game_id, sum(receiving_yards) as RecYardsTotal 
from tblPBP2003
where season_type = 'reg'
and receiver_player_name in ('d.mason')
group by passer_player_name, receiver_player_name, game_id