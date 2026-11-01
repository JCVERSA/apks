# Audit design & modes d’affichage — `base.apk` (ZArchiver)

**Date :** 2026-11-01
**Cible :** `base.apk` — `ru.zdevs.zarchiver` 1.0.10 / versionCode `101033`
**SHA-256 :** `aab078d2ea7b80e7199d2bb988772128131848c4df078ea8c55b19df7dfc16fd`
**Branche :** `arena/7234f8d6-apks`
**Type :** audit statique UI/UX, thèmes, modes, accessibilité, ressources.
**Aucune exécution, aucune capture d’écran runtime, aucune modification de l’APK.**

Complément de `analysis/ZArchiver_Audit_Complet.md`. Les deux rapports partagent les mêmes preuves GitHub Actions.

---

## 0. Verdict en une page

L’application possède une **base de thèmes riche et réelle** : sombre, clair, clair/sombre, AMOLED, automatique jour/nuit, E-Ink, couleurs d’accent et Material You. Mais dans ce build, **la matrice effectivement accessible est beaucoup plus réduite que la matrice annoncée par les ressources et les libellés**.

| Domaine | Verdict | Détail |
|---|---|---|
| Thème sombre | **Fonctionnel par conception** | thème par défaut, 21 entrées sombres (défaut, dynamique, 19 accents fixes) |
| Thèmes clair / clair+sombre / AMOLED / auto | **Présents mais verrouillés** | styles réels, sélecteur désactivé, code de normalisation vers sombre/E-Ink |
| E-Ink | **Partiel / incohérent** | comportement E-Ink accessible, mais thème blanc complet non sélectionné par le résolveur identifié |
| Material You | **Présent, sombre uniquement** | option `Dynamic color` conditionné à API ≥ 31, 35 refs `system_*` |
| Accent picker | **Présent avec défaut mineur** | 22 noms, 21 styles ; « Red » retombe sur sombre |
| Contraste thèmes fixes | **Bon sur la liste de fichiers** | tous les ratios mesurés passent AA texte normal |
| Contraste Material You | **INCONNU** | dépend de la palette système / fond d’écran |
| Accessibilité | **À corriger** | 1 défaut de libellé confirmé, 6 candidats de cible tactile, unités de texte incohérentes |
| RTL | **Risque réel** | 333 attributs left/right dans 73 fichiers malgré `supportsRtl=true` |
| Insets / edge-to-edge | **Legacy partiel** | `WindowInsets` anciens présents, pas d’API edge-to-edge moderne |
| Retour geste | **Legacy** | gestion touche Back présente, pas de `OnBackInvokedCallback` |
| Densités / icônes | **Correct avec réserve** | 191 vecteurs, 4 icônes adaptatives, 3 monochromes |
| Internationalisation | **Inégal** | 33 locales, couverture 69,2 % → 92,4 %, français 83,6 % |
| Architecture UI | **Legacy** | `android.preference`, ActionBar, support library, panneau coulissant, pas AndroidX/Material Components |

**Conclusion design :** l’application est utilitaire, dense et personnalisable, mais elle présente une **dette de cohérence produit** : options affichées mais verrouillées, E-Ink partiellement câblé, accent manquant, et plusieurs risques d’accessibilité/RTL. La priorité n’est pas de « refaire le design », mais de **rendre la matrice de modes cohérente, testable et accessible**.

---

## 1. Méthode et corrections apportées aux heuristiques

Preuves principales : run GitHub Actions **41288119748**, complété par les sources JADX du run **41286469657**.

Les scripts d’audit produisaient des heuristiques brutes. Elles ont été **revues manuellement et corrigées** avant rédaction :

| Sujet | Brut script | Valeur retenue | Raison |
|---|---:|---:|---|
| Accessibilité | 43 | **7 candidats non nuls**, dont **1 défaut de libellé confirmé** | 36 faux positifs `0dp` = idiom `layout_weight` ; les cibles petites peuvent être portées par la ligne parente |
| Unités | 89 | **3 occurrences px non nulles** | 86 faux positifs `0px` = `layout_weight` ; les 3 restants sont des séparateurs 1px |
| RTL | 333 | **333 attributs / 73 fichiers** | risque statique, pas un bug visuel prouvé |
| Contraste thèmes | `unknown` | **ratios calculés** | résolution des attributs personnalisés du renderer, pas `android:textColorPrimary` hérité d’un thème OEM |
| Material You | ratio fixe possible | **INCONNU** | `system_accent*` / `system_neutral*` dépendent de l’appareil |
| Edge-to-edge | 0 fichier | **9 fichiers avec insets legacy** | le regex initial ne cherchait que les API modernes |
| Back geste | 0 fichier | **gestion Back legacy présente** | `dispatchKeyEvent` / `onKeyUp` testent `keyCode == 4` |
| `PendingIntent` | flags mal décodés | **3 MUTABLE / 5 IMMUTABLE** | décodage binaire, pas recherche de sous-chaîne décimale |

Les JSON bruts du run sont conservés comme historique. Les valeurs corrigées sont dans `analysis/audit-local/corrections.json` et utilisées dans les rapports. Les scripts ont été corrigés pour les futurs runs.

**Périmètre du contraste :** liste de fichiers, fond par défaut, texte principal / secondaire / message. Hors sélection, fond personnalisé, toolbar, états désactivés, dialogs OEM et rendu réel.

---

## 2. Inventaire des ressources

Confirmé :

```text
Dossiers de ressources : 83
Fichiers de ressources : 675
Fichiers layout        : 100 (variantes incluses, pas 100 écrans uniques)
Menus                  : 12
Styles                 : 235
Styles classés thème   : 184 (heuristique de nom, pas 184 modes utilisateur)
Couleurs nommées       : 24
Dimens                 : 31
Attributs personnalisés: 117
Vecteurs               : 191
Rasters                : 205
Nine-patch             : 0
Icônes adaptatives     : 4
Icônes monochromes     : 3
Chaînes par défaut     : 422
Locales traduites      : 33
```

Dossiers de qualifiers notables :

- `values-night`, `values-night-v31`
- `values-v17`, `values-v21`, `values-v23`, `values-v29`, `values-v31`
- `layout-v16`, `layout-v17`, `layout-v21`, `layout-v22`
- `layout-sw600dp`, `layout-sw720dp`
- `values-land`, `values-h720dp`, `values-sw500dp-land`, `values-sw600dp`
- `drawable-mdpi/hdpi/xhdpi/xxhdpi/xxxhdpi/nodpi`
- `mipmap-mdpi/hdpi/xhdpi/xxhdpi/xxxhdpi/anydpi-v26`
- `xml-v33/locales_config.xml`

**Lecture :** l’application a été adaptée progressivement par qualifiers d’API et de taille, plutôt que par un design system moderne unifié.

---

## 3. Architecture UI observée

Composants et bibliothèques :

- `Activity`, `ActionBar`, `AlertDialog`, `PopupMenu` du framework.
- `PreferenceActivity` / `PreferenceFragment` / `DialogPreference` legacy (`android.preference`).
- `ListView`, `AbsListView`, `ScrollView`, `TableLayout`, `LinearLayout`, `RelativeLayout`.
- `android.support.constraint.ConstraintLayout` — **ancienne support library, pas AndroidX**.
- `com.sothree.slidinguppanel.SlidingUpPanelLayout` — panneau coulissant custom.
- FAB et `FloatingActionMenu` personnalisés.
- `SubsamplingScaleImageView` pour les images.
- Shizuku pour l’IPC privilégié.
- **Aucun Material Components, aucun AndroidX, aucun Compose** détecté.

Conséquences :

1. Le rendu dépend fortement des thèmes OEM `Theme.DeviceDefault` et des qualifiers d’API.
2. Les dialogs, menus et préférences n’ont pas l’uniformité Material 3.
3. Les couleurs d’accent sont appliquées via attributs personnalisés (`colorPrimary`, `defaultTextColorFileList`, etc.), pas via un thème Material Components.
4. La maintenance est fragile : chaque nouveau mode doit être câblé à la fois dans les styles, les préférences, le résolveur `t0/b.c()` et les rendus custom.

**Faux positif écarté :** `ad_title.xml` / `R.id.ad_title` est un **titre d’alert-dialog**, pas une publicité. Il est inflated par `z0/e.i()` pour `AlertDialog.Builder.setCustomTitle`.

---

## 4. Matrice des modes : annoncé vs réellement câblé

### 4.1 Les six modes annoncés

`OPT_LIST_THEME` contient six libellés, traduits dans 33 locales :

| Index | Libellé | Valeur interne après `+1` | Bits de mode | Styles présents | Accessible dans ce build ? |
|---:|---|---:|---:|---|---|
| 0 | Dark | 1 | 256 | `AppTheme.Dark` + accents | **Oui, défaut** |
| 1 | Light | 2 | 512 | `AppTheme.Light` | **Non, normalisé vers 1** |
| 2 | Light and Dark | 3 | 768 | `AppTheme.Light.DarkActionBar` | **Non, normalisé vers 1** |
| 3 | Black / AMOLED | 4 | 1024 | `AppTheme.Dark.Amoled` | **Non, normalisé vers 1** |
| 4 | Auto Light/Dark | 5 | 1280 | `AppTheme.DayNight` | **Non, normalisé vers 1** |
| 5 | E Ink | 6 | 1536 | `AppTheme.Light.EInk` | **Comportement oui, thème complet non confirmé** |

### 4.2 Le verrou produit

`res/xml/pref_gui.xml` :

```xml
<ListPreference
    android:enabled="false"
    android:entries="@array/OPT_LIST_THEME"
    android:key="iTheme"
    android:summary="@string/FREE_LIMIT_HELP"
    android:defaultValue="0"
    android:entryValues="@array/OPT_LIST_FILE_SORT_VALUE" />
```

Deux faits indépendants :

1. **Le sélecteur est désactivé** et son résumé est `FREE_LIMIT_HELP`. C’est une limitation de l’édition gratuite, pas un bug de rendu.
2. **`entryValues` pointe vers le mauvais tableau** : `OPT_LIST_FILE_SORT_VALUE` a 4 valeurs, alors que `OPT_LIST_THEME` a 6 entrées. `OPT_LIST_THEME_VALUE` existe avec 6 valeurs mais n’est pas utilisé ici.

### 4.3 La normalisation runtime

`t0/b.java`, lignes 353–358 et 689–694 :

```java
iI1 = c.i0(0, defaultSharedPreferences.getString("iTheme", null)) + 1;
if (iI1 != 6) {
    iI1 = 1;
}
f2087h = ((iI1 << 8) & 3840) | f2087h;
```

Seules deux valeurs de bits sont donc accessible par ce chemin : **256 (Dark)** et **1536 (E-Ink behavior)**. Des consommateurs existent pour `k(768)` et `k(1024)` ; aucun consommateur direct de `k(512)` ou `k(1280)` n’a été trouvé. Dans tous les cas, ces bits ne peuvent pas être satisfaits via cette normalisation.

**Statut : CONFIRMÉ statiquement.** Aucun test runtime n’a été effectué. Ce rapport ne fournit aucune instruction de contournement du verrou Pro/Donation.

### 4.4 Le cas E-Ink : partiellement câblé

Détection automatique au premier lancement, `v0/b.f()` :

- fréquence de rafraîchissement `< 20 Hz`, ou
- fabricant `onyx` / `kobo`, ou
- marque contenant `boyue` / `onyx` / `tolino`.

Si détecté, `t0/b` écrit `iTheme="5"`, `iFSIconTheme="1"`, désactive les animations et positionne les bits E-Ink.

Comportements E-Ink confirmés dans le code :

- `z0/e.l()` : supprime les dividers de `ListView`, sélecteur noir/blanc sans demi-teinte.
- `b1/a.java:203` : pas de ripple si E-Ink.
- `z0/b.java` : icônes `fsm_up_eink` / `fsm_folder_eink`, teinte noire.
- `ZImageViewer`, `SettingsDlg`, `MenuToggleButton`, `ExSearchView` : branches E-Ink spécifiques.

**Mais** le résolveur de thème principal `t0/b.c()` ne sélectionne que le tableau `f2095p` de thèmes **sombres** :

```java
public static int c() {
    int i2 = f2087h & 255;
    return (i2 == 0 || i2 >= 21) ? R.style.AppTheme_Dark : f2095p[i2];
}
```

Aucune référence à `R.style.AppTheme_Light_EInk` n’a été trouvée hors de `R.java`. Le style blanc E-Ink existe et son contraste théorique est excellent, mais **le chemin de sélection identifié ne l’applique pas**.

**Verdict E-Ink :**
- **CONFIRMÉ** : mode comportemental E-Ink accessible et adaptations spécifiques.
- **PROBABLE** : incohérence visuelle — fond sombre avec icônes/comportements E-Ink, au lieu du thème blanc complet.
- **INCONNU** : rendu exact sur liseuse réelle, non testé.

---

## 5. Couleurs d’accent et Material You

### 5.1 Accent picker

`c0/b.f384c` liste **22 noms** : Default, Dynamic color, Pink, Purple, Deep Purple, Indigo, Blue, Light Blue, Cyan, Teal, Green, Light Green, Lime, Yellow, Amber, Orange, Deep Orange, Brown, Grey, Blue Grey, Dark Grey, Red.

`t0/b.f2095p` ne contient que **21 styles** (index 0–20). `c()` fait :

```java
return (i2 == 0 || i2 >= 21) ? R.style.AppTheme_Dark : f2095p[i2];
```

Donc l’index 21 « Red » **retombe sur `AppTheme.Dark`** pour la toolbar. Le tableau de thèmes de dossiers `f2096q` contient bien 22 entrées avec `FolderTheme_Red`.

**Verdict :** défaut mineur confirmé — l’accent rouge est présent pour les dossiers mais pas pour le thème principal.

Autre incohérence probable : `ColorPreference.onPrepareDialogBuilder` passe `persistedInt` comme position cochée à `setSingleChoiceItems`, alors que la liste peut être filtrée (Dynamic masqué si API < 31). La position cochée peut ne pas correspondre à l’index persisté. À vérifier en runtime.

### 5.2 Material You / dynamique

- Option `Dynamic color` = index 1, proposée uniquement si `Build.VERSION.SDK_INT >= 31` (`c0/b`).
- `AppTheme.Dynamic.Dark` existe dans `values-v31/styles.xml`.
- `Base.Dynamic.Dark` référence `@android:color/system_neutral1_900` pour le fond de liste et `system_accent1_*` pour les accents.
- `values-v31/styles.xml` contient **35 références `system_*`** : 32 `system_accent`, 3 `system_neutral`.
- `AppTheme.Dynamic.Light` et `AppTheme.Dynamic.DayNight` existent aussi, mais ne sont pas sélectionnés par `t0/b.c()` dans le chemin identifié.

**Verdict :** Material You est **réel et sombre uniquement** dans ce build. Le contraste ne peut pas être certifié statiquement car la palette dépend du fond d’écran et de l’OEM.

---

## 6. Contraste des thèmes fixes

Méthode : luminance relative WCAG 2.x, résolution des attributs personnalisés du renderer de liste (`backgroundColorFileList`, `defaultTextColorFileList*`) et chaîne de parents. Configuration API 31 jour, fond par défaut.

| Thème | Fond | Principal | Secondaire | Message | Verdict |
|---|---|---:|---:|---:|---|
| `AppTheme.Dark` | `#303030` | **13,20** | **6,87** | **13,20** | AA texte normal |
| `AppTheme.Light` | `#f3f3f3` | **18,93** | **18,93** | **18,93** | AA texte normal |
| `AppTheme.Light.DarkActionBar` | `#f3f3f3` | **18,93** | **18,93** | **18,93** | AA texte normal |
| `AppTheme.Dark.Amoled` | `#000000` | **14,73** | **5,32** | **4,89** | AA texte normal |
| `AppTheme.Light.EInk` | `#ffffff` | **21,00** | **21,00** | **21,00** | AA texte normal |
| `AppTheme.Dark.Material.Blue` | `#303030` | **13,20** | **6,87** | **13,20** | AA texte normal |
| `AppTheme.Light.DarkActionBar.Material.Blue` | `#f3f3f3` | **18,93** | **18,93** | **18,93** | AA texte normal |
| `AppTheme.Dynamic.Dark` | `system_neutral1_900` | — | — | — | **INCONNU — palette appareil** |
| `AppTheme.Dynamic.Light` | `system_neutral1_10` | — | — | — | **INCONNU — palette appareil** |

Réserves :

- Le message AMOLED à **4,89** passe AA mais marge faible ; toute variation de fond ou d’alpha peut le faire échouer.
- Les overlays de sélection (`backgroundColorFileListItem` semi-transparent) ne sont pas inclus dans le calcul.
- L’option **fond personnalisé** (`iGUICustomBGPath`) peut dégrader le contraste ; non mesurable statiquement.
- Les thèmes clair/AMOLED/E-Ink complets sont mesurés **en tant que styles**, pas en tant que modes nécessairement accessibles dans ce build.

---

## 7. Accessibilité

### 7.1 Libellés

**Défaut confirmé :** `res/layout-v21/ad_title.xml`, `ImageView @id/titleButton` sans `contentDescription`. Ce bouton est inflated par `z0/e.i()` et reçoit un `OnClickListener` pour ouvrir un `PopupMenu`. Il est donc actionnable mais non libellé pour TalkBack.

Recommandation : ajouter `android:contentDescription="@string/..."` localisé, ou `importantForAccessibility="no"` si purement décoratif — ce qui n’est pas le cas ici.

### 7.2 Cibles tactiles

Après suppression des 36 faux positifs `0dp`, **6 candidats de dimension** subsistent, en doublons de qualifiers :

| Fichier | Vue | Dimension | Statut |
|---|---|---:|---|
| `layout/item_color_select.xml` + `layout-v17` | `ImageView iv_icon` | 32×32dp | candidat ; la ligne parente peut porter la cible |
| `layout/item_error.xml` + `layout-v17` | `TextView n` | 40dp large | candidat ; numéro de ligne dans une ligne parente |

Autres dimensions notables :

- `list_item_size` : défaut **48dp**, min **30dp**, max **100dp**. L’utilisateur peut donc réduire les lignes sous 48dp.
- `floating_action_button_size` : **56dp**.
- `floating_action_button_size_small` : **46dp** — sous 48dp, candidat mineur.
- `menu_item_toggle_size` : **48dp**.

**Statut :** aucun test TalkBack / switch access / mesure de cible réelle. Les candidats ne sont pas tous des défauts confirmés.

### 7.3 Taille de texte et unités

`dimens.xml` :

```text
list_item_text_size     = 16.0px
list_item_text_size_min = 10.0px
list_item_text_size_max = 40.0px
```

`t0/b` lit `getDimensionPixelSize(R.dimen.list_item_text_size)` → pixels physiques. `d0/c.java:179` fait ensuite `textView.setTextSize(t0.b.f2091l)` → l’overload `setTextSize(float)` interprète la valeur comme **sp**.

**Incohérence d’unité confirmée :** une valeur lue en px est réappliquée comme sp. Sur écran haute densité, cela peut amplifier la taille de façon non linéaire et imprévisible. Ce n’est pas une absence de scaling, mais un **scaling incohérent**.

Recommandation : stocker la préférence en sp ou en entier logique, puis appeler `setTextSize(TypedValue.COMPLEX_UNIT_SP, valeur)`.

### 7.4 Autres points

- `android:fitsSystemWindows` absent des XML, mais `FitListView` appelle `setFitsSystemWindows(true)` en Java.
- Une seule catégorie de code a11y détectée ; pas de preuve d’audit TalkBack complet.
- Pas de `labelFor` systématique détecté dans les formulaires de mot de passe / permissions.
- Les captures d’exception silencieuses peuvent masquer des erreurs d’opération sans annonce accessible.

---

## 8. RTL et internationalisation

### 8.1 RTL

Manifeste : `supportsRtl=true`. Locales RTL présentes : arabe, farsi, ouïghour.

Pourtant **333 attributs left/right** dans **73 fichiers** :

```text
layout          : 217
layout-v17      :  80
layout-v16      :  12
layout-sw600dp  :   8
layout-sw720dp  :   8
layout-v21      :   4
layout-v22      :   4
```

Exemples : `paddingLeft/Right`, `layout_marginLeft/Right`, `layout_alignParentLeft/Right`, `layout_toLeftOf/Right`.

Même les dossiers `layout-v17` censés apporter le support RTL contiennent 80 attributs physiques. Certaines vues ont aussi `gravity="start"`, donc le support est **mixte**.

**Verdict :** risque réel de miroir incomplet en arabe/farsi/ouïghour. Non prouvé visuellement. Recommandation : migrer vers `start/end`, `paddingStart/End`, `layout_marginStart/End`, et tester en locale RTL.

### 8.2 Couverture de traduction

422 chaînes par défaut, 33 locales. Aucune locale n’est à 100 %.

| Locale | Traduites | Couverture | Manquantes |
|---|---:|---:|---:|
| `-ug` | 292 | **69,2 %** | 130 |
| `-ky` | 294 | 69,7 % | 128 |
| `-sr` | 347 | 82,2 % | 75 |
| **`-fr`** | **353** | **83,6 %** | **69** |
| `-ar` | 389 | 92,2 % | 33 |
| `-tr` | 389 | 92,2 % | 33 |
| `-zh-rCN` | 389 | 92,2 % | 33 |
| `-ru` | 390 | **92,4 %** | 32 |

Les manquants incluent souvent des chaînes `ABT_*`, `OPEN_SOURCE_*`, `BTN_*`, `ERROR_*`. Le fallback anglais est probable mais non testé.

### 8.3 Gestion de locale

- `xml-v33/locales_config.xml` déclare les locales par application pour Android 13+.
- `z0/e.k()` utilise `resources.updateConfiguration(...)` sur API < 33 — **déprécié**.
- Sur API ≥ 33, la fonction retourne tôt et s’appuie sur le mécanisme système.

### 8.4 Chaînes en dur

18 occurrences, surtout techniques : `...`, `R`, `W`, `X`, `UID:`, `GID:`, `1`. Risque faible, mais à externaliser pour cohérence.

---

## 9. Layouts, densités, icônes

### 9.1 Structure

- Profondeur max observée : **5** (`dlg_select_file_land`). Pas de hiérarchie pathologique.
- `dlg_info` : **54 vues**, 14 `layout_weight` — écran dense, coût de mesure à surveiller.
- Variantes paysage : `*_land.xml`.
- Variantes tablette : `layout-sw600dp`, `layout-sw720dp`, `values-sw600dp`.
- `resizeableActivity=true` sur la plupart des activités, `supports-screens` toutes tailles.
- Pas de `ConstraintLayout` moderne AndroidX ; l’ancien support library est utilisé.

### 9.2 Densités

Rasters par dossier :

```text
drawable-mdpi   : 51
drawable-hdpi   : 58
drawable-xhdpi  : 59
drawable-xxhdpi : 1
drawable-xxxhdpi: 1
drawable-nodpi  : 16
mipmap-mdpi→xxxhdpi : complets pour le launcher
```

**Lecture :** les rasters sont concentrés sur mdpi–xhdpi, mais **191 vecteurs** compensent en grande partie. Les 16 `nodpi` sont des icônes de types de fichiers rendues en bitmap à la taille demandée. Les mipmaps du launcher sont complets. Le risque de flou existe surtout pour les rares rasters non vectoriels sur écrans très denses.

### 9.3 Icônes adaptatives et monochromes

4 icônes adaptatives dans `mipmap-anydpi-v26` :

| Icône | Monochrome |
|---|---|
| `ic_launcher` | oui |
| `ic_launcher_round` | oui |
| `ic_launcher_image` | oui |
| `ic_launcher_text` | **non** |

**Défaut mineur :** l’alias éditeur de texte n’a pas de couche monochrome, donc rendu incohérent avec les icônes thématisées Android 13+.

### 9.4 Séparateurs px

3 occurrences non nulles : `1.0px` dans `dlg_menu` (×2 qualifiers) et `dlg_open_as` (v21). Ce sont des traits fins de séparation. Acceptable visuellement, mais `1dp` ou une couleur de divider système serait plus cohérent.

---

## 10. Insets, edge-to-edge, retour et configuration

### 10.1 Insets legacy présents

Contrairement au premier regex, **des `WindowInsets` anciens sont bien présents** :

- `a1/d.java` : `OnApplyWindowInsetsListener` sur le decor des bottom sheets, padding bas.
- `FilePanelView.dispatchApplyWindowInsets` : marge haute + padding des listes.
- `FloatingActionMenu.dispatchApplyWindowInsets` : marges adaptées aux insets.
- `FitListView` : `setFitsSystemWindows(true)` et `fitSystemWindows(Rect)`.
- `e1/a`, `e1/b`, `f/c` : dispatch d’insets dans les vues custom.

### 10.2 Pas d’edge-to-edge moderne

Aucune API moderne trouvée : `setDecorFitsSystemWindows`, `WindowInsetsController`, `WindowCompat`, `enableEdgeToEdge`, `setSystemBarsAppearance`.

Avec `targetSdk=34`, l’application n’est pas encore soumise à l’edge-to-edge forcé d’Android 15 pour `targetSdk=35`. **Risque futur** lors du relèvement de targetSdk : les insets legacy et `consumeSystemWindowInsets()` devront être revus.

### 10.3 Retour

- Gestion legacy confirmée : `ZArchiver.dispatchKeyEvent:2283` et `onKeyUp:3264` testent `keyCode == 4`.
- `enableOnBackInvokedCallback` absent du manifeste.
- Aucun `OnBackInvokedCallback` / `OnBackInvokedDispatcher`.

**Verdict :** le retour fonctionne par le chemin legacy ; pas de retour prédictif Android 13+ câblé.

### 10.4 Configuration

`configChanges` des activités principales : `orientation|screenLayout|screenSize|smallestScreenSize`. **`uiMode` absent** : un changement jour/nuit système recrée l’activité, ce qui est normal, mais le mode auto est de toute façon verrouillé dans ce build.

---

## 11. Animations et E-Ink

- `FloatingActionMenu` : `ObjectAnimator` rotation 0→135°, alpha, durée **300ms**.
- Préférence `iGUIAnimation` active/désactive les animations.
- Au premier lancement, les animations sont désactivées sur API ≥ 24 ou sur appareils E-Ink détectés.
- E-Ink supprime ripple et demi-teintes dans plusieurs vues.
- Pas de référence à `Settings.Global.ANIMATOR_DURATION_SCALE` ou `AccessibilityManager.isReduceMotionEnabled` trouvée ; le réglage système « supprimer les animations » n’est pas explicitement lu.

---

## 12. Registre des findings design

| # | Finding | Sévérité | Statut | Localisation |
|---:|---|---|---|---|
| D1 | Sélecteur de thème désactivé + normalisation vers Dark/E-Ink ; matrice annoncée ≠ accessible | **Moyenne** | CONFIRMÉ | `pref_gui.xml`, `t0/b:353,689` |
| D2 | `entryValues` du thème pointe vers le tableau de tri (4 vs 6) | Moyenne | CONFIRMÉ | `pref_gui.xml` |
| D3 | E-Ink comportemental sans sélection du thème blanc complet | Moyenne | PROBABLE | `t0/b.c()`, `z0/e.o()` |
| D4 | Accent « Red » absent du tableau principal, fallback Dark | Faible | CONFIRMÉ | `c0/b`, `t0/b.f2095p` |
| D5 | `titleButton` sans `contentDescription` | Moyenne | CONFIRMÉ | `layout-v21/ad_title.xml`, `z0/e.i()` |
| D6 | Unités texte px lues puis réappliquées comme sp | Moyenne | CONFIRMÉ | `dimens`, `t0/b`, `d0/c:179` |
| D7 | 333 attributs left/right malgré `supportsRtl=true` | Moyenne | CONFIRMÉ statiquement | 73 layouts |
| D8 | Material You : contraste non certifiable statiquement | Moyenne | INCONNU | `values-v31` |
| D9 | `ic_launcher_text` sans monochrome | Faible | CONFIRMÉ | `mipmap-anydpi-v26` |
| D10 | Couverture de traduction incomplète, fr 83,6 % | Faible | CONFIRMÉ | `values-*/strings.xml` |
| D11 | Insets legacy, pas d’edge-to-edge moderne | Moyenne future | CONFIRMÉ | `a1/d`, `FilePanelView`, etc. |
| D12 | Pas de retour prédictif `OnBackInvokedCallback` | Faible | CONFIRMÉ | manifeste, `ZArchiver` |
| D13 | Cibles tactiles candidates 32/40/46dp | Faible | À VÉRIFIER | `item_color_select`, `item_error`, FAB small |
| D14 | Fond personnalisé peut casser le contraste | Faible | INCONNU | `iGUICustomBGPath` |
| D15 | Architecture UI legacy, support library, panneau abandonné | Moyenne dette | CONFIRMÉ | `android.preference`, `com.sothree.*` |

---

## 13. Recommandations priorisées

**Priorité 1 — cohérence et accessibilité**

1. Décider produit : soit assumer l’édition gratuite sombre/E-Ink et **retirer les options inaccessibles**, soit réactiver proprement la matrice complète dans une édition autorisée. Ne pas laisser des libellés qui promettent des modes non câblés.
2. Corriger `entryValues` vers `OPT_LIST_THEME_VALUE`.
3. Câbler `AppTheme.Light.EInk` dans le résolveur si le mode E-Ink doit être blanc, ou renommer le mode pour refléter le comportement réel.
4. Ajouter le `contentDescription` du bouton de titre.
5. Corriger l’unité de taille de texte : stocker en sp/logique, appliquer avec `COMPLEX_UNIT_SP`.

**Priorité 2 — qualité visuelle**

6. Ajouter `AppTheme_Dark_Material_Red` ou retirer « Red » du picker principal.
7. Migrer les attributs left/right vers start/end ; tester arabe/farsi/ouïghour.
8. Ajouter la couche monochrome à `ic_launcher_text`.
9. Compléter la traduction française et les chaînes `ERROR_*` / `BTN_*` visibles.
10. Tester le contraste Material You sur plusieurs fonds d’écran clairs/sombres.

**Priorité 3 — modernisation**

11. Migrer vers AndroidX / Material Components ou Material 3, remplacer `slidinguppanel` et `android.preference`.
12. Préparer edge-to-edge moderne avant de relever targetSdk à 35+.
13. Ajouter `OnBackInvokedCallback` pour le retour prédictif.
14. Remplacer les captures d’exception silencieuses par des erreurs visibles et accessibles.

---

## 14. Plan de validation runtime futur

Aucun test runtime n’a été effectué. Si vous autorisez plus tard un émulateur isolé GitHub Actions, matrice minimale :

| Axe | Valeurs |
|---|---|
| API | 23, 29, 31, 34, 35 |
| Mode système | jour, nuit |
| Thème app | Dark, Light, Light+Dark, AMOLED, Auto, E-Ink si accessible |
| Accent | Default, Dynamic, Blue, Red |
| Densité | mdpi, xhdpi, xxhdpi |
| Taille écran | téléphone, paysage, sw600dp |
| Locale | fr, en, ar |
| Taille police | 100 %, 150 %, 200 % |
| Accessibilité | TalkBack, cible tactile, contraste sélection |
| Insets | navigation 3 boutons, geste, clavier, cutout |

Livrables attendus : captures par combinaison, ratios de contraste mesurés, arbre TalkBack, journal des crashes, vérification que le mode choisi persiste après recréation.

---

## 15. Preuves

```text
analysis/remote/zarchiver-audit-41288119748/design/design-summary.json
analysis/remote/zarchiver-audit-41288119748/design/design-resource-inventory.json
analysis/remote/zarchiver-audit-41288119748/design/design-themes.json
analysis/remote/zarchiver-audit-41288119748/design/design-colors.json
analysis/remote/zarchiver-audit-41288119748/design/design-layouts.json
analysis/remote/zarchiver-audit-41288119748/design/design-icons.json
analysis/remote/zarchiver-audit-41288119748/design/design-locales.json
analysis/remote/zarchiver-audit-41288119748/design/design-arrays.json
analysis/remote/zarchiver-audit-41288119748/design/design-dimens.json
analysis/remote/zarchiver-audit-41288119748/design/design-manifest.json
analysis/remote/zarchiver-audit-41288119748/design/resources/res/
analysis/remote/zarchiver-deep-41286469657/reports/jadx-sources/
analysis/audit-local/theme-contrast.json
analysis/audit-local/corrections.json
```

Rapport connexe : **`analysis/ZArchiver_Audit_Complet.md`** — sécurité, durcissement, qualité, conformité.
