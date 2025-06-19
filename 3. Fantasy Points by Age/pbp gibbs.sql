select fantasy_points_ppr, [week], receptions, receiving_yards, * 
from tblPlayerStats
where player_display_name = 'jahmyr gibbs'
and season = 2024
and week in (3,15)

select fantasy_points_ppr, [week], receptions, receiving_yards, * 
from tblStats2024
where player_display_name = 'jahmyr gibbs'
and week in (3,15)

select lateral_receiver_player_name, lateral_receiving_yards,td_player_name, [desc], week, * 
from tblPBP2024
where lateral_receiver_player_name = 'j.gibbs'