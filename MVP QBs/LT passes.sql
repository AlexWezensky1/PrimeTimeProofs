select passer_player_name, receiver_player_name, game_id, sum(receiving_yards) as RecYardsTotal 
from tblPBP2006
where season_type = 'reg'
and passer_player_name in ('l.tomlinson')
group by passer_player_name, receiver_player_name, game_id
