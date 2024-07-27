create table consommation (
    date_heure_transfo datetime,
    NumeroSim varchar(10),
    N°Appellant varchar(11),
    codeTenant varchar(20),
    SoldeData integer(100),
    SoldeSMS integer(100),
    SoldeAitime integer(100),
    Serveur varchar(20),
    CoordonneLatitude varchar(20),
    CoordonneLongitude varchar(20),
    statut varchar(20),
    Apn varchar(20),
    Ipproxy varchar(20),
    port integer(3),
    IdentifiantSiteBTS varchar(20),
    MotPasse varchar(20),
    NameUser varchar(20),
    IPV4 varchar(20)
);

INSERT INTO `consommation` (`date_heure_transfo`, `NumeroSim`, `N°Appellant`, `codeTenant`,`SoldeData`,`SoldeSMS`,
                           `SoldeAitime`,`Serveur`,`CoordonneLatitude`,`CoordonneLongitude`,`statut`,`Apn`,`Ipproxy`,
                           `port`,`IdentifiantSiteBTS`,`MotPasse`,`NameUser`,`IPV4`)
VALUES ('2023-02-15 17:24:55',"0707070707","07070707085","****",2000,500,5000,"@coulby","xxxx","xxxx","xxxx",
"orangeciweb","40.72.124.20:80",42,"xxxx","****","web","192.168.1.25");


CREATE TABLE info_capteur (
date_heure_mesure datetime,
zone_poste varchar, 
composante varchar, 
depart int, 
type_metric varchar,
phase varchar,
mesure real,
);
######
save_dbs data
#!/bin/bash
mysql_user=root
mysql_pass=oumar2771

cat file.sql | awk -F "|" '{print "INSERT INTO `tranferfiles` (`dates`, `heure`,`numero`, `montant` ) VALUES ('\''"$1"'\'', '\''"$2"'\'', '\''"$3"'\'', '\''"$4"'\'');"}' > ma_base ;
cm=`cat ma_base`
mysql -u $mysql_user --password=$mysql_pass -e "use ma_base; $cm;"
######