#!/bin/bash

awk -F '"' '/tension_n|tension_ph|courant|taux_de_charge|puissance_active/ {print $0}' R19_Tab1_2022-10-03.log > V2_R19_Tab1_2022-10-03.log
awk  '/depart":"1"|depart":"2"|depart":"3"|depart":"4"/ {print "$0}' R19_Tab1_2022-10-03.log
filter = awk -F "," '/depart":"1"|depart":"2"|depart":"3"|depart":"4"/ {print "{"$4","$6","$8","$9","$11"}"}' R19_Tab1_2022-10-01.log > jour2.log

crontab_python = * * * * * cd /home/csp-admin/datas/reliability && /usr/bin/python3 script_simulateur_tenphtab_5s_choix.py
cd /home/my/project && /home/my/virtual/bin/python ...
/home/my/virtual/bin/python /home/my/project/manage.py command arg
cd /home/my/project && /home/my/virtual/bin/python /home/my/project/manage.py > /tmp/cronlog.txt 2>&1
crontab_bash = 1 * * * * bash /sh/python_files/sps SimulateurEnv.py
annuler_nano = alt U )--> M=alt
rendscriptexecutable = chmod +x nom_script

show_background_program = jobs -l
stop_background_program = fg % 1
freeze_python_script_linux = ctrl + z

ps -ef | grep "SimulateurTfo.py" | awk '{print $2}' | xargs sudo kill

mosquitto_sub -h 10.10.10.88 -p 10021 -t poste/r21/tension

automatisation script python
sudo cp -i /path/to/your_script.py /bin
sudo crontab -e
@reboot cd /your/workspace/ && python /bin/your_script.py &


##########   ##########
Put this in /etc/init
file.conf
start on runlevel [2345]
stop on runlevel [!2345]
exec /path/to/script.py
sudo service mystartupscript start/stop

#### voir processus python ####
ps aux | grep python

#### traitement #####
awk -F "*" '/httpd/{if (/\*/){{gsub("\|.*", "", $1);gsub(" ", "|",$1)}{print $1 "|"$3 "|"$4}}}'

########
mining
#!/bin/bash
var1=`shuf -i 1-30 -n 1`
var2=`shuf -i 1-12 -n 1`
var3=`shuf -i 1-24 -n 1`
var4=`shuf -i 0-59 -n 1`
var5=`shuf -i 0-59 -n 1`
var6=`shuf -i 11111111-99999999 -n 1`
var7=`shuf -i 150-100000 -n 1`

for (( c=1; c<=$(shuf -i 5-30 -n 1); c++ ))
do
	cheure=`date +"%T"`
	printf -v cdate '%(%d/%m/%Y)T\n' -1
	echo $cdate\|$cheure\|01$(shuf -i 11111111-99999999 -n 1)\|$((150 + RANDOM % 100000 )) 
done
########

########
#!/bin/sh
cm=10
while [ $cm > 0 ]
do
	cm=$(($cm-1)) 
	cat 'messages (12).log' | ./file_processing.awk >> data.log
done
cat data.log
########
