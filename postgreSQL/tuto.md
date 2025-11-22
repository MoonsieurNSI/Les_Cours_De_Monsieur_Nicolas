- On se connecte comme user `postgres` avec la commande
```bash
sudo -u postgres -i psql
```

- Si on veut enregistrer la session dans un fichier `/tmp/session.log`
```bash
sudo -u postgres -i psql -a -L /tmp/session.log
```
