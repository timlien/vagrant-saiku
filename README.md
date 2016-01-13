# vagrant-saiku

[Saiku Community][1]  Development Environment


## Installation

Install [vagrant][1] and its dependencies.
Download vagrant-saiku to your local directory.
```bash
$ cd /path/to/local/vagrantfile
$ vagrant up
```


## Usage

Please be noted Tomcat startup time may take a few minutes. 
You can the visit the following URL in a browser on your host machine to get started.
The default username/password is admin/admin.
```
http://localhost:8080
```


## Log

Saiku log
```bash
$ cd /path/to/local/vagrantfile
$ vagrant ssh
$ docker exec -it vagrant_saiku cat /usr/local/saiku-server/tomcat/logs/saiku.log
```
Tomcat log
```bash
$ cd /path/to/local/vagrantfile
$ vagrant ssh
$ docker exec -it vagrant_saiku cat /usr/local/saiku-server/tomcat/logs/catalina.out
```

[1]: http://community.meteorite.bi/
[2]: https://www.vagrantup.com/