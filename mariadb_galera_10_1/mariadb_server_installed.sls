
include:
    - mariadb_10_1.repo_installed
    - mysql.default_mysql_uninstalled

mariadb_server_installed:
    pkg.installed:
        - pkgs:
            - MariaDB-client
            - galera
        - require:
            - pkg: default_mysql_uninstalled
            - pkgrepo: repo_installed
