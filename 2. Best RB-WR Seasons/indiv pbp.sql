select rushing_yards, * from tblPBP2000
where rusher_player_name = 'm.anderson'
and week = 16
order by 2


select rushing_yards, * from tblPBP2008
where rusher_player_name = 'd.williams'
and week = 4
order by 2


select receiving_yards, receiver_player_name, [desc], * from tblPBP2008
where week = 11
--and receiver_player_id = '00-0020337'
and home_team = 'car'
order by 4