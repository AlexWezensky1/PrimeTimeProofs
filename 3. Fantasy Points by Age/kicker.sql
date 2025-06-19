--select count(position), position from tblPlayerStats group by position
select * from tblPlayerStats where position='k'
order by season
select * from tblPlayerStatsNew where position='k'
order by season

select * from tblStats2024 where position = 'k'