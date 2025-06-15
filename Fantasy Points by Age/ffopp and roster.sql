declare @now datetime = '2024-12-31'
select * from (
	select *, ROW_NUMBER() over (partition by age order by totalpts desc) as rankno from (
		select sum(total_fantasy_points) as totalpts, player_id, r.full_name, ff.season, r.birth_date, 
			(CONVERT(int,CONVERT(char(8),@now,112))-CONVERT(char(8),birth_date,112))/10000 as age
		from tblFFOpportunityWeekly as ff
		join tblRosters r
		on r.gsis_id = ff.player_id
		where ff.season = 2024
		and r.years_exp = 0
		and ff.week <= 18
		group by player_id, ff.season, r.birth_date, r.full_name
	) a
) b
where rankno = 1
order by birth_date desc 


