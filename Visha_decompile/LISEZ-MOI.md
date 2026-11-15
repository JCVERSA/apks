# Visha Video Player décompilé

- `apktool/` : manifest décodé, ressources et Smali.
- `jadx/` : code Java reconstruit, qui ne correspond pas nécessairement au code source original.
- `splits/` : configurations du XAPK (langues, arm64 et densité). Voir `report/split-status.tsv` ; `raw-fallback` signifie non décodé.
- `report/` : empreinte de l'APK, signature, identité et journaux de décompilation.

Les erreurs ou avertissements de JADX sont consignés dans `report/jadx.log` et son code de retour dans `report/decompile-status.txt`. Consulter le Smali pour les parties incertaines. Aucune exécution de l'application n'a été effectuée.
