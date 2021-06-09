anyo_inicial = 2018
tot_seg = 250 * 10^6

seg_min = 60
seg_hora = seg_min * 60
seg_dia = seg_hora * 24
seg_anyo = seg_dia * 365.25
seg_anyo_bis = seg_dia * 366
seg_anyo_norm = seg_dia * 365

anyos = tot_seg %/% seg_anyo

seg_sobran = tot_seg %% seg_anyo

dias = seg_sobran %/% seg_dia

seg_sobran = seg_sobran %% seg_dia

horas = seg_sobran %/% seg_hora

seg_sobran = seg_sobran %% seg_hora

minutos = seg_sobran %/% seg_min

segundos = seg_sobran %% seg_min

sprintf("A las %i:%i:%i del día %i del año %i", horas, minutos, segundos, dias, anyos+anyo_inicial)