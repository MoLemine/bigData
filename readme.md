# 📰 Scrap ami.mr – Analyse Quantitative du Discours Politique Mauritanien (2007–2022)

<p align="center">
  
  <br><br>
  <strong>Université de Nouakchott Al Aasriya</strong><br>
  Faculté des Sciences et Techniques<br>
  Département Mathématiques et Informatiques<br>
  <strong>Master SSD – Statistiques et Sciences des Données</strong><br>
  Année universitaire 2025–2026
</p>

---

## 📌 Présentation du projet

Ce projet de Master vise à analyser de manière quantitative et statistique le **discours politique mauritanien**
à partir des articles publiés en langue française sur le site officiel de l’**Agence Mauritanienne d’Information (AMI)**  
👉 https://ami.mr  
La période étudiée couvre **15 années (2007–2022)**.

Le projet combine des techniques de **web scraping**, de **bases de données distribuées**
et d’**analyse statistique de données textuelles** afin d’étudier l’évolution des thématiques,
du sentiment médiatique et du cadrage politique.

---

## 🎯 Objectifs

- Scraper automatiquement les articles politiques du site *ami.mr*
- Structurer et stocker les données dans une base **MongoDB distribuée**
- Mettre en place la **réplication** et le **sharding**
- Analyser l’évolution du discours politique sur le long terme
- Produire des visualisations statistiques interprétables

---

## 🛠️ Méthodologie

Le projet repose sur les étapes suivantes :

- **Web scraping** avec `requests` et `BeautifulSoup`
- **Nettoyage et structuration** des données textuelles
- **Stockage distribué MongoDB** :
  - Réplication
  - Sharding
- **Analyses quantitatives** :
  - Fréquence des mots-clés politiques
  - Analyse de sentiment (TextBlob)
  - Étude du cadrage de la corruption
  - Évolution de l’agenda médiatique
- **Visualisation** avec `matplotlib` et `seaborn`

---

## 🧠 Thématiques analysées

- Démocratie vs armée  
- Pouvoir exécutif, gouvernement et opposition  
- Élections et institutions  
- Discours de crise vs discours de stabilité  
- Analyse de sentiment du discours politique  
- Cadrage médiatique de la corruption  
- Agenda politique dans la presse mauritanienne  

---

## 📁 Structure du dépôt

```bash
scrap-ami-mr/
├── cmds/                          # Scripts MongoDB (réplication & sharding)
├── visualizations/                # Graphiques et figures générés
├── scraping.ipynb                 # Notebook de web scraping
├── visual.ipynb                   # Notebook d’analyses et visualisations
├── ami_Tag_politique_2022-08-06_to_2007-01-01.xlsx  # Données finales (Excel)
├── articles_mauritanie.json       # Données brutes scrapées (JSON)
└── ProjetSSD_BigData_C12896.pdf   # Mémoire complet du projet (16 pages)
