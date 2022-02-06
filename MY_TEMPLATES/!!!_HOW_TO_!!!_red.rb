
=======================================================================================================

watch 'sudo iptables --line-number -L SELECT_OUTPUT -nv -t nat'
watch 'sudo iptables -nvL -t nat'

=======================================================================================================
=========== РАБОТА с NETPLAN =============================================================
	посмотреть какие инт-сы есть в системе:
		ll /sys/class/net
	
	переходим в папку netplan:
		cd /etc/netplan

	netplan опции команда

	В качестве команды можно передать одну из команд:

		try - попробовать применить конфигурацию с возможностью отмены;
		apply - применить конфигурацию;
		generate - проверка текущей конфигурации и запись на диск;
		config - записать текущую конфигурацию сети в YAML.

		sudo netplan --debug generate


		sudo netplan try


		sudo netplan --debug apply <-- в нашем случае не нужно


=====================================================================================================================================

		
--------------------------------------------------------------------------------
cd /opt/prometheus-configuration/prometheus-app-1

ll
	total 28
	drwxr-xr-x  5 docker docker 4096 Feb  4 11:46 ./
	drwxr-xr-x 15 docker docker 4096 Jul 21  2021 ../
	drwxr-xr-x  4 docker docker 4096 Jul  3  2021 alertmanager/
	-rw-r--r--  1 docker docker 5947 Feb  4 11:45 docker-compose.yml
	drwxr-xr-x  2 root   root   4096 Jul  3  2021 node-exporter/
	drwxr-xr-x  2 docker docker 4096 Feb  4 10:11 prometheus/

docker-compose down

cd /opt/prometheus_data/

find ./ -type d -mtime +7 | xargs du -h --time | less

find ./ -type d -mtime +7 | xargs rm -rf

cd /opt/prometheus-configuration/prometheus-app-1 && docker-compose up -d

