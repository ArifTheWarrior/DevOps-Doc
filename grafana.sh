$ sudo apt update
$ sudo apt install -y gnupg2 curl software-properties-common
$ curl -fsSL https://packages.grafana.com/gpg.key|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/grafana.gpg
$ sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"
$ sudo apt update
$ sudo apt -y install grafana
$ sudo systemctl enable --now grafana-server
$ sudo ufw allow ssh
$ sudo ufw allow 3000/tcp
To allow access only from a specific subnet, use:

$ sudo ufw allow from 192.168.50.0/24 to any port 3000

========================================================================================
Installs binary to /usr/sbin/grafana-server
Installs Init.d script to /etc/init.d/grafana-server
Creates default file (environment vars) to /etc/default/grafana-server
Installs configuration file to /etc/grafana/grafana.ini
Installs systemd service (if systemd is available) name grafana-server.service
The default configuration sets the log file at /var/log/grafana/grafana.log
The default configuration specifies a sqlite3 db at /var/lib/grafana/grafana.db
Installs HTML/JS/CSS and other Grafana files at /usr/share/grafana
The systemd service file and init.d script both use environment vars on the file located at /etc/default/grafana-server.
==========================================================================================


Add first of  your data source >> prometheus add 
HTTP 
url http://localhost:9090

In data source:
---------------
Dashboard >>Prometheus Stats,Prometheus 2.0 stats,
Grafana metrics import 


Create your dashboard >>>Visualize>>
select datasource 
select matric