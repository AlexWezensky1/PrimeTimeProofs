-- rb and wr/te duo with most combined yards in a season
-- since 2000
-- rb only rushing, wr/te only receiving

select combo.rbname, combo.recname, season, posteam as team, combo.rushyds + combo.recyards as totalyards,
rushyds, recyards from (
	select * from (
		select rusher_player_name as rbname, season as rbseason, posteam as rbteam, sum(rushing_yards) as rushyds 
		from tblPBP2000
		where season_type = 'reg'
		group by rusher_player_name, season, posteam)
	as rb join (
		select receiver_player_name as recname, season, posteam, sum(receiving_yards) as recyards 
		from tblPBP2000
		where season_type = 'reg'
		group by receiver_player_name, season, posteam)
	as rec
	on rb.rbteam = rec.posteam
	and rb.rbseason = rec.season)
as combo
order by totalyards desc

--select * from tblPBP2000
