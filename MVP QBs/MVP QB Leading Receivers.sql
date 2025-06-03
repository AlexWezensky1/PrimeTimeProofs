select * from (
    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal 
    from tblPBP2024
    where passer_player_name in (
        select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) 
        from tblMVPs
        where Year = 2024)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2023
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2023)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2022
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2022)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 'A.Rodgers' as passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2021
    where passer_player_name in ((select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2021), 'Aa.Rodgers')
    and season_type = 'reg'
    group by receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2020
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2020)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2019
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2019)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2018
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2018)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2017
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2017)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2016
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2016)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2015
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2015)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2014
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2014)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2013
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2013)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2012
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2012)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2011
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2011)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2010
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2010)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2009
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2009)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2008
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2008)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2007
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2007)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2006
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2006)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2005
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2005)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2004
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2004)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 2 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal 
    from tblPBP2003
    where passer_player_name in (
        select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) 
        from tblMVPs
        where Year = 2003)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 'R.Gannon' as passer_player_name, 'J.Rice' as receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2002
    where passer_player_name in ((select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2002), 'R. Gannon')
    and season_type = 'reg'
    and receiver_player_name in ('J.Rice', 'J. Rice')
    group by left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2001
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2001)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

    UNION ALL

    (select top 1 passer_player_name, receiver_player_name, left(game_id,4) as Year, sum(receiving_yards) as RecYardsTotal from tblPBP2000
    where passer_player_name in (select LEFT(Player,1) + '.' + SUBSTRING(Player, CHARINDEX(' ',Player)+1, 10) from tblMVPs
        where Year = 2000)
    and season_type = 'reg'
    group by passer_player_name, receiver_player_name, left(game_id,4)
    order by RecYardsTotal desc)

 ) t;

