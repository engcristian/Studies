import csv
import pandas as pd

time = []

print('-'*50)
print('-=' * 10, ' WAKATIME ', '-=' * 10)
print('-'*50)

opt = int(input('''
Escolha uma das opções: 
1 - Acrescentar dia e hora;
2 - Total de horas;
3 - Total de horas do dia de ontem;
4 - Total de horas dos 7 últimos dias;
5 - Total de horas dos 15 últimos dias;
6 - Total de horas dos 30 últimos dias; 
7 - Fechar;
'''))

df = pd.read_csv('hours.csv', index_col= 'semana')

if opt == 1:    
    time.append(str(input('Dia: ')))
    time.append(int(input('Horas: ')))
    time.append(int(input('Minutos: ')))
    with open('hours.csv', 'a', newline='') as file:
    
        writer = csv.writer(file)        

        writer.writerow(time)       
        
        file.close()

    print('Suas horas foram salvas.')
if opt == 2:
    t = len(df)
    minutos = df['minutos'].sum()
    total = df['horas'].sum() + (minutos//60)
    print(f'Foram {t} dias de programação')
    print(f'Ao todo {total}h{minutos%60}min de programação. Parabéns')

if opt == 3:
    
    
    minutos = df['minutos'][-1:].sum()
    tot_y = df['horas'][-1:].sum() + minutos//60
    #print(df[-1:])
    print(f'Ontem foi um total de {tot_y}h{minutos%60}m de programação.')

if opt == 4:
    
    minutos = df['minutos'][-7:].sum()
    tot_w = df['horas'][-7:].sum() + minutos//60
    print(f'Últimos 7 dias teve um total de {tot_w}h{minutos%60}m de programação.')
if opt == 5:
    minutos = df['minutos'][-15:].sum()
    tot_q = df['horas'][-15:].sum() + minutos//60
    print(f'Últimos 15 dias teve um total de {tot_q}h{minutos%60}m de programação.')
if opt == 6:
    minutos = df['minutos'][-30:].sum()
    tot_m = df['horas'][-30:].sum() + minutos//60
    print(f'Últimos 30 dias teve um total de {tot_m}h{minutos%60}m de programação.')

if opt == 7:
    print('Obrigado, bons estudos!')