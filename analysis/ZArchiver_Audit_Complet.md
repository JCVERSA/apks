# Audit complet — `base.apk` (ZArchiver)

**Date :** 2026-11-01
**Cible :** `base.apk` — `ru.zdevs.zarchiver` 1.0.10 / versionCode `101033`
**SHA-256 :** `aab078d2ea7b80e7199d2bb988772128131848c4df078ea8c55b19df7dfc16fd`
**Branche :** `arena/7234f8d6-apks`
**Type :** audit statique approfondi — sécurité, robustesse, qualité, conformité.
**Aucune exécution, aucune installation, aucune modification de l'APK.**

Complément au rapport `analysis/ZArchiver_Static_Analysis_Report.md`. Ce document-ci ajoute le durcissement natif, les `PendingIntent`, les broadcasts, la base SQL, l'injection shell, la qualité du code et la conformité.

---

## 0. Verdict en une page

| Domaine | Note | Commentaire |
|---|---|---|
| Intégrité de l'archive | **Bon** | ZIP propre, 0 entrée dupliquée, 0 chemin suspect, signature v1+v2 valide |
| Durcissement natif | **Bon** | 9/9 RELRO full + NX + stack canary, 0 TEXTREL |
| Surface réseau | **Excellent** | aucune permission `INTERNET`, aucun WebView, aucun client HTTP |
| Pub / tracking | **Excellent** | aucun SDK pub, analytics, billing ou licence |
| Composants exportés | **À surveiller** | 6 activités exportées sans permission, MIME `*/*`, schéma `file` |
| IPC / broadcasts | **Bon** | broadcasts internes ciblés via `setPackage` |
| `PendingIntent` | **Correct, 1 durcissement possible** | 8/8 explicites : 5 IMMUTABLE, 2 MUTABLE pour PackageInstaller, 1 MUTABLE interne à revoir |
| Injection shell root | **Défaut confirmé** | branche `mv` non échappée dans `p0/b.java` |
| Cryptographie | **Défaut confirmé** | IV GCM déterministe + fallback clé constante API < 18 |
| Sauvegarde | **Défaut confirmé** | `allowBackup=true` sans règle d'exclusion |
| Stockage / privilèges | **Élevé par conception** | root, Shizuku, `MANAGE_EXTERNAL_STORAGE`, install paquets |
| Qualité du code | **Moyen** | 56 logs, 19 réflexions, 25 API dépréciées, 259 catch vides détectés |
| Distribution Play | **Risque élevé** | pas d'`arm64-v8a` ; targetSdk 34 à confronter à la politique en vigueur |
| Traçabilité build | **Défaut mineur** | version `101033` vs `101036` dans `AboutDlg` |

**Conclusion :** application utilitaire saine dans son modèle (hors-ligne, sans pub), correctement durcie au niveau natif, mais porteuse de **défauts confirmés** (shell `mv`, IV GCM, backup) et d'un **bloqueur de distribution confirmé** (absence de 64 bits). Le niveau exact d'exigence targetSdk reste à vérifier auprès de la politique Play applicable. La surface de risque principale reste l'élévation root/Shizuku combinée à des activités exportées acceptant des URI externes.

---

## 1. Méthode, outillage et couverture

Exécuté uniquement sur runner GitHub Actions jetable, outils épinglés par hash :

- `apktool 3.0.3`, `jadx 1.5.6`
- `apksigner`, `zipalign`, `aapt`, `apkanalyzer`
- `readelf`, `file`, `strings` pour l'ELF
- Python stdlib pour ZIP, DEX, XML, résolution de styles et calcul de contraste

Runs :

| Run | Contenu | Résultat |
|---:|---|---|
| `41286142337` | inventaire, manifeste, signature, natif, URLs | succès |
| `41286469657` | 472/472 sources JADX + ressources clés | succès |
| `41288119748` | audit sécurité étendu + audit design | succès |

Couverture réelle :

- 472 fichiers Java, 800 fichiers smali, 800 définitions de classes DEX
- 675 fichiers de ressources sur 83 dossiers
- 9 bibliothèques natives analysées en ELF
- 100 fichiers layout (variantes incluses), 235 styles dont 184 classés « thème » par heuristique, 12 menus
- **Non couvert :** exécution, fuzzing des parsers natifs, désassemblage ARM, comportement des plugins externes, tests d'exploitation

---

## 2. Intégrité de l'archive et signature

Confirmé :

```text
Taille            : 4 864 570 octets
Entrées ZIP       : 569
testzip           : OK (aucune erreur)
Décompressé       : 7 712 773 octets
Compressé         : 4 779 186 octets
Entrées dupliquées: 0
Chemins suspects  : 0 (aucun "..", aucun chemin absolu)
DEX               : classes.dex (unique)
ABI               : armeabi-v7a (unique)
.kotlin_module    : absent → application Java pure
mapping ProGuard  : absent du paquet
```

Signature :

- v1 (JAR) : oui — `META-INF/CERT.SF`, `CERT.RSA`
- v2 : oui
- v3 / v3.1 / v3.2 / v4 : non
- SourceStamp : non
- RSA 2048 bits
- Certificat SHA-256 : `7727f2807764c3499b9a2c3ff804505dd7468b117feb005804efc78659544db2`
- DN : `CN=Anton Prozorov, OU=Unknown, O=Ant-ON, L=Ekb, ST=SR, C=RU`
- `zipalign -c 4` : OK ; `zipalign -c -P 16 4` : OK

Points d'attention :

1. **Pas de v3** → aucun mécanisme de rotation de clé n'est présent dans cet artefact. Une migration future nécessitera une stratégie de signature explicite ; l'absence actuelle ne prouve pas qu'elle soit impossible.
2. **Avertissement apksigner** : `META-INF/com/android/build/gradle/app-metadata.properties` hors signature v1. La v2 protège l'APK sur Android 7+ ; sur API 14–23, seule la v1 s'applique. Impact limité aux métadonnées, mais à nettoyer.
3. **`extractNativeLibs=true`** et libs compressées → installation plus lourde, pas d'exécution directe depuis l'APK.
4. **Identité** : le certificat n'est pas `JCVERSA`. À confirmer si ce build est bien celui de votre équipe.

---

## 3. Durcissement des bibliothèques natives

Résultat `readelf` sur les 9 `.so` :

| Bibliothèque | RELRO | NX | Canary | TEXTREL | Imports `*_chk` | Appels risqués |
|---|---|---|---|---|---|---|
| `libcontrol.so` | full | oui | oui | non | 0 | `strcpy`, `strcat`, `memcpy` |
| `libcoreutils.so` | full | oui | oui | non | 0 | `sprintf`, `strcpy`, `memcpy` |
| `libhandler.so` | full | oui | oui | non | 0 | `strcpy`, `strcat`, `memcpy` |
| `libiconv.so` | full | oui | oui | non | 0 | `memcpy` |
| `libmime.so` | full | oui | oui | non | 0 | `memcpy` |
| `libp7zbin.so` | full | oui | oui | non | 0 | `sprintf`, `memcpy` |
| `libp7zip.so` | full | oui | oui | non | 0 | `sprintf`, `memcpy` |
| `libunegg.so` | full | oui | oui | non | 0 | `vsprintf`, `sprintf`, `strcpy`, `memcpy` |
| `libunrar.so` | full | oui | oui | non | 0 | `sprintf`, `memcpy` |

**Positif :** 9/9 avec RELRO complet (`GNU_RELRO` + `BIND_NOW`), pile non exécutable, `__stack_chk_fail` présent, aucun `TEXTREL`, aucun `RPATH`/`RUNPATH` exotique. C'est un bon niveau de durcissement de compilation.

**Négatif :**

- **Aucun import `*_chk` détecté**. C'est un indice défavorable, mais pas une preuve des flags de compilation : les options `_FORTIFY_SOURCE` restent INCONNUES. Aucun appel fortifié visible ne protège les `strcpy`/`strcat`/`sprintf`/`vsprintf` recensés.
- `libunegg.so` utilise `vsprintf` et `strcpy` : combination classiquement à risque sur données d'archive non fiables.
- Les moteurs d'archive (`libp7zip`, `libunrar`, `libunegg`) traitent des fichiers potentiellement hostiles. **Sans fuzzing, on ne peut pas conclure à l'absence de corruption mémoire.**

Recommandation : recompiler avec `-D_FORTIFY_SOURCE=2 -fstack-protector-strong`, remplacer `sprintf`→`snprintf`, `strcpy`→`strlcpy`, et fuzzer les moteurs avec un corpus d'archives malformées.

---

## 4. Manifeste : composants et surface d'attaque

16 composants. **7 exportés** :

| Composant | Permission | Filtres | Risque |
|---|---|---|---|
| `ZArchiver` | aucune | VIEW/SEND, `file`+`content`, `*/*`, priorité `2147483647` | ouverture de fichier/archive arbitraire |
| `ZSelectFile` | aucune | `GET_CONTENT`, `OPEN_DOCUMENT`, `*/*` | sélection détournée |
| `activity.ExtractDlg` | aucune | VIEW `file`+`content`, BROWSABLE | extraction déclenchée par un tiers |
| `activity.InstallApksDlg` | aucune | VIEW `file`+`content`, `*/*`, BROWSABLE | installation APKS/XAPK déclenchée par un tiers |
| `ZImageViewer` | aucune | VIEW `image/*` | décodage image hostile |
| `ZTextEditor` | aucune | VIEW `text/*`, JSON, JS | ouverture texte hostile |
| `rikka.shizuku.ShizukuProvider` | `INTERACT_ACROSS_USERS_FULL` | — | protégé par permission système |

Non exportés : `ZArchiverService`, `ZArchiverClearTemp`, `SettingsDlg`, `AboutDlg`, `OpenAsDlg`, `InstallApkDlg`, et les 3 providers de fichiers.

Analyse :

- Le `ShizukuProvider` exporté est **normal et protégé** par une permission signature/système. Ce n'est pas une faille.
- Les 6 activités exportées sans permission sont **attendues** pour un gestionnaire de fichiers devant s'intégrer au système. Mais elles acceptent `*/*`, `file://` et `content://` depuis n'importe quelle app.
- Conséquence : **toute app installée peut faire ouvrir un fichier piégé** dans ZArchiver. La sécurité repose alors entièrement sur les parsers natifs et la validation de chemins.
- `android:priority="2147483647"` sur les filtres d'archives force ZArchiver en tête des choix d'ouverture. Fonctionnel, mais agressif.
- `debuggable` absent → non debuggable. **Bon.**
- `allowBackup=true` + `restoreAnyVersion=true` sans `fullBackupContent` ni `dataExtractionRules` → **défaut**, voir §7.

---

## 5. IPC, broadcasts et `PendingIntent`

### 5.1 Broadcasts internes — correct

`ZArchiverService.h(int, int)` construit :

```java
Intent intent = new Intent("ZArchiver.iMES");
intent.putExtra("iTaskID", i2);
intent.putExtra("iTaskType", ...);
intent.putExtra("iAction", i3);
intent.setPackage("ru.zdevs.zarchiver");
```

Le `setPackage` restreint la diffusion à l'application. **Pas de fuite d'état des tâches vers des apps tierces.** Bon point.

Les récepteurs utilisent `registerReceiver(..., 4)`. `ShizukuProvider` le garde par API ≥ 33 ; `h1/h.d()` le fait dès API ≥ 26. La constante `RECEIVER_NOT_EXPORTED` étant documentée à partir d'API 33, le comportement effectif sur API 26–32 reste **À VÉRIFIER**. Le broadcast interne émis est, lui, bien ciblé par `setPackage`.

### 5.2 `PendingIntent` — 8 sites, tous explicitement typés

Décodage des flags entiers :

| Site | Type | Flags | Verdict |
|---|---|---|---|
| `q0/a.java:318` | Activity | `UPDATE_CURRENT \| MUTABLE` | justifié : résultat `PackageInstaller` |
| `q0/a.java:465` | Activity | `UPDATE_CURRENT \| MUTABLE` | justifié : idem |
| `ZApp.java:186` | Service | `CANCEL_CURRENT \| MUTABLE` | durcissement possible : alarme interne explicite, aucun besoin de remplissage visible |
| `service/b.java:76` | Activity | `UPDATE_CURRENT \| IMMUTABLE` | bon |
| `service/b.java:95` | Activity | `UPDATE_CURRENT \| IMMUTABLE` | bon |
| `service/b.java:132` | Service | `ONE_SHOT \| IMMUTABLE` | bon |
| `service/b.java:133` | Activity | `UPDATE_CURRENT \| IMMUTABLE` | bon |
| `service/b.java:138` | Activity | `UPDATE_CURRENT \| IMMUTABLE` | bon |

**Aucun `PendingIntent` sans flag de mutabilité explicite** dans les 8 sites trouvés. Les 2 MUTABLE de `PackageInstaller` sont cohérents avec un résultat rempli par le système. Celui de l'alarme `ZArchiverClearTemp` pourrait probablement être IMMUTABLE ; aucun exploit n'est démontré.

### 5.3 Plugins

`l0/c` utilise `acquireUnstableContentProviderClient` — bon choix : un plugin qui meurt ne tue pas l'hôte. Mais :

- Les permissions `PLUGIN.USB` et `PLUGIN.CLOUD` sont **demandées sans être déclarées** dans cet APK.
- La découverte passe par `queryIntentActivities("ru.zdevs.zarchiver.plugin.PLUGIN_APPLICATION")`.
- Un plugin tiers peut donc exposer un provider que l'hôte interroge. **Le modèle de confiance dépend entièrement du plugin**, non auditable ici.

---

## 6. Injection shell root — défaut confirmé

### 6.1 Le défaut

`p0/b.java`, méthode `c(...)`, branche déplacement :

```java
if (z2) {
    string = "mv " + (Build.VERSION.SDK_INT < 21 ? "" : "-f ") + "'" + str + "' '" + str2 + "'";
}
```

Les chemins `str` et `str2` sont insérés **sans échappement** des quotes simples.

Comparaison avec les autres branches du même fichier, qui elles échappent correctement :

```java
sb.append(str.replace("'", "'\\''"));
...
string = "cp -Rf '" + str.replace("'", "'\\''") + "' '" + str2.replace("'", "'\\''") + "'";
```

Et ailleurs dans l'app, l'échappement est aussi présent :

- `n0/f.java` : `cat '...replace("'", "'\\''")...'`
- `a0/m0.java` : `touch '...replace(...)...'`
- `a0/w0.java` : `chmod ... '...replace(...)...'`

**Conclusion :** il s'agit d'une **omission d'échappement isolée à la branche `mv`**, pas d'un choix global. C'est le défaut de code le plus concret trouvé dans cet audit.

### 6.2 Impact

- Contexte : branche de secours quand `libcoreutils` est indisponible, envoyée à un shell `o0.a` qui peut être root (`su`) ou Shizuku selon le mode choisi.
- Un nom de fichier contenant `'` peut rompre le quoting et injecter des commandes **avec les privilèges du shell root**.
- Appelants identifiés : `a0/s0.java:97`, `r0/a.java:39` et `:81`, `s0/c.java:255`.
- Vecteur plausible : archive extraite contenant un fichier au nom forgé, puis déplacée par l'utilisateur ; ou fichier créé par une autre app sur le stockage partagé.

**Statut : défaut de code CONFIRMÉ. Exploitabilité runtime NON TESTÉE.** Je n'ai pas construit de PoC et n'ai pas exécuté l'application.

### 6.3 Autre point mineur

`a0/c.java:1393` :

```java
bVar.b("cp " + string + " /data/data/ru.zdevs.zarchiver/bin/p7zbin; chmod 755 '...'");
```

`string` n'est pas quoté. Ici le chemin vient de l'installation de l'app (`applicationInfo.nativeLibraryDir`), pas d'une entrée utilisateur — risque faible, mais à corriger par cohérence.

### 6.4 Correctif recommandé

```java
// Appliquer le même échappement que les branches cp/cat
String q = "'" + str.replace("'", "'\\''") + "'";
String q2 = "'" + str2.replace("'", "'\\''") + "'";
string = "mv " + (Build.VERSION.SDK_INT < 21 ? "" : "-f ") + q + " " + q2;
```

Idéalement : helper unique `shellQuote(String)` utilisé partout, et suppression du passage par shell au profit d'appels directs quand c'est possible.

---

## 7. Cryptographie et données sensibles

### 7.1 Protection des fragments d'URI d'archive (`i/a`, `h1/c`)

`ArchiveFileProvider` intègre un mot de passe chiffré dans le fragment d'URI, préfixé `DP`.

| API | Mécanisme | Évaluation |
|---|---|---|
| ≥ 23 | AES/GCM, clé AndroidKeyStore `ZA_AP_fragment` | bonne base, mais IV déterministe |
| 18–22 | RSA/ECB/PKCS1Padding | acceptable pour l'époque, PKCS#1 v1.5 aujourd'hui déconseillé |
| < 18 | `Cipher.getInstance("AES")`, clé = `SHA-1("ZA_AP_fragment")[0:16]` | **clé constante dérivable** ; mode/padding laissés au fournisseur |

**Défaut 1 — IV déterministe.** `KeyGenParameterSpec` utilise `setRandomizedEncryptionRequired(false)` et l'IV est dérivé du chemin :

```java
public static byte[] c(String str) {
    byte[] bArr = new byte[12];
    String upperCase = str.replace("/", "").replace(".", "").toUpperCase();
    ...
    bArr[i2] = (byte) upperCase.charAt((length - (i2 % length)) - 1);
}
```

Le montage est double : le mot de passe est chiffré avec un IV dérivé de l'horodatage à la minute, puis l'ensemble est chiffré avec un IV dérivé du chemin d'archive. Le même chemin réutilise donc l'IV externe à travers les minutes ; la même minute réutilise l'IV interne entre archives. En GCM, réutiliser (clé, IV) sur des messages différents peut divulguer leur XOR et affaiblir l'authentification. **Dérivation déterministe confirmée ; scénario d'exploitation non testé.**

**Défaut 2 — fallback API < 18 à clé constante.** `minSdk=14`, donc cette branche est atteignable. Toute valeur chiffrée sur API 14–17 est déchiffrable par quiconque connaît l'algorithme.

**Point positif :** `h1/c.a` applique une fenêtre de validité de 3 heures, ce qui limite la rejouabilité d'un fragment capturé.

Correctif : IV aléatoire 12 octets généré par `SecureRandom`, stocké en tête du ciphertext ; supprimer la branche < 18 ou relever `minSdk` à 23.

### 7.2 MD5

`g0/o.java:408` utilise `MessageDigest.getInstance("MD5")`. Contexte : empreinte de fichier affichée à l'utilisateur, pas une signature de sécurité. **Acceptable**, mais à étiqueter clairement comme non cryptographique dans l'UI.

### 7.3 Base SQL

`u0/a.java` — `za.db`, version 3, table `FA` (associations extension → app).

- Création via `execSQL` avec chaîne **constante** → pas d'injection.
- Écriture via `insert("FA", null, contentValues)` → **API paramétrée, pas d'injection**.
- Aucune `rawQuery` avec concaténation trouvée.

**RAS.**

### 7.4 Sauvegarde

`allowBackup=true`, `restoreAnyVersion=true`, aucune règle `fullBackupContent` / `dataExtractionRules`.

Risque : les `SharedPreferences` contiennent chemins favoris, historique, options root, langue, thème. Selon la version Android et le transport de sauvegarde, ces données peuvent quitter l'appareil. Les mots de passe d'archives sont dans des fragments d'URI transitoires, mais les clés AndroidKeyStore ne sont pas sauvegardées — ce qui peut rendre des données restaurées illisibles.

Correctif : `dataExtractionRules` excluant `shared_prefs` sensibles, ou `allowBackup=false`.

### 7.5 Presse-papiers

17 occurrences. `v0/a.java` fait `ClipData.newPlainText(...)`. Sur Android < 13, le presse-papiers est lisible par toute app au premier plan. Si un mot de passe d'archive peut être copié, c'est une fuite. **À vérifier dans le flux de saisie de mot de passe** ; non confirmé ici.

### 7.5 Secrets

Scan heuristique : **1 seul candidat**, et c'est un faux positif (`getPrivateKey()` sur une entrée KeyStore dans `i/a.java:121`). **Aucune clé API, aucun token, aucun secret embarqué trouvé.** Cohérent avec une app hors-ligne.

---

## 8. Qualité du code

Comptages sur 472 fichiers Java :

| Motif | Occurrences | Évaluation |
|---|---:|---|
| Logs / `printStackTrace` | 56 | à réduire en release |
| Réflexion / API cachées | 19 | risque de cassure par version Android |
| API dépréciées | 25 | `AsyncTask`, `PreferenceActivity`, `getExternalStorageDirectory` |
| IPC externe | 26 | normal pour plugins/Shizuku |
| Gestion mots de passe | 81 | surface à auditer |
| SQL | 12 | paramétré, RAS |
| Presse-papiers | 17 | à vérifier |
| Crypto faible | 8 | voir §7 |
| URLs `http://` | 6 | 4 = namespaces XML (inoffensif), 2 = liens zdevs.ru |
| Bypass StrictMode | 3 | voir ci-dessous |
| Fichiers temporaires | 2 | `getExternalCacheDirs` |
| Monde-accessible | **0** | **bon** |
| WebView | **0** | **bon** |
| `TODO`/`FIXME` | **0** | propre |

### 8.1 Réflexion sur API cachées — risque de compatibilité

Sites notables :

- `v0/b.java` : `android.os.SystemProperties`, `android.os.ServiceManager`, `android.view.IWindowManager$Stub`
- `x0/d.java` : `android.os.storage.DiskInfo`, `android.os.storage.StorageVolume`
- `q0/a.java` : `android.content.res.XmlBlock.newParser`
- `z0/e.java` : `ViewConfiguration.sHasPermanentMenuKey`, `Menu.setOptionalIconsVisible`
- `a0/c.java` : transaction binder directe `IActivityManager` code `1599296841`

Ces accès sont sur la liste grise/noire Android. Ils peuvent être bloqués ou changer à chaque version majeure. **Fragilité structurelle**, pas une faille.

### 8.2 Bypass StrictMode

`v0/e.java:286` :

```java
a0.c.w(StrictMode.class, "disableDeathOnFileUriExposure", new Class[0]);
```

Utilisé pour partager des `file://` sur Android ≥ 24. Fonctionne, mais contourne une protection de la plateforme et repose sur une API cachée. À remplacer par `content://` systématique.

### 8.3 Gestion d'erreurs

Le motif `catch (Exception unused) {}` est omniprésent (des centaines d'occurrences dans les sources). Conséquence : **échecs silencieux**. Sur des opérations fichier, cela peut masquer une perte de données partielle. Recommandation : journaliser et remonter à l'UI les erreurs d'opération.

### 8.4 Obfuscation

60 packages de type `a0`, `g0`, `t0`… couvrant 402 des 472 fichiers. Obfuscation ProGuard/R8 agressive. Les noms publics (`ru.zdevs.zarchiver.*`) sont conservés. Cela complique la maintenance mais n'est pas un défaut de sécurité.

### 8.5 Dépendances tierces identifiées

- `com.davemorrissey.labs.subscaleview` — zoom d'images
- `com.sothree.slidinguppanel` — panneau coulissant (**bibliothèque abandonnée depuis ~2017**)
- `android.support.constraint` / `android.support.annotation` — **ancienne support library, pas AndroidX**
- `rikka.shizuku` + `moe.shizuku.api` — IPC privilégié
- ToastCompat, apk-parser, r2d2 (mentionnés dans les licences)

**Dette technique notable :** absence d'AndroidX, `AsyncTask`, `PreferenceActivity`, panneau coulissant non maintenu.

### 8.6 Incohérence de version

- `aapt` / manifeste : `versionCode=101033`, `versionName=1.0.10`
- `AboutDlg.java:46` : fallback `101036`
- `AboutDlg.java:134` : `Build: GP 101036`
- `t0/b.java` : migrations conditionnées par `i6 < 101036`

Le code de migration attend et enregistre `101036` alors que le paquet annonce `101033`. Les migrations ne se réexécutent pas nécessairement à chaque lancement : `iAppVersion` est persisté à `101036`. Le défaut est une **incohérence de traçabilité et de seuil de migration**, à corriger.

---

## 9. Conformité et distribution

| Exigence | État | Bloquant ? |
|---|---|---|
| ABI 64 bits (`arm64-v8a`) | **absent** | **oui** — Play exige le 64 bits ; incompatible appareils 64-bit-only |
| targetSdk récent | 34 (Android 14) | **À VÉRIFIER** selon la politique Play en vigueur et le canal de distribution |
| Alignement 16 Ko | `zipalign -P 16` OK | non |
| `MANAGE_EXTERNAL_STORAGE` | déclaré | nécessite déclaration justifiée auprès de Play |
| `REQUEST_INSTALL_PACKAGES` | déclaré | nécessite justification Play |
| Politique de confidentialité | lien `http://zdevs.ru/za_privacy_policy.txt` | **HTTP, pas HTTPS** |
| Data safety | non évaluable statiquement | — |
| Signature v3 | absent | aucune rotation active dans cet artefact |

---

## 10. Registre des findings

Sévérité = impact potentiel × plausibilité, en contexte statique.

| # | Finding | Sévérité | Statut | Localisation |
|---:|---|---|---|---|
| 1 | Branche `mv` sans échappement shell → injection root potentielle | **Élevée** | code CONFIRMÉ, exploitation NON TESTÉE | `p0/b.java:19` |
| 2 | IV GCM déterministe dérivé du chemin | **Élevée** | CONFIRMÉ | `i/a.java:c()`, `setRandomizedEncryptionRequired(false)` |
| 3 | Fallback AES clé constante sur API 14–17 | **Élevée** sur ces API | CONFIRMÉ | `i/a.java:111,177` |
| 4 | Absence d'`arm64-v8a` | **Élevée** (distribution) | CONFIRMÉ | `lib/armeabi-v7a` seul |
| 5 | `allowBackup=true` sans règle d'exclusion | Moyenne | CONFIRMÉ | manifeste |
| 6 | 6 activités exportées sans permission, `*/*` + `file://` | Moyenne | CONFIRMÉ | manifeste |
| 7 | Aucun import fortifié `*_chk` visible dans les 9 libs | Moyenne | indice CONFIRMÉ ; flags de build INCONNUS | `readelf` |
| 8 | `vsprintf`/`strcpy` dans `libunegg` sur données non fiables | Moyenne | CONFIRMÉ (statique) | `libunegg.so` |
| 9 | Bypass StrictMode `file://` | Moyenne | CONFIRMÉ | `v0/e.java:286` |
| 10 | Réflexion API cachées (19 sites) | Moyenne (compatibilité) | CONFIRMÉ | multiple |
| 11 | Permissions plugin demandées non déclarées | Moyenne | CONFIRMÉ | manifeste |
| 12 | Incohérence versionCode 101033 / 101036 | Faible | CONFIRMÉ | `AboutDlg`, `t0/b` |
| 13 | Politique de confidentialité en HTTP | Faible | CONFIRMÉ | `strings.xml:65` |
| 14 | Échecs silencieux généralisés | Faible | CONFIRMÉ | multiple |
| 15 | Support library au lieu d'AndroidX, libs abandonnées | Faible (dette) | CONFIRMÉ | `com.sothree.*`, `android.support.*` |
| 16 | Presse-papiers potentiellement utilisé pour mots de passe | Faible | **À VÉRIFIER** | `v0/a.java` |
| 17 | Zip Slip à l'extraction | ? | **INCONNU** — fuzzing requis | moteurs natifs |
| 18 | Traversée de chemin XAPK `install_path` | ? | **INCONNU** — test requis | `q0/a.java:589+` |
| 19 | Abus d'URI accordées par provider | ? | **INCONNU** — test requis | 3 providers |
| 20 | Provenance du build vs équipe | ? | **INCONNU** | certificat |

---

## 11. Plan de remédiation priorisé

**Priorité 1 — sécurité du code**

1. Échapper les chemins dans la branche `mv` de `p0/b.java` ; introduire un helper `shellQuote` unique et l'appliquer à tous les sites shell.
2. IV aléatoire par message pour AES-GCM, stocké avec le ciphertext ; supprimer `setRandomizedEncryptionRequired(false)`.
3. Supprimer la branche crypto API < 18, ou relever `minSdk` à 23.

**Priorité 2 — distribution**

4. Compiler et livrer `arm64-v8a` (et `x86_64` pour l'émulateur).
5. Relever `targetSdk` et traiter les conséquences (foreground service, edge-to-edge, permissions).
6. Activer la signature v3 pour permettre la rotation de clé.

**Priorité 3 — durcissement**

7. `dataExtractionRules` avec exclusions explicites, ou `allowBackup=false`.
8. Recompiler les libs avec `_FORTIFY_SOURCE=2` ; remplacer les fonctions non bornées.
9. Valider et canonicaliser tous les chemins de providers et le `install_path` XAPK.
10. Supprimer le bypass StrictMode ; `content://` partout.
11. Déclarer les permissions `PLUGIN.USB` / `PLUGIN.CLOUD` avec `protectionLevel=signature`.

**Priorité 4 — qualité**

12. Corriger l'incohérence `101033` / `101036`.
13. Passer la politique de confidentialité en HTTPS.
14. Réduire les logs en release ; traiter les 259 catch vides détectés par une remontée d'erreur contextualisée.
15. Migrer vers AndroidX ; remplacer `slidinguppanel` et `AsyncTask`.
16. Fuzzer les moteurs 7z/RAR/EGG avec un corpus malformé.

---

## 12. Limites de cet audit

- **Aucune exécution** de l'APK, aucun test sur appareil, aucun PoC d'exploitation.
- **Pas de désassemblage ARM** : les conclusions natives viennent des métadonnées ELF, des symboles et des chaînes, pas de l'analyse du code machine.
- **Pas de fuzzing** : l'absence de finding sur les parsers ne signifie pas leur sûreté.
- **Plugins non analysés** : leurs APK ne sont pas dans le dépôt.
- **Rendu visuel non testé** : voir le rapport design séparé.
- Les findings marqués INCONNU exigent un environnement isolé (émulateur GitHub Actions) et votre accord explicite avant tout test dynamique.

---

## 13. Preuves

```text
analysis/remote/zarchiver-audit-41288119748/security/audit-summary.json
analysis/remote/zarchiver-audit-41288119748/security/audit-archive.json
analysis/remote/zarchiver-audit-41288119748/security/audit-native-hardening.json
analysis/remote/zarchiver-audit-41288119748/security/audit-manifest.json
analysis/remote/zarchiver-audit-41288119748/security/audit-code-hits.json
analysis/remote/zarchiver-audit-41288119748/security/audit-pending-intents.json
analysis/remote/zarchiver-audit-41288119748/security/audit-secrets.json
analysis/remote/zarchiver-audit-41288119748/security/audit-packages.json
analysis/remote/zarchiver-deep-41286469657/reports/jadx-sources/
analysis/remote/zarchiver-analysis-41286142337/logs/original_signature.log
analysis/audit-local/pending-intents-decoded.json
```

Rapport connexe : **`analysis/ZArchiver_Audit_Design_Mode.md`** — audit design, thèmes et modes d'affichage.
