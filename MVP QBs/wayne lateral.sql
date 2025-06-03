--select passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal 
select passer_player_name, receiver_player_name, game_id, receiving_yards, lateral_receiver_player_name, lateral_receiving_yards, *
from tblPBP2008
where season_type = 'reg'
--and passer_player_name in ((select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs where Year = 2003), 'Aa.Rodgers')
--and receiver_player_name = 'r.wayne'
and game_id = '2008_02_IND_MIN'
and qtr = 3
and receiving_yards > 0
--group by passer_player_name, receiver_player_name, game_id
--order by RecYardsTotal desc
