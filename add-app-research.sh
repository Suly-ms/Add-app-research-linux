#!/bin/bash

echo "=== Création d'un raccourci d'application ==="

# Demande des informations à l'utilisateur
read -p "Nom de l'application : " APP_NAME
read -p "Chemin vers l'exécutable (ex: /usr/bin/monapp) : " EXEC_PATH
read -p "Nom ou chemin de l'icône (ex: utilities-terminal ou /chemin/vers/icon.png) : " ICON_NAME
read -p "Catégorie (ex: Utility, Development, etc.) : " CATEGORY
read -p "Lancer dans un terminal ? (oui/non) : " TERMINAL_CHOICE

# Conversion du choix en valeur attendue
if [[ "$TERMINAL_CHOICE" =~ ^[Oo]ui$ ]]; then
    TERMINAL="true"
else
    TERMINAL="false"
fi

# Chemin du fichier .desktop
DESKTOP_FILE="$HOME/.local/share/applications/$APP_NAME.desktop"

# Création du fichier .desktop
mkdir -p "$HOME/.local/share/applications"
cat > "$DESKTOP_FILE" <<EOL
[Desktop Entry]
Name=$APP_NAME
Exec=$EXEC_PATH
Icon=$ICON_NAME
Type=Application
Categories=$CATEGORY;
Terminal=$TERMINAL
EOL

# Donner les bons droits
chmod +x "$DESKTOP_FILE"

echo "Raccourci créé : $DESKTOP_FILE"
echo "Vous pouvez maintenant rechercher '$APP_NAME' dans le menu des applications."
