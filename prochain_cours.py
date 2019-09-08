#!/usr/bin/python
from urllib.request import urlopen
from bs4 import BeautifulSoup
import time, datetime

now = datetime.datetime.now()

group = "INF501_A3"
#date = "09/04/2019"
date = time.strftime("%d/%m/%Y")
#heure = "09:26"
heure = time.strftime("%H:%M")
d, m, a = date.split("/")
current_h, current_m = heure.split(":")
time = datetime.datetime(int(a), int(m), int(d), int(current_h), int(current_m))

page = urlopen("http://hackjack.info/et/{}/{}/{}/{}".format(group, a, m, d))

soup = BeautifulSoup(page, 'html.parser')

tds = soup.findAll('div', attrs={'class': 'event td'})
tds_machine = soup.findAll('div', attrs={'class': 'event td machine'})
tds_autre = soup.findAll('div', attrs={'class': 'event autre'})
cours = soup.findAll('div', attrs={'class': 'event cours'})

events = tds + tds_machine + tds_autre + cours

cours = {}

for e in events:
    debut = e.find('div', attrs={'class': 'horaire'}).text[:5]
    fin = e.find('div', attrs={'class': 'horaire'}).text[6:11]
    _type = e.find('div', attrs={'class': 'horaire'}).text[12:].strip()
    salle = e.find('div', attrs={'class': 'salle'}).text.replace("Salle : ", "")
    matiere_full = e.find('div', attrs={'class': 'subject'}).text.replace("Subject : ", "").split(" ")
    UE = matiere_full[0]
    matiere = " ".join(matiere_full[1:])
    heures, minutes = debut.split(':')
    horaire_dt = datetime.datetime(int(a), int(m), int(d), int(heures), int(minutes))
    cours[horaire_dt] = (matiere, salle, debut, fin, _type)

cours_futurs = {}
for h in cours:
    if h > time:
        cours_futurs[h] = cours[h]

mini = datetime.datetime(9999,1,1)
for h in cours_futurs:
    if h < mini:
        mini = h

print("-> {} de {} - {}-{} - {}".format(cours[mini][4] ,cours[mini][0], cours[mini][2], cours[mini][3], cours[mini][1]))
