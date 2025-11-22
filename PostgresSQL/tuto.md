- On se connecte comme user `postgres` avec la commande
```bash
sudo -u postgres -i psql
```

- On enregistre la session psql
```bash
\set ECHO all
\o | tee -a session.log

CREATE TABLE test(id int);
SELECT now();

\o     -- stop logging
```

