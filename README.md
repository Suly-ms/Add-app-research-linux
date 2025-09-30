# Créateur de raccourcis d'application pour Debian

Ce script Bash interactif permet de créer un raccourci `.desktop` pour n'importe quelle application, afin qu'elle soit accessible via le menu de recherche dans Debian et autres environnements compatibles.

## Fonctionnalités

- Interface en ligne de commande interactive
- Création automatique du fichier `.desktop`
- Personnalisation du nom, chemin d'exécution, icône, catégorie
- Option pour lancer l'application dans un terminal ou non
- Compatible avec GNOME, KDE, XFCE, etc.

## Utilisation

1. Clonez le dépôt :
   ```bash
   git clone https://github.com/Suly-ms/Add-app-research-linux.git
   cd creer-raccourci-debian
2. Rendez le fichier executable :
   ```bash
   chmod +x Add-app-research-linux.sh
3. Lancer le programme :
   ```bash
   ./Add-app-research-linux.sh
4. Répondez aux question
5. ET VOILA ! -> Le raccourci sera créé dans ~/.local/share/applications/MonApp.desktop

## Désinstallation
```bash
rm ~/.local/share/applications/MonApp.desktop
```

Ce projet est sous licence MIT

Développé avec soin par Suly !
