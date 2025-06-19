select fantasy_points_ppr, [week], receiving_yards, receiving_tds, * 
from tblPlayerStats
where player_display_name = 'josh allen'
and season = 2024 
and week = 13

select fantasy_points_ppr, [week], receiving_yards, receiving_tds, * 
from tblStats2024
where player_display_name = 'josh allen'
and season = 2024 
and week = 13

select lateral_receiver_player_name, lateral_receiving_yards, td_player_name, [desc], * 
from tblPBP2024
where game_id = '2024_13_SF_BUF'
and lateral_receiver_player_name = 'j.allen'
and week = 13

--select 21.74+6.7
--select 379-372.34

