#!/bin/bash

sudo groupadd p1c2_2024_gAlumno 

sudo useradd -m -s /bin/bash -c "p1c2_2024_A1" -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1

sudo usermod -G p1c2_2024_gAlumno p1c2_2024_A1

sudo useradd -m -s /bin/bash -c "p1c2_2024_A2" -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A2

sudo usermod -G p1c2_2024_gAlumno p1c2_2024_A2

sudo useradd -m -s /bin/bash -c "p1c2_2024_A3" -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A3

sudo usermod -G p1c2_2024_gAlumno p1c2_2024_A3

sudo useradd -m -s /bin/bash -c "p1c2_2024_P1" -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1

sudo groupadd p1c2_2024_gProfesores

sudo usermod -G p1c2_2024_gProfesores p1c2_2024_P1 

sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes_UTN/alumno_1

sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes_UTN/alumno_2

sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes_UTN/alumno_3

sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes_UTN/profesores

sudo chmod -R 750 /Examenes_UTN/alumno_1

sudo chmod -R 760 /Examenes_UTN/alumno_2

sudo chmod -R 700 /Examenes_UTN/alumno_3

sudo chmod -R 775 /Examenes_UTN/profesores

sudo su -c "whoami > /Examenes_UTN/alumno_1/validar.txt" p1c2_2024_A1

sudo su -c "whoami > /Examenes_UTN/alumno_2/validar.txt" p1c2_2024_A2

sudo su -c "whoami > /Examenes_UTN/alumno_3/validar.txt" p1c2_2024_A3

sudo su -c "whoami > /Examenes_UTN/profesores/validar.txt" p1c2_2024_P1
