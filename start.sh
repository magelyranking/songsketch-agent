#!/bin/bash
# 🚀 Script de démarrage pour songsketch-agent

# Vérifie si on est en environnement local (Mac avec pyenv) ou Cloud (Streamlit)
if command -v pyenv >/dev/null 2>&1; then
    echo "🖥️ Mode local détecté (pyenv disponible)."
    echo "🔄 Activation de l'environnement virtuel..."
    pyenv activate songsketch-agent-env
else
    echo "☁️ Mode Cloud détecté (pyenv non disponible)."
    echo "⚡ Utilisation de l'environnement Streamlit Cloud."
fi

echo "⬆️ Mise à jour des dépendances..."
if [ -f "./update.sh" ]; then
    ./update.sh
else
    echo "⚠️ update.sh non trouvé, installation basique..."
    pip install -r requirements.txt
fi

echo "🎶 Lancement de l'application Streamlit..."
streamlit run app.py
#!/bin/bash
# 🚀 Script de démarrage pour songsketch-agent

echo "🔄 Activation de l'environnement virtuel..."
pyenv activate songsketch-agent-env

echo "⬆️ Mise à jour des dépendances..."
./update.sh

echo "🎶 Lancement de l'application Streamlit..."
streamlit run app.py

