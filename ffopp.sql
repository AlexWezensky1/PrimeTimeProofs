-- rb and wr/te duo with most combined yards in a season
-- since 2000
-- rb only rushing, wr/te only receiving

select combo.rbname, combo.recname, season, posteam as team, combo.rushyds + combo.recyards as totalyards,
rushyds, recyards from (
	select * from (
		select full_name as rbname, season as rbseason, posteam as rbteam, sum(rush_yards_gained) as rushyds 
		from tblFFOpportunityWeekly
		where position = 'rb'
		and ((season >= 2000 and season <= 2020 and week <= 17) or (season >= 2021 and week <= 18))
		group by full_name, season, posteam)
	as rb join (
		select full_name as recname, season, posteam, sum(rec_yards_gained) as recyards 
		from tblFFOpportunityWeekly
		where position in ('wr','te')
		and ((season >= 2000 and season <= 2020 and week <= 17) or (season >= 2021 and week <= 18))
		group by full_name, season, posteam)
	as rec
	on rb.rbteam = rec.posteam
	and rb.rbseason = rec.season)
as combo
--where posteam = 'ind'
--and season = 2000
order by totalyards desc

--select * from tblFFOpportunityWeekly