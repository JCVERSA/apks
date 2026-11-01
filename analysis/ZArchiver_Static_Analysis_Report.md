# Analyse statique complète — `base.apk` (ZArchiver)

**Date :** 2026-11-01  
**Branche :** `arena/7234f8d6-apks`  
**Fichier analysé :** `base.apk` à la racine du dépôt `JCVERSA/apks`  
**Périmètre demandé :** analyse complète avant toute modification.  
**Statut :** analyse statique terminée. Aucun APK modifié, resigné, installé ou exécuté. Aucun test sur téléphone personnel.

---

## 1. Résumé exécutif

Le fichier `base.apk` est **ZArchiver**, package `ru.zdevs.zarchiver`, version `1.0.10`, versionCode `101033`, targetSdk `34`, minSdk `14`. Il s’agit d’un gestionnaire de fichiers/archives avec moteurs natifs 7z/RAR/EGG, accès stockage avancé, root/Shizuku, plugins IPC et installation d’APK/APKS/XAPK/APKM.

Points principaux :

- **Aucune permission `INTERNET`** dans le manifeste. L’application elle-même ne déclare pas de surface réseau directe.
- **Aucun SDK publicitaire, billing ou licence** identifié : pas d’AdMob, pas de Google Play Billing, pas de vérification de licence intégrée.
- **Modèle Donate/Pro présent sous forme de limitations fonctionnelles**, pas sous forme de timer ou de publicité. Plusieurs providers refusent l’écriture avec le message `Edit file is supported only in Donation/Pro version`.
- **Surface de privilèges élevée** : `MANAGE_EXTERNAL_STORAGE`, root via `su`, Shizuku/SUI, `REQUEST_INSTALL_PACKAGES`, providers avec `grantUriPermissions`, activités exportées.
- **Risque de compatibilité majeur** : uniquement `armeabi-v7a`, pas de `arm64-v8a`.
- **Incohérence de version confirmée** : le manifeste/aapt indique `101033`, mais `AboutDlg` contient `101036` en fallback et dans le texte de feedback.
- **Identité de signature** : `CN=Anton Prozorov, OU=Unknown, O=Ant-ON, L=Ekb, ST=SR, C=RU`. Ce n’est pas une identité `JCVERSA`. Si ce build est bien celui de votre équipe, il faudra fournir le contexte/source/clé de signature attendu ; sinon ce fichier correspond à l’identité publique de ZArchiver.

Verdict global : **application utilitaire hors-ligne, sans pub/IAP intégré, mais avec une surface stockage/root/installation importante et plusieurs points de durcissement à traiter avant toute modification fonctionnelle.**

---

## 2. Méthode et preuves

Outils exécutés uniquement sur GitHub Actions, jamais installés dans le workspace local :

- `apktool 3.0.3`
- `jadx 1.5.6`
- `apksigner`, `zipalign`, `aapt`, `apkanalyzer` depuis Android SDK Build-Tools / cmdline-tools
- `file`, `readelf`, `strings` pour les bibliothèques natives
- scripts Python stdlib pour inventaire, hash, manifeste, DEX et preuves ciblées

Runs GitHub Actions :

| Run | Workflow | Résultat | Preuves |
|---:|---|---|---|
| `41286142337` | `ZArchiver static analysis` | succès | `analysis/remote/zarchiver-analysis-41286142337/` |
| `41286469657` | `ZArchiver deep evidence` | succès | `analysis/remote/zarchiver-deep-41286469657/` |

Couverture :

- APK : 4 864 570 octets, 569 entrées ZIP, `testzip` propre.
- DEX : un seul `classes.dex`, 800 définitions de classes.
- JADX : exit code `0`, 472 fichiers Java générés, 871 marqueurs d’avertissement/commentaires de décompilation.
- Apktool : exit code `0`, 800 fichiers smali.
- Sources Java copiées intégralement : 472/472, 3 466 339 octets, aucune troncature.
- Natif : métadonnées ELF, symboles exportés et chaînes bornées uniquement. Pas de désassemblage natif complet.
- Runtime : **non testé**.
- Comportement serveur : **sans objet direct** car pas de permission `INTERNET`, mais plugins externes non analysés.

Hash d’entrée vérifié :

```text
SHA-256 base.apk = aab078d2ea7b80e7199d2bb988772128131848c4df078ea8c55b19df7dfc16fd
```

---

## 3. Identité, signature et intégrité

### Confirmé

- Package : `ru.zdevs.zarchiver`
- Application : `ru.zdevs.zarchiver.ZApp`
- Label : `ZArchiver`
- Version manifeste/aapt : `1.0.10` / `101033`
- compileSdk : `34`
- minSdk : `14`
- targetSdk : `34`
- ABI native : `armeabi-v7a` uniquement
- Signature :
  - v1 JAR : oui
  - v2 : oui
  - v3/v3.1/v3.2/v4 : non
  - SourceStamp : non
  - RSA 2048 bits
  - Certificat SHA-256 : `7727f2807764c3499b9a2c3ff804505dd7468b117feb005804efc78659544db2`
  - DN : `CN=Anton Prozorov, OU=Unknown, O=Ant-ON, L=Ekb, ST=SR, C=RU`
- `zipalign -c 4` : exit `0`
- `zipalign -c -P 16 4` : exit `0`
- Avertissement apksigner : `META-INF/com/android/build/gradle/app-metadata.properties` non protégé par la signature v1. Comme la signature v2 vérifie l’APK entier, ce n’est pas une faille pratique en soi sur un appareil vérifiant v2.

### Incohérence confirmée

`AboutDlg.java` affiche `1.0.10 (GP <versionCode>)`, mais :

- fallback si `getPackageInfo` échoue : `101036`
- feedback email : `Build: GP 101036`
- manifeste/aapt : `101033`

Cela peut venir d’un build modifié, de ressources/code désynchronisés ou d’une constante de feedback non mise à jour. Ce n’est pas une preuve de falsification, mais c’est une incohérence à corriger ou expliquer.

### Probable

Le certificat et le package correspondent à l’identité publique de ZArchiver / Anton Prozorov. Sans comparaison avec un artefact officiel de référence ou sans vos éléments de build, la provenance exacte de ce fichier uploadé reste **non vérifiée**.

---

## 4. Architecture applicative

### 4.1 Composants principaux

| Type | Composant | Exporté | Processus | Rôle |
|---|---|---:|---|---|
| Activity | `ru.zdevs.zarchiver.ZArchiver` | oui | principal | lanceur, ouverture archives/fichiers, SEND/VIEW |
| Activity | `ZSelectFile` | oui | principal | sélection de fichiers, `GET_CONTENT`, `OPEN_DOCUMENT` |
| Activity | `ZImageViewer` | oui | principal | visualisation images |
| Activity | `ZTextEditor` | oui | `:text` | édition texte |
| Activity | `activity.ExtractDlg` | oui | principal | extraction externe |
| Activity | `activity.InstallApksDlg` | oui | principal | installation APKS/XAPK/APKM |
| Activity | `activity.InstallApkDlg` | non | principal | réglage sources inconnues |
| Activity | `activity.SettingsDlg` | non | principal | paramètres, root, plugins |
| Activity | `activity.AboutDlg` | non | principal | à propos, donate, feedback |
| Activity | `activity.OpenAsDlg` | non | principal | ouvrir avec |
| Service | `service.ZArchiverService` | non | `:service` | opérations longues, foreground service dataSync |
| Service | `service.ZArchiverClearTemp` | non | principal | nettoyage temporaire différé |
| Provider | `provider.FileProvider` | non | principal | fichiers externes, authority `ru.zdevs.zarchiver.external` |
| Provider | `provider.ArchiveFileProvider` | non | `:archive` | fichiers dans archives, authority `ru.zdevs.zarchiver.archive` |
| Provider | `provider.PluginFileProvider` | non | `:plugin` | fichiers plugins, authority `ru.zdevs.zarchiver.plugin` |
| Provider | `rikka.shizuku.ShizukuProvider` | oui | principal | IPC Shizuku, authority `ru.zdevs.zarchiver.shizuku` |

Le provider Shizuku est exporté mais protégé par `android.permission.INTERACT_ACROSS_USERS_FULL`, permission système/signature. Ce n’est pas un provider librement accessible aux applications tierces ordinaires.

### 4.2 Multi-processus

L’application utilise plusieurs processus :

- principal
- `:service`
- `:archive`
- `:plugin`
- `:text`
- Shizuku via provider/binder

`ZApp.onCreate` active/désactive dynamiquement certains composants selon la version Android :

- `.activity.InstallApksDlg`
- `.provider.PluginFileProvider`

Il initialise aussi Shizuku si API >= 23 et si le contexte n’est pas déjà considéré comme privilégié.

### 4.3 Moteurs natifs

Bibliothèques `armeabi-v7a` uniquement :

| Bibliothèque | Taille non compressée | Rôle probable |
|---|---:|---|
| `libp7zip.so` | 2 263 008 | moteur 7z/p7zip |
| `libp7zbin.so` | 1 263 396 | binaire/helper 7z |
| `libunrar.so` | 264 380 | extraction RAR |
| `libunegg.so` | 332 516 | extraction EGG |
| `libiconv.so` | 312 808 | conversion encodages |
| `libcoreutils.so` | 34 268 | opérations fichier/coreutils |
| `libcontrol.so` | 34 272 | contrôle/helper |
| `libhandler.so` | 34 272 | handler natif |
| `libmime.so` | 17 896 | détection MIME |

`C2JBridge` charge notamment `handler`, `mime`, `control`. `MimeLib` charge `mime`.

Chaînes natives notables : chemins `/data/data/ru.zdevs.zarchiver/bin/p7zbin`, `lib/libcoreutils.so`, `lib/libp7zbin.so`. Le mot `INTERNET` apparaît dans `libp7zip.so`, mais sous forme de chaîne isolée ; aucune permission `INTERNET` n’est déclarée et aucun indicateur réseau direct clair n’a été identifié dans les chaînes natives bornées.

### 4.4 Plugins

Découverte via :

```text
ru.zdevs.zarchiver.plugin.PLUGIN_APPLICATION
```

Le client plugin `l0/c` utilise :

- `queryIntentActivities`
- `ContentProviderClient`
- `acquireUnstableContentProviderClient`
- appels `call("disk")`, `copy`, `move`, etc.
- colonnes `_name`, `_id`, `_size`, `_dir`, `_last_mod`, `_path`, `_flags`

Permissions déclarées dans le manifeste :

```text
ru.zdevs.zarchiver.permission.PLUGIN.CLOUD
ru.zdevs.zarchiver.permission.PLUGIN.USB
```

Ces permissions sont **demandées** mais ne sont pas **déclarées** comme `<permission>` dans cet APK. Elles sont probablement destinées à être déclarées/protégées par des plugins ou un composant associé. À confirmer avec le code des plugins.

---

## 5. Permissions et privilèges

### 5.1 Permissions déclarées

| Permission | Condition | Usage identifié |
|---|---|---|
| `READ_EXTERNAL_STORAGE` | maxSdk 32 | stockage legacy |
| `WRITE_EXTERNAL_STORAGE` | maxSdk 29 | stockage legacy |
| `WRITE_MEDIA_STORAGE` | maxSdk 29 | stockage média legacy/système |
| `WAKE_LOCK` | toutes | opérations longues |
| `ACCESS_SUPERUSER` | toutes | root via gestionnaire su |
| `FOREGROUND_SERVICE` | minSdk 28 | service d’opérations |
| `FOREGROUND_SERVICE_DATA_SYNC` | minSdk 34 | type dataSync Android 14 |
| `REQUEST_INSTALL_PACKAGES` | SDK >= 23 | installation APK/APKS/XAPK |
| `MANAGE_EXTERNAL_STORAGE` | SDK >= 30 | accès tous fichiers |
| `POST_NOTIFICATIONS` | SDK >= 33 | notifications service |
| `moe.shizuku.manager.permission.API_V23` | toutes | Shizuku |
| `ru.zdevs.zarchiver.permission.PLUGIN.CLOUD` | toutes | plugins cloud |
| `ru.zdevs.zarchiver.permission.PLUGIN.USB` | toutes | plugins USB |

Permission utilisée par le provider Shizuku exporté :

```text
android.permission.INTERACT_ACROSS_USERS_FULL
```

### 5.2 Root / Shizuku / SUI

Confirmé dans `o0/a`, `o0/b`, `o0/e`, `o0/f`, `t0/b` :

- type root `1` : shell `su`
- types `2`/`3` : Shizuku/SUI si API >= 23
- fallback : shell `sh` non privilégié
- détection Shizuku : package `moe.shizuku.privileged.api`, versionCode minimal `502`
- option `bRoot` par défaut `false`
- avertissement root : `RTW_WARNING`
- options root pour `Android/data` et `Android/obb`
- restauration contexte SELinux après copie vers `/data`, `/system`, `/sys`

Les opérations root passent par des commandes shell. Certains helpers échappent les quotes simples, par exemple `n0/f.a`, mais l’ensemble des chemins/commandes root doit être audité avant toute modification.

### 5.3 Stockage

Confirmé :

- `requestLegacyExternalStorage="true"`
- `requestRawExternalStorageAccess="true"`
- `MANAGE_EXTERNAL_STORAGE` pour Android 11+
- SAF via `DocumentsContract`, `ACTION_OPEN_DOCUMENT_TREE`, URI persistantes
- helper `KitKatExtSD` pour cartes SD anciennes
- `FileProvider`, `ArchiveFileProvider`, `PluginFileProvider` avec `grantUriPermissions="true"`
- `ZSelectFile` peut ajouter `FLAG_GRANT_READ_URI_PERMISSION`, `FLAG_GRANT_WRITE_URI_PERMISSION` et `FLAG_GRANT_PERSISTABLE_URI_PERMISSION`

L’application est donc conçue pour accéder largement au stockage, avec plusieurs chemins : stockage brut, SAF, root, Shizuku, plugins.

---

## 6. Réseau, publicité, monétisation

### 6.1 Réseau direct

Confirmé :

- pas de `android.permission.INTERNET`
- pas de `ACCESS_NETWORK_STATE`
- pas de `WebView`
- pas de `loadUrl`
- pas de `HttpURLConnection`/OkHttp identifié dans les sources Java
- pas de configuration réseau XML dédiée

URLs présentes uniquement comme liens externes ou ressources :

- `market://details?id=ru.zdevs.zarchiver`
- `https://play.google.com/store/apps/details?id=ru.zdevs.zarchiver`
- `market://search?q=ZArchiver plugin`
- `https://play.google.com/store/apps/search?q=ZArchiver plugin`
- `http://zdevs.ru/za/`
- `http://zdevs.ru/za/errors_desc.html`
- `http://zdevs.ru/za_privacy_policy.txt`
- liens de licences open source : 7-zip, busybox, FreeBSD, GNU, rarlab, estsoft, GitHub, etc.
- `mailto:support@zdevs.ru` pour feedback

Ces liens sont ouverts via `Intent.ACTION_VIEW`, `SENDTO` ou chooser, pas via un client HTTP intégré.

### 6.2 Publicité / billing / licence

Confirmé par recherche DEX/JADX/manifeste :

- pas d’AdMob
- pas de `ca-app-pub`
- pas de Google Play Billing
- pas de `BillingClient`
- pas de SDK licence Amazon/Google
- pas de countdown/timer d’essai
- pas de modèle “unlimited time”

Le seul modèle monétaire visible est **Donate/Pro** :

- `ABT_DONATE`
- `ABT_DONATE_GENERAL`
- `ABT_DONATE_PAY`
- `FREE_LIMIT_HELP = For Donate/Pro version users only`
- message `Buy the Donate/Pro version`
- YooMoney affiché dans les chaînes de donate

### 6.3 Limitations Donate/Pro identifiées

Confirmé dans le code :

1. `FileProvider.openFile` refuse l’écriture sur certains fichiers avec :
   `ZArchiver: Edit file is supported only in Donation/Pro version`
2. `ArchiveFileProvider.openFile` refuse l’édition dans archive avec le même message.
3. `PluginFileProvider.openFile` refuse l’écriture distante avec le même message.
4. `ZTextEditor` affiche `FREE_LIMIT_HELP` lorsque l’identifiant de syntaxe est négatif.

Il n’y a pas de vérification runtime d’achat intégrée dans cet APK. La version gratuite semble être un build fonctionnellement limité, tandis que la version Donate/Pro est probablement un artefact séparé. Toute modification visant à débloquer ces limitations doit être traitée comme une question de droits/licence, pas comme un correctif technique anodin.

---

## 7. Sécurité : constats classés

### 7.1 Confirmé — risques structurels

#### A. Surface stockage très large

`MANAGE_EXTERNAL_STORAGE`, root, Shizuku, SAF, providers et activités exportées donnent à l’application une capacité importante de lecture/écriture/installation. Ce n’est pas une vulnérabilité en soi, mais c’est le domaine de risque principal.

Impact potentiel :

- suppression/écrasement de fichiers utilisateur
- extraction d’archives malveillantes
- installation d’APK tiers
- écriture dans `Android/data`/`Android/obb` via root ou SAF
- élévation via shell root si l’utilisateur accorde su/Shizuku

#### B. Activités exportées acceptant `file`/`content`

`ZArchiver`, `ExtractDlg`, `InstallApksDlg`, `ZImageViewer`, `ZTextEditor`, `ZSelectFile` sont exportés et acceptent des URI `file`/`content` avec MIME larges.

Risque : une application tierce peut tenter d’ouvrir un fichier/archive piégé dans ZArchiver. La sécurité dépend alors des parsers natifs, de la validation des chemins et du consentement utilisateur.

#### C. Installation d’applications

`InstallApksDlg` et `q0/a` utilisent `PackageInstaller`, sessions, splits APK et expansions XAPK. L’installation finale passe par le mécanisme Android, mais l’application prépare des sessions et peut extraire des expansions.

Risque :

- XAPK/APKS non fiable
- `manifest.json` d’expansion contrôlant `install_path`
- chemin d’extraction potentiellement sensible
- root parfois demandé pour les expansions XAPK

#### D. Providers avec `grantUriPermissions`

Les trois providers internes ne sont pas exportés, mais peuvent accorder des URI. `FileProvider.openFile` construit un `File` depuis le chemin de l’URI. `query` utilise parfois `getCanonicalPath`, mais `openFile` ne montre pas la même normalisation systématique.

Risque : si une URI est accordée trop largement ou construite depuis une entrée non fiable, le périmètre d’accès peut être plus large que prévu. À tester dynamiquement avant conclusion.

#### E. Sauvegarde Android activée sans règles explicites

Manifeste :

```text
allowBackup="true"
restoreAnyVersion="true"
```

Aucun `fullBackupContent` ou `dataExtractionRules` visible.

Risque : préférences, chemins favoris, états et éventuellement fragments sensibles peuvent être inclus dans la sauvegarde selon la version Android. Les mots de passe d’archives semblent protégés par AndroidKeyStore dans les URI `DP`, mais les règles de backup doivent être vérifiées.

### 7.2 Confirmé — faiblesses cryptographiques locales

`i/a` protège des fragments `DP` utilisés par `ArchiveFileProvider` :

- API >= 23 : AES/GCM/NoPadding avec AndroidKeyStore, alias `ZA_AP_fragment`
- `setRandomizedEncryptionRequired(false)`
- IV déterministe de 12 octets dérivé d’une chaîne via `i.a.c`
- API 18–22 : RSA/ECB/PKCS1Padding
- API < 18 : AES avec clé dérivée de `SHA-1("ZA_AP_fragment")`, donc constante

`h1/c.a` vérifie que le fragment `DP` n’est pas plus vieux que 3 heures.

Problèmes :

- IV déterministe en GCM : si la même clé et le même IV sont réutilisés pour des messages différents, GCM perd ses garanties de confidentialité/authenticité.
- Le chemin d’archive peut servir de base d’IV ; pour une même archive, l’IV externe peut être répété.
- Le fallback API < 18 utilise une clé constante.

Ce n’est pas une preuve d’exploitation pratique, mais c’est une faiblesse de conception à corriger si vous maintenez ce code.

### 7.3 Confirmé — contournement StrictMode pour URI `file`

`v0/e.g()` appelle par réflexion :

```text
StrictMode.disableDeathOnFileUriExposure
```

Cela permet de partager des URI `file://` sur Android récents malgré la protection de la plateforme. C’est un smell de compatibilité/sécurité. Il faut privilégier `content://` et `FileProvider`/SAF.

### 7.4 Confirmé — absence de 64 bits

Seul `armeabi-v7a` est présent.

Conséquences :

- incompatible avec les appareils 64 bits uniquement
- non conforme aux exigences Google Play modernes pour les nouvelles apps/mises à jour nécessitant 64 bits
- risque de rejet ou de non-installation sur appareils récents

### 7.5 Probable — risques à confirmer dynamiquement

- Zip Slip / traversée de chemin lors d’extraction d’archives malformées.
- Injection de commandes dans certains helpers root si un nom de fichier est mal échappé.
- Abus d’URI accordées par provider.
- Parsing natif 7z/RAR/EGG face à archives corrompues.
- Plugin malveillant ou provider plugin instable.
- XAPK `install_path` sortant du répertoire attendu.
- Fuite d’informations via feedback email : modèle appareil, API, RAM, version.

Ces points sont **probables ou plausibles**, mais non exploités ni confirmés runtime.

---

## 8. Points de modification cartographiés

Aucune modification effectuée. Voici les zones à connaître pour une maintenance légitime.

### 8.1 Durcissement recommandé

| Objectif | Fichiers/classes | Action possible |
|---|---|---|
| Ajouter règles de backup | `AndroidManifest.xml`, XML `dataExtractionRules` | exclure préférences sensibles, chemins, fragments |
| Corriger crypto fragments | `i/a.java`, `h1/c.java`, `ArchiveFileProvider.java` | IV aléatoire stocké avec ciphertext, supprimer fallback clé constante |
| Réduire surface exportée | `AndroidManifest.xml` | vérifier chaque activité exportée, restreindre MIME/schémas si possible |
| Valider chemins providers | `FileProvider`, `ArchiveFileProvider`, `PluginFileProvider` | canonicalisation, allowlist de racines, refus `../` |
| Valider XAPK expansions | `q0/a.java` | contrôler `install_path`, interdire chemins absolus/traversée |
| Auditer commandes root | `a0/c.java`, `o0/*`, `n0/f.java`, `m0/a.java` | quoting systématique, éviter shell si possible |
| Supprimer bypass StrictMode | `v0/e.java` | utiliser uniquement `content://` |
| Ajouter arm64 | build natif | compiler `arm64-v8a`, idéalement aussi `x86_64` pour émulateur |
| Mettre à jour targetSdk | manifeste/build | cible Play actuelle, foreground services, permissions |
| Corriger version feedback | `AboutDlg.java` | aligner `101033`/`101036` |

### 8.2 Zones monétisation / Donate-Pro

| Zone | Fichier | Comportement actuel |
|---|---|---|
| Édition fichier externe | `provider/FileProvider.java` | exception Donation/Pro en écriture |
| Édition dans archive | `provider/ArchiveFileProvider.java` | exception Donation/Pro en écriture |
| Édition plugin | `provider/PluginFileProvider.java` | exception Donation/Pro en écriture |
| Coloration syntaxique limitée | `ZTextEditor.java`, `g0/i` | `FREE_LIMIT_HELP` si identifiant négatif |
| À propos / donate | `activity/AboutDlg.java`, `strings.xml` | liens donate, YooMoney, Play Store |

Ces zones ne doivent pas être modifiées pour contourner une limitation payante sans cadre de droits clair. Si votre équipe est bien l’éditeur, la bonne approche est de modifier le code source officiel et la variante de build, pas de patcher un APK tiers.

### 8.3 Zones fonctionnelles principales

| Fonction | Classes |
|---|---|
| UI principale | `ZArchiver.java`, `ui/FilePanelView.java`, `a.java` |
| Opérations longues | `service/ZArchiverService.java`, `service/c.java` |
| Archives natives | `archiver/NArc.java`, `archiver/C2JBridge.java`, `archiver/content/ContentNative.java` |
| SAF | `io/SAF.java`, `io/KitKatExtSD.java`, `io/ZAIO.java` |
| Root/Shizuku | `o0/a.java`, `o0/e.java`, `o0/f.java`, `t0/b.java`, `rikka/shizuku/ShizukuProvider.java` |
| Plugins | `l0/c.java`, `l0/b.java`, `SettingsDlg$PluginFragment`, `PluginFileProvider` |
| Installation APK | `q0/a.java`, `activity/InstallApksDlg.java`, `activity/InstallApkDlg.java` |
| Texte | `ZTextEditor.java`, `ui/editor/*` |
| Image | `ZImageViewer.java`, `com.davemorrissey.labs.subscaleview` |

---

## 9. Ce qui reste inconnu

- Provenance exacte du fichier uploadé par rapport à un build officiel ou à votre équipe.
- Comportement runtime des parsers natifs face à archives malveillantes.
- Sécurité réelle des accords URI provider sans test dynamique.
- Comportement des plugins cloud/USB, car leurs APK ne sont pas dans ce dépôt.
- Exploitabilité pratique de la réutilisation d’IV GCM.
- Validation complète des chemins root/XAPK/SAF en conditions réelles.
- Conformité Play Store actuelle sans vérification de politique à jour.
- Différences exactes entre ce build gratuit et un build Donate/Pro.

---

## 10. Recommandation de prochaine étape

Si l’objectif est la maintenance légitime de votre propre application :

1. Confirmer que `ru.zdevs.zarchiver` et le certificat `Anton Prozorov` correspondent bien à votre équipe, ou fournir le bon APK/source.
2. Prioriser :
   - ajout `arm64-v8a`
   - targetSdk actuel
   - règles de backup
   - correction IV GCM
   - validation chemins providers/XAPK
   - audit root/shell
3. Ensuite seulement, définir une modification fonctionnelle précise.
4. Tester uniquement dans un environnement isolé GitHub Actions/émulateur, avec fichiers de test publics et journaux, jamais sur téléphone personnel.

Si l’objectif est de débloquer les fonctions Donate/Pro, retirer une limitation payante ou modifier un artefact tiers sans cadre de droits, ce n’est pas pris en charge ici.

---

## 11. Index des preuves

Preuves principales :

```text
analysis/remote/zarchiver-analysis-41286142337/reports/analysis-summary.md
analysis/remote/zarchiver-analysis-41286142337/reports/inventory.json
analysis/remote/zarchiver-analysis-41286142337/reports/coverage.json
analysis/remote/zarchiver-analysis-41286142337/reports/manifest.json
analysis/remote/zarchiver-analysis-41286142337/reports/urls.tsv
analysis/remote/zarchiver-analysis-41286142337/logs/aapt_badging.log
analysis/remote/zarchiver-analysis-41286142337/logs/original_signature.log
analysis/remote/zarchiver-deep-41286469657/reports/deep-summary.json
analysis/remote/zarchiver-deep-41286469657/reports/deep-hits.json
analysis/remote/zarchiver-deep-41286469657/reports/decoded/AndroidManifest.xml
analysis/remote/zarchiver-deep-41286469657/reports/decoded/res/values/strings.xml
analysis/remote/zarchiver-deep-41286469657/reports/jadx-sources/
```

Classes clés :

```text
ru/zdevs/zarchiver/ZApp.java
ru/zdevs/zarchiver/ZArchiver.java
ru/zdevs/zarchiver/service/ZArchiverService.java
ru/zdevs/zarchiver/provider/FileProvider.java
ru/zdevs/zarchiver/provider/ArchiveFileProvider.java
ru/zdevs/zarchiver/provider/PluginFileProvider.java
ru/zdevs/zarchiver/activity/InstallApksDlg.java
ru/zdevs/zarchiver/activity/AboutDlg.java
ru/zdevs/zarchiver/ZTextEditor.java
q0/a.java
o0/a.java
o0/e.java
o0/f.java
i/a.java
h1/c.java
l0/c.java
t0/b.java
v0/e.java
```
