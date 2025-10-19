chmod +x update.sh
#!/bin/bash
# 🚀 Script de mise à jour pour songsketch-agent

echo "🔄 Activation de l'environnement virtuel..."
pyenv activate songsketch-agent-env

echo "⬆️ Mise à jour de pip..."
python -m pip install --upgrade pip

# Détection si requirements-local.txt existe
if [ -f "requirements-local.txt" ]; then
    echo "📦 Installation avec requirements-local.txt (mode local)..."
    pip install -r requirements-local.txt
else
    echo "📦 Installation avec requirements.txt (mode cloud)..."
    pip install -r requirements.txt
fi

echo "✅ Mise à jour terminée !"
#!/bin/bash
# 🚀 Script de mise à jour pour songsketch-agent

echo "🔄 Activation de l'environnement virtuel..."
pyenv activate songsketch-agent-env

echo "⬆️ Mise à jour de pip..."
python -m pip install --upgrade pip

# Détection si requirements-local.txt existe
#!/bin/bash
# 🚀 Script de mise à jour pour songsketch-agent

echo "🔄 Activation de l'environnement virtuel..."
pyenv activate songsketch-agent-env

echo "⬆️ Mise à jour de pip..."
python -m pip install --upgrade pip

# Détection si requirements-local.txt existe
if [ -f "requirements-local.txt" ]; then
    echo "📦 Installation avec requirements-local.txt (mode local)..."
    pip install -r requirements-local.txt
else
    echo "📦 Installation avec requirements.txt (mode cloud)..."
    pip install -r requirements.txt
fi

echo "✅ Mise à jour terminée !"

