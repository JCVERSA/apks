# HA Tunnel Plus 1.7.1 — rapport d'analyse statique

**Date :** 2026-11-01  
**Entrée :** `downloads/HA-Tunnel-Plus-1.7.1.apk`  
**Taille :** 25 014 133 octets  
**SHA-256 :** `741e283ba3ee4b04b6988d5842d38491a51fa0bddfaf52d9c6bca9e6245ad051`  
**Package :** `com.hatunnel.plus`  
**Version :** `1.7.1` / versionCode `76`  
**minSdk :** 23 ; **targetSdk :** 36 ; **compileSdk :** 36  
**Signataire original :** `CN=Art_Of_Tunnel`, certificat SHA-256 `b3ad016bcd4f267eac311aa37738811b4c959b9360f4edaf79eeb467cded9132`

## 1. Résumé exécutif

HA Tunnel Plus est un client VPN/tunnel SSH/SSL protégé par **DexProtector**. La partie visible du code applicatif (`app.fast.ssh.*`) gère l'interface, les publicités AdMob, l'abonnement Google Play Billing, le compte à rebours, les vouchers et l'import/export de configuration. Le cœur tunnel (`app.fast.ssh.core.*`, service VPN, connexions SSH/SSL) est **référencé mais absent des DEX en clair** : il est très probablement chargé depuis une charge utile chiffrée/protégée (`assets/assets.dat`, `libdexprotector.so`).

Deux mécanismes sont centraux pour la demande :

1. **Publicités** : AdMob (app open, bannière, interstitiels, rewarded). La plupart des chemins pub sont contrôlés par `Subscription.shouldRequestAds()`.
2. **Temps / unlimited time** : compte à rebours piloté par des callbacks du cœur tunnel/serveur, rewarded ads avec vérification serveur, vouchers, et abonnement Google Play. L'état « subscribed » supprime à la fois les pubs et le timer côté UI, et un token d'abonnement est envoyé au tunnel via `sendSubToken()`.

**Conclusion de faisabilité :** les deux demandes (« remove ads » et « unlimited time ») touchent au même système d'abonnement payant. Je ne peux pas produire un patch qui forge ou débloque cet entitlement. Ce rapport décrit le fonctionnement et les preuves, sans fournir de contournement.

## 2. Intégrité et outillage

- APK original vérifié par SHA-256 avant et après copie de travail.
- Signature originale vérifiée : v1/v2/v3 OK.
- `zipalign` 4-byte et 16 KB page check : OK.
- Apktool 3.0.3 : décodage OK, 25 408 fichiers Smali.
- JADX 1.5.6 : 17 939 fichiers Java générés, mais sortie avec erreurs (code 3, 152 erreurs, nombreux marqueurs JADX). La décompilation est partielle, attendu avec DexProtector.
- Aucune exécution de l'APK, aucune requête vers les serveurs de l'app, aucune modification de l'APK.

Preuves principales :

- `analysis/remote/hatunnel-analysis-41281877139/reports/analysis-summary.md`
- `analysis/remote/hatunnel-analysis-41281877139/reports/inventory.json`
- `analysis/remote/hatunnel-analysis-41281877139/logs/original_signature.log`
- `analysis/remote/hatunnel-targeted-41282712215/targeted/`

## 3. Protection DexProtector

**CONFIRMÉ**

- Application manifest : `app.fast.ssh.ProtectedFastSSH`.
- Bibliothèque native : `libdexprotector.so` pour `arm64-v8a`, `armeabi-v7a`, `x86_64`.
- Asset opaque : `assets/assets.dat` (~2,6 Mo, haute entropie).
- Chaînes chiffrées : appels omniprésents à `ProtectedFastSSH.s("…")`.
- Vérification de signature dans `ProtectedFastSSH.b()` : compare le SHA-256 du certificat signataire à `b3ad016bcd4f267eac311aa37738811b4c959b9360f4edaf79eeb467cded9132`.
- `attachBaseContext()` charge `dexprotector` sauf dans un processus auxiliaire spécifique (`:p426ad92431036779116d2441`).
- Les composants manifest sont obfusqués (ex. launcher `.jlvfyyvkjayic`, service VPN `.zaFBgagzvmny`).

**LIKELY**

- Le cœur tunnel (`app.fast.ssh.core.SSHTunnelService`, `VpnConnection`, `SSHTunnelConnection`, etc.) est dans la charge utile DexProtector, pas dans les DEX visibles.
- Toute modification/resignature déclenchera un échec de signature sauf si la protection est neutralisée ; je ne recommande pas et ne fournis pas ce contournement dans le cadre d'un déblocage payant.

## 4. Architecture fonctionnelle visible

### 4.1 UI et tunnel

- `MainActivity` : activité principale, banner pub, mise à jour Play Core, import de config, resource updater.
- `HomeFragment` : sélection serveur/méthode, payload/SNI/proxy, connexion VPN, timer, interstitiels, rewarded ad sync, achat abonnement.
- `SettingsFragment` : DNS, thème, TLS, proxy parent, vibration, tunnel de base.
- `AppsFragment` / `AppsActivity` : sélection des apps autorisées (split tunneling).
- `ImportActivity` / `ExportActivity` : import/export de fichiers de configuration (extension `.hat` probable, chaîne chiffrée). Export utilise `AESEncryption.encrypt()` avec mot de passe et identifiants hachés MD5.
- `VoucherActivity` : redemption de voucher UUID via `VpnConnection.beginRedeemVoucher()`.
- `LogFragment`, `AboutActivity`, `ExceptionActivity` : logs, à propos, gestion d'erreurs.

### 4.2 Natif

- `libhev-socks5-tunnel.so` : moteur tun2socks / SOCKS5. Exporte notamment `hev_socks5_tunnel_init`, `hev_socks5_tunnel_main`, `hev_socks5_tunnel_run`, `hev_socks5_tunnel_stats`, `hev_socks5_tunnel_update_session`.
- `libconscrypt_jni.so` : fournisseur TLS Conscrypt.
- `libdexprotector.so` : protection/chargement.

### 4.3 Ressources et configuration

- `assets/resources/{servers,methods,allowed_apps,customs,whatsnew}.json` sont binaires/chiffrés, pas du JSON clair.
- `DBHelper` stocke les ressources serveurs/méthodes/apps chiffrées via `AESEncryption`.
- `ResourceUpdater` télécharge un JSON de mise à jour depuis une URL chiffrée, puis `MainActivity` déchiffre/met à jour serveurs, méthodes et allowed apps.
- `AESEncryption` : dérivation de clé par digest du mot de passe, AES (mode exact masqué par chaînes chiffrées).
- `XOREncryption` : XOR simple pour certains payloads/paramètres.

## 5. Publicités

**CONFIRMÉ**

- SDK : Google AdMob / Google Mobile Ads.
- AdMob App ID manifest : `ca-app-pub-5640609611628446~7168947344`.
- Permissions pub : `AD_ID`, `ACCESS_ADSERVICES_AD_ID`, `ACCESS_ADSERVICES_ATTRIBUTION`, `ACCESS_ADSERVICES_TOPICS`.
- Initialisation : `FastSSH.onCreate()` → `MobileAds.initialize()` + `AppOpenAdManager`.
- Formats visibles :
  - **App open** : `AppOpenAdManager.fetchAd()` / show au retour foreground.
  - **Bannière** : `MainActivity.initAds()` / `onResume()`, `HomeFragment`, dialogs.
  - **Interstitiels** : `HomeFragment`connected/disconnected/update success.
  - **Rewarded** : `AddTimeDialog`, `RenewAccessDialog`, `RewardedAdSyncController` pour ajouter/renouveler du temps.
- Les ad unit IDs sont des chaînes chiffrées via `ProtectedFastSSH.s()`, donc non lisibles directement en statique.

### Gate publicitaire

`Subscription` :

```java
isActive() = store.getSubscriptionToken() non vide
shouldRequestAds() = !isActive()
shouldShowAddTime() = !isActive()
shouldShowTimer() = !isActive()
```

La plupart des chargements/affichages pub vérifient `shouldRequestAds()`. Un abonnement actif supprime donc les pubs côté client.

## 6. Temps, abonnement et entitlements

**CONFIRMÉ**

- Google Play Billing Client 9.1.0.
- `BillingManager` gère achat, refresh, query purchases, token exchange.
- `PRODUCT_ID` et endpoint d'échange sont chiffrés (`ProtectedFastSSH.s()`).
- `HttpTokenExchange` envoie le purchase token à un backend, reçoit un subscription token + expiration, puis `PrefsSubscriptionStore.save()`.
- `FastSSH` branche `SessionControl.sendSubToken()` vers `VpnStatus.vpnConnectionInstance.sendSubToken()`.
- `HomeFragment.onBillingState(SUBSCRIBED)` masque la bannière et arrête/cache le timer.
- `HomeFragment.onStartCountdown(long millis)` démarre un `CountDownTimer` depuis une valeur fournie par le cœur tunnel/serveur.
- `AddTimeDialog` / `RenewAccessDialog` utilisent des rewarded ads avec `ServerSideVerificationOptions` (userId = device ID, customData = versionCode). Le reward de temps est donc vérifié côté serveur, pas seulement localement.
- `TimerConf` contient `max_hours`, `per_hours`, `cool_min`, textes ; cooldown et top-up sont contrôlés par `LAST_ACCESS_TOPUP_MILLIS` / `LAST_SESSION_MILLIS`.
- `VoucherActivity` redeem un voucher UUID via le tunnel connecté.

**LIKELY**

- La durée de session réelle est appliquée côté serveur/tunnel, pas uniquement par le `CountDownTimer` UI.
- « Unlimited time » correspond à l'abonnement payant ; le token est transmis au backend/tunnel pour validation.

**UNKNOWN**

- Protocole exact entre le client et le serveur de tunnel pour l'expiration (cœur DexProtector non visible).
- Réponses serveur exactes, politique de grâce, révocation, ou comportement offline.

## 7. Mise à jour

- Play Core `AppUpdateManager` : si update disponible et type autorisé, lance `startUpdateFlowForResult(..., 1, ...)` (IMMEDIATE).
- `ResourceUpdater` met à jour les ressources de configuration (serveurs/méthodes/apps), pas l'APK.
- Pas de gate « forced update » APK visible en clair dans les classes analysées ; la mise à jour APK passe par Play Store.

## 8. Réseau et sécurité

- `network_security_config.xml` : cleartext autorisé globalement et pour `127.0.0.1`, trust anchors système. Pas de pinning visible.
- Service VPN déclaré avec `android.permission.BIND_VPN_SERVICE`, `foregroundServiceType="specialUse"`.
- Permissions notables : INTERNET, FOREGROUND_SERVICE, FOREGROUND_SERVICE_SPECIAL_USE, POST_NOTIFICATIONS, WAKE_LOCK, BILLING, AD_ID, stockage legacy.
- Firebase / OneSignal présents (notifications/analytics).
- Conscrypt injecté comme provider TLS.
- `HiddenApiBypass` utilisé sur Android 9+.

## 9. Évaluation par rapport à la demande

| Demande | Analyse | Décision |
|---|---|---|
| Remove ads | Les pubs sont contrôlées par le même état d'abonnement (`Subscription.isActive()`). Supprimer les pubs reviendrait à débloquer un avantage lié à l'abonnement. | Je ne peux pas patcher ce gate payant. |
| Add unlimited time | Le temps illimité est l'entitlement payant ; token d'abonnement + validation serveur probable. | Je ne peux pas forger/débloquer cet entitlement. |
| Comprendre le fonctionnement | Analyse statique complète des parties visibles, limites DexProtector documentées. | Fait. |

## 10. Suites légitimes possibles

- Acheter l'abonnement officiel dans l'app pour obtenir ads-free + unlimited time.
- Utiliser les vouchers officiels si disponibles.
- Utiliser les rewarded ads officielles pour ajouter du temps.
- Importer/exporter des configurations `.hat` légitimes.
- Si vous êtes l'éditeur/développeur ou avez une autorisation explicite du développeur, une analyse dynamique isolée et des modifications peuvent être discutées séparément.

## 11. Limites

- Pas d'exécution dynamique, pas d'émulateur, pas de trafic réseau app.
- DexProtector masque le cœur tunnel et les chaînes ; les conclusions sur le serveur sont marquées LIKELY/UNKNOWN.
- Ce rapport n'est pas un audit de sécurité complet et ne garantit pas l'absence de comportement malveillant.
