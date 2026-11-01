# Corrections locales des heuristiques d’audit

Ce dossier contient les valeurs **revues manuellement** utilisées par les deux rapports français :

- `analysis/ZArchiver_Audit_Complet.md`
- `analysis/ZArchiver_Audit_Design_Mode.md`

Les JSON sous `analysis/remote/zarchiver-audit-41288119748/` sont les preuves brutes du run GitHub Actions et sont conservés tels quels. Ne pas utiliser leurs compteurs heuristiques sans lire `corrections.json`.

Fichiers :

- `corrections.json` — écart brut/corrigé et conclusions de revue.
- `theme-contrast.json` — contrastes WCAG recalculés depuis les attributs personnalisés du renderer ; Material You marqué INCONNU.
- `pending-intents-decoded.json` — flags PendingIntent décodés en masque binaire : 3 MUTABLE, 5 IMMUTABLE.

Les scripts `.github/scripts/zarchiver_full_audit.py` et `.github/scripts/zarchiver_design_audit.py` ont été corrigés pour les futurs runs. Tests de fumée locaux stdlib réussis ; aucun nouvel outillage installé dans le workspace.
