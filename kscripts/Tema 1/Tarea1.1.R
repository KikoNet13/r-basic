seg_sobran = 250 * 10^6

seg_min = 60
seg_hora = seg_min * 60
seg_dia = seg_hora * 24
seg_anyo_bis = seg_dia * 366
seg_anyo_norm = seg_dia * 365

seg_sobran = seg_sobran - seg_anyo_norm #2018 seg_sobran = 218464000
seg_sobran = seg_sobran - seg_anyo_norm #2019 seg_sobran = 186928000
seg_sobran = seg_sobran - seg_anyo_bis #2020 seg_sobran = 155305600
seg_sobran = seg_sobran - seg_anyo_norm #2021 seg_sobran = 123769600
seg_sobran = seg_sobran - seg_anyo_norm #2022 seg_sobran = 92233600
seg_sobran = seg_sobran - seg_anyo_norm #2023 seg_sobran = 60697600
seg_sobran = seg_sobran - seg_anyo_bis #2024 seg_sobran = 29075200
seg_sobran = seg_sobran - seg_anyo_norm #2025 seg_sobran = -2460800

#No se puede completar el 2025, así que el año es 2025
seg_sobran = seg_sobran + seg_anyo_norm #seg_sobran a 01/01/2025
anyo = 2025


seg_sobran = seg_sobran - seg_dia * 31 #Enero seg_sobran = 26396800
seg_sobran = seg_sobran - seg_dia * 28 #Febrero seg_sobran = 23977600
seg_sobran = seg_sobran - seg_dia * 31 #Marzo seg_sobran = 21299200
seg_sobran = seg_sobran - seg_dia * 30 #Abril seg_sobran = 18707200
seg_sobran = seg_sobran - seg_dia * 31 #Mayo seg_sobran = 16028800
seg_sobran = seg_sobran - seg_dia * 30 #Junio seg_sobran = 13436800
seg_sobran = seg_sobran - seg_dia * 31 #Julio seg_sobran = 10758400
seg_sobran = seg_sobran - seg_dia * 31 #Agosto seg_sobran = 8080000
seg_sobran = seg_sobran - seg_dia * 30 #Septiembre seg_sobran = 5488000
seg_sobran = seg_sobran - seg_dia * 31 #Octubre seg_sobran = 2809600
seg_sobran = seg_sobran - seg_dia * 30 #Noviembre seg_sobran = 217600
seg_sobran = seg_sobran - seg_dia * 31 #Diciembre seg_sobran = -2460800

#No se puede completar diciembre, así que el mes es diciembre
seg_sobran = seg_sobran + seg_dia * 31 #seg_sobran a 01/12/2025
mes = 12


dia = seg_sobran %/% seg_dia
#2 días completos, por lo que será el día 03/12/2025 porque contamos desde el día 1
dia = dia + 1

seg_sobran = seg_sobran %% seg_dia

#Horas, minutos y segundos comienzan desde el 0, así que no hay que sumar nada
hora = seg_sobran %/% seg_hora

seg_sobran = seg_sobran %% seg_hora

minuto = seg_sobran %/% seg_min

segundo = seg_sobran %% seg_min

sprintf("A las %i:%i:%i del %i/%i/%i", hora, minuto, segundo, dia, mes, anyo)
# "A las 12:26:40 del 3/12/2025"