######################################################
#Verificar quantidade de processadores
<cpuinfo>
sudo cat /proc/cpuinfo
</cpuinfo>
######################################################
#Quantidade de memória
<mainfo>
sudo cat /proc/mainfo
</mainfo>
######################################################
#Quantidade de memoria disponivel
<free>
sudo free -m
</free>
######################################################
#Processos em aberto
<ps aux>
sudo ps aux
</ps aux>
######################################################
#
<top>
sudo top
</top>
######################################################
#
<uptime>
sudo uptime
</uptime>

######################################################
#      Pacote sysstat                                #  
sudo apt-get install sysstat                         #
#                                                    #
######################################################
	   #Ver os binários gerados pelo pacote instalado
sudo dpkg -L sysstat | grep bin
	
#Reporta utilização de cpu e estatisticas de I/O
<lostat>
lostat
</lostat> 
######################################################
#Reporta estastiticas globais e por processedador
<mpstat>
mpstat
mpstat -P 0 /backup
</mpstat>
#######################################################
#
sudo netstat -putan

#######################################################
#
<sar -u>
sudo sar -u 5 3
</sar -u>
#######################################################
#

#######################################################
#Recolhe e reporta informações de atividade do sistema
<sar>
sar
</sar>
########################################################
#Reportar estastiticas de tarefas(processos em execução
<pidstat>
pidstat
pidstat $(pgrep cron)
</pidstat>
#########################################################
#Visualiza dados colhidos pelo comando sar
<sadf>
sadf
</sadf>
#########################################################
#relatório de CPu 
<iostat>
sudo iostat -c
</iostat>
#########################################################
#relatório de disco
<iostat>
sudo iostat -d
</iostat>
#########################################################
# Gerar backup
sudo tar -cf /backup/bkp_etc.tar /etc

