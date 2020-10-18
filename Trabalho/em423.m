clc 
clear
format long

carregamento_1.posicao = [0 5];
carregamento_1.poli = [1 0];
carregamento_2.posicao = [5 8];
carregamento_2.poli = [3];
carregamentos = [carregamento_1; carregamento_2]
forcas_carregamentos = carregamentos_para_forcas(carregamentos)

forca_1 = [1 4000];
forca_2 = [2 5000];
forca_3 = [5 -1000];
forcas_y = [forca_1; forca_2; forca_3]
forcas_y = [forcas_y; forcas_carregamentos]
momentos = forcas_para_momentos(forcas_y)

apoios = [2 0 0 0 0]

apoios = calcular_reacoes(apoios, forcas_y, [], momentos, [])