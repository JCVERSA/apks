# Network ads license

Static search evidence. A hit does not establish runtime execution.

## jadx/sources/ru/zdevs/zarchiver/R.java:746 (ads_billing_license; file score 54)

```java
   740:         public static final int tvTitlMedia3 = 0x7f0700e3;
   741:         public static final int tvTitlMedia4 = 0x7f0700e4;
   742:         public static final int tvTitlMedia5 = 0x7f0700e5;
   743:         public static final int tvUserGroup = 0x7f0700e6;
   744:         public static final int tv_appname = 0x7f0700e7;
   745:         public static final int tv_dest = 0x7f0700e8;
   746:         public static final int tv_donate = 0x7f0700e9;
   747:         public static final int tv_empty_list = 0x7f0700ea;
   748:         public static final int tv_enc = 0x7f0700eb;
   749:         public static final int tv_encrypt = 0x7f0700ec;
   750:         public static final int tv_format = 0x7f0700ed;
   751:         public static final int tv_info = 0x7f0700ee;
   752:         public static final int tv_level = 0x7f0700ef;
   753:         public static final int tv_name = 0x7f0700f0;
   754:         public static final int tv_password = 0x7f0700f1;
```

## jadx/sources/ru/zdevs/zarchiver/R.java:856 (ads_billing_license; file score 54)

```java
   850:         public static final int FINFO_ITEM_COUNT = 0x7f0b0002;
   851:     }
   852: 
   853:     public static final class string {
   854:         public static final int ABT_APP_WEBSITE = 0x7f0c0000;
   855:         public static final int ABT_AUTHOR = 0x7f0c0001;
   856:         public static final int ABT_DONATE = 0x7f0c0002;
   857:         public static final int ABT_DONATE_GENERAL = 0x7f0c0003;
   858:         public static final int ABT_DONATE_PAY = 0x7f0c0004;
   859:         public static final int ABT_OPEN_SOURCE = 0x7f0c0005;
   860:         public static final int ABT_OPEN_SOURCE_7ZIP = 0x7f0c0006;
   861:         public static final int ABT_OPEN_SOURCE_AOSP = 0x7f0c0007;
   862:         public static final int ABT_OPEN_SOURCE_APKPARSER = 0x7f0c0008;
   863:         public static final int ABT_OPEN_SOURCE_BUSYBOX = 0x7f0c0009;
   864:         public static final int ABT_OPEN_SOURCE_FREEBSD = 0x7f0c000a;
```

## jadx/sources/ru/zdevs/zarchiver/activity/AboutDlg.java:59 (ads_billing_license; file score 27)

```java
    53:         }
    54:         setContentView(R.layout.dlg_about);
    55:         TextView textView = (TextView) findViewById(R.id.tv_version);
    56:         if (textView != null) {
    57:             textView.setText(string);
    58:         }
    59:         TextView textView2 = (TextView) findViewById(R.id.tv_donate);
    60:         if (textView2 != null) {
    61:             textView2.setText(getString(R.string.ABT_DONATE_GENERAL, getString(R.string.DNT_TRANSLATE_SERVICE_URL) + ", " + getString(R.string.DNT_TRANSLATE_URL)));
    62:         }
    63:         TextView textView3 = (TextView) findViewById(R.id.tv_terms_of_service);
    64:         if (textView3 != null) {
    65:             textView3.setPaintFlags(textView3.getPaintFlags() | 8);
    66:             textView3.setOnClickListener(new b0.a(this));
    67:         }
```

## jadx/sources/ru/zdevs/zarchiver/activity/AboutDlg.java:61 (ads_billing_license; file score 27)

```java
    55:         TextView textView = (TextView) findViewById(R.id.tv_version);
    56:         if (textView != null) {
    57:             textView.setText(string);
    58:         }
    59:         TextView textView2 = (TextView) findViewById(R.id.tv_donate);
    60:         if (textView2 != null) {
    61:             textView2.setText(getString(R.string.ABT_DONATE_GENERAL, getString(R.string.DNT_TRANSLATE_SERVICE_URL) + ", " + getString(R.string.DNT_TRANSLATE_URL)));
    62:         }
    63:         TextView textView3 = (TextView) findViewById(R.id.tv_terms_of_service);
    64:         if (textView3 != null) {
    65:             textView3.setPaintFlags(textView3.getPaintFlags() | 8);
    66:             textView3.setOnClickListener(new b0.a(this));
    67:         }
    68:         TextView textView4 = (TextView) findViewById(R.id.tv_privacy_policy);
    69:         if (textView4 != null) {
```

## jadx/sources/ru/zdevs/zarchiver/activity/AboutDlg.java:143 (network; file score 27)

```java
   137:             intent.setData(Uri.parse(string));
   138:             intentCreateChooser = Intent.createChooser(intent, getResources().getString(R.string.MENU_FEEDBACK));
   139:         } else if (itemId == R.id.bShare) {
   140:             Intent intent2 = new Intent("android.intent.action.SEND");
   141:             intent2.setType("text/plain");
   142:             intent2.putExtra("android.intent.extra.SUBJECT", "Check out ZArchiver");
   143:             intent2.putExtra("android.intent.extra.TEXT", "ZArchiver is fast and simple archive and file manager. Get it on https://play.google.com/store/apps/details?id=ru.zdevs.zarchiver");
   144:             intentCreateChooser = Intent.createChooser(intent2, getResources().getString(R.string.MENU_SHARE_APP));
   145:         } else {
   146:             intentCreateChooser = null;
   147:         }
   148:         if (intentCreateChooser != null) {
   149:             h.e(this, intentCreateChooser);
   150:             z2 = true;
   151:         } else {
```

## decoded/AndroidManifest.xml:2 (network; file score 25)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <manifest xmlns:android="http://schemas.android.com/apk/res/android" android:compileSdkVersion="34" android:compileSdkVersionCodename="14" android:installLocation="auto" package="ru.zdevs.zarchiver" platformBuildVersionCode="34" platformBuildVersionName="14">
     3:     <queries>
     4:         <intent>
     5:             <action android:name="ru.zdevs.zarchiver.plugin.PLUGIN_APPLICATION"/>
     6:         </intent>
     7:         <intent>
     8:             <action android:name="android.intent.action.VIEW"/>
     9:             <data android:mimeType="*/*" android:scheme="content"/>
    10:         </intent>
```

## decoded/res/values-ar/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">الموقع الرسمي: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">تبرع</string>
     5:     <string name="ABT_DONATE_GENERAL">"يمكنك المساعدة بطرق مختلفة:
     6:  1. ترجمة البرنامج إلى لغة أخرى أو إصلاح الترجمات الحالية. ملفات الترجمة: %1$s
     7:  2. شراء إصدار التبرع/برو
     8:  3. مشاركة أفكارك أو الإبلاغ عن المشاكل
     9:  4. أظهر لنا شكرك للمؤلف عن طريق التبرع:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">سياسة الخصوصية</string>
    11:     <string name="ABT_TERM_OF_SERVICE">بنود الخدمة</string>
```

## decoded/res/values-az/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Ana səhifə: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">İanə et</string>
     5:     <string name="ABT_DONATE_GENERAL">"Müxtəlif yollarla kömək edə bilərsiniz:
     6:  1. Proqramı başqa bir dilə tərcümə edin və mövcud tərcüməni düzəltin. Yerləşdirmə faylları: %1$s;
     7:  2. Donate/Pro versiyasını nəğd alın;
     8:  3. Fikirlərinizi paylaşın və ya problemlərinizi bildirin;
     9:  4. Yaratıcı dəstəyini göstərmək üçün bir miqdar pul bağışlayın:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Gizlilik Siyasəti</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Xidmət Şərtləri</string>
```

## decoded/res/values-az/strings.xml:103 (ads_billing_license; file score 20)

```java
    97:     <string name="FINFO_TTL_FILE_INFO">Fayl məlumatı</string>
    98:     <string name="FINFO_TYPE">Növ:</string>
    99:     <string name="FINFO_TYPE_FILE_GROUP">Qrup</string>
   100:     <string name="FINFO_TYPE_FOLDER">Qovluq</string>
   101:     <string name="FINFO_TYPE_LINK">Bağlantı</string>
   102:     <string name="FINFO_VIDEO_INFO">Video məlumatı</string>
   103:     <string name="FREE_LIMIT_HELP">Yalnız Donate/Pro istifadəçiləri üçün</string>
   104:     <string name="FSD_ACCESS_FILES_DENIED">Fayl tətbiqi versiyası qovluqlara giriş icazəsini dəstəkləmir.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver telefonunuzun sənədlərinə daxil olmaq üçün sənədləri oxumaq, dəyişdirmək və silmək üçün icazəyə ehtiyac duyur.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">"ZArchiver'in Android/OBB qovluğuna daxil olmaq üçün paketlərin quraşdırılması üçün icazəyə ehtiyac duyur."</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Xarici SD karta %1 data yazmağa icazə verməlisiniz.</string>
   108:     <string name="FSD_DONT_SHOW">Yenidən göstərmə</string>
   109:     <string name="FSD_INCORRECT_PATH">%1 üçün yanlış yol seçilməsi!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Siz bu yeniləməni silə bilərsiniz.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">%1 data yazmaq üçün öz, qovluğunuza yol seçməlisiniz.</string>
```

## decoded/res/values-cs/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Domovská stránka: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Přispět</string>
     5:     <string name="ABT_DONATE_GENERAL">"Můžete pomoci různymi způsoby:
     6:  1. Přeložte program do jiného jazyka nebo opravte existující překlady. Lokalizační soubory: %1$s;
     7:  2. Zakupte si Donate/Pro verzi;
     8:  3. Podělte se o svoje nápady nebo nahlaste problémy;
     9:  4. Ukažte svoju vděčnost autorovi poskytnutím daru:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Ochrana osobních údajů</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Podmínky služby</string>
```

## decoded/res/values-cs/strings.xml:103 (ads_billing_license; file score 20)

```java
    97:     <string name="FINFO_TTL_FILE_INFO">Informace o souboru</string>
    98:     <string name="FINFO_TYPE">Typ:</string>
    99:     <string name="FINFO_TYPE_FILE_GROUP">Skupina</string>
   100:     <string name="FINFO_TYPE_FOLDER">Složka</string>
   101:     <string name="FINFO_TYPE_LINK">Odkaz</string>
   102:     <string name="FINFO_VIDEO_INFO">Informace o videu</string>
   103:     <string name="FREE_LIMIT_HELP">Pouze pro uživatele Donate/Pro verze</string>
   104:     <string name="FSD_ACCESS_FILES_DENIED">Verze aplikace Soubory nepodporuje udělení přístupu ke složkám.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver potřebuje oprávnění ke čtení, úpravám a mazání souborů pro přístup k souborům vašeho telefonu.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver potřebuje povolení k instalaci balíčků pro přístup do složky Android/OBB.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Pro zápis dat na externí SD kartu %1 musíte povolit pøístup k této kartì.</string>
   108:     <string name="FSD_DONT_SHOW">Příště nezobrazovat</string>
   109:     <string name="FSD_INCORRECT_PATH">Byla vybrána nesprávná cesta k %1!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Tuto aktualizaci můžete odinstalovat.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Pro zápis dat na %1 musíte zvolit cestu ke koøenovému adresáøi.</string>
```

## decoded/res/values-de/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Webseite: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Mithelfen</string>
     5:     <string name="ABT_DONATE_GENERAL">"Sie können dabei mithelfen:
     6:  1. Übersetzungen anfertigen oder vorhandene verbessern (neueste Versionen der Strings: %1$s;
     7:  2. Spenden/Pro-Version kaufen;
     8:  3. Einsenden von Ideen oder Fehlern;
     9:  4. Den Autor für seine Arbeit honorieren:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Datenschutzerklärung</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Nutzungsbedingungen</string>
```

## decoded/res/values-es/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Página Web: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Donar</string>
     5:     <string name="ABT_DONATE_GENERAL">"Puede ayudar de varias maneras:
     6:  1. Traduciendo el software a otro idioma o corrigiendo traducciones existentes. Ficheros de localización: %1$s;
     7:  2. Comprando la versión Donación/Pro;
     8:  3. Compartiendo sus ideas o avisando de errores;
     9:  4. Puede agradecerle al autor haciéndole una donación:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Política de Privacidad</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Términos de servicio</string>
```

## decoded/res/values-hi/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">मुखपृष्ठ: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">दान या सहयोग करे</string>
     5:     <string name="ABT_DONATE_GENERAL">"आप कई तरह से मदद कर सकते हैं:
     6:  1. इस अनुप्रयोग को दुसरी भाषाओ में बदकर या पहले से मौजूद कमी को सुधार कर | भाषा की फाइले यहां है: %1$s;
     7:  2. उन्नत संस्करण खरीदकर या आर्थिक सहयोग दे कर
     8:  3. अनुप्रयोग में मिली समस्या या अपने सुझाव दे कर
     9:  4. आर्थिक सहयोग देकर निर्माता के प्रति अपना धन्यवाद दिखाकर:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">गोपनीयता नीति</string>
    11:     <string name="ABT_TERM_OF_SERVICE">सेवा की शर्ते</string>
```

## decoded/res/values-hr/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Internet stranica: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Donirajte</string>
     5:     <string name="ABT_DONATE_GENERAL">"Možete pomoći na razne načine:
     6:  1. Prevedite program na drugi jezik ili popravite postojeći prijevod. Datoteke za lokalizaciju: %1$s;
     7:  2. Kupite Donate/Pro verziju;
     8:  3. Podijelite svoje ideje ili prijavite probleme;
     9:  4. Pokažite svoju zahvalnost autoru donacijom:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Politika privatnosti</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Uvjeti pružanja usluge</string>
```

## decoded/res/values-hr/strings.xml:103 (ads_billing_license; file score 20)

```java
    97:     <string name="FINFO_TTL_FILE_INFO">Informacije o datoteci</string>
    98:     <string name="FINFO_TYPE">Tip:</string>
    99:     <string name="FINFO_TYPE_FILE_GROUP">Grupa</string>
   100:     <string name="FINFO_TYPE_FOLDER">Mapa</string>
   101:     <string name="FINFO_TYPE_LINK">Veza</string>
   102:     <string name="FINFO_VIDEO_INFO">Informacije o videozapisu</string>
   103:     <string name="FREE_LIMIT_HELP">Samo za korisnike Donate/Pro verzije</string>
   104:     <string name="FSD_ACCESS_FILES_DENIED">Verzija aplikacije File ne podržava dozvolu do mapa.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver treba dozvolu za čitanje, izmjenu i brisanje datoteka da bi pristupio datotekama na uređaju.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver treba dozvolu za instaliranje paketa za pristup Android/OBB mapi.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Za upis podataka na vanjsku SD karticu %1 morate odobriti pristup kartici.</string>
   108:     <string name="FSD_DONT_SHOW">Ne prikazuj ponovo</string>
   109:     <string name="FSD_INCORRECT_PATH">Neispravna putanja do %1!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Možete deinstalirati ovo ažuriranje.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Za upis podataka na %1 morate odabrati putanju do njenog direktorija.</string>
```

## decoded/res/values-hu/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Weboldal: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Adomány</string>
     5:     <string name="ABT_DONATE_GENERAL">"Különböző módokon segíthet:
     6:  1. Fordítsa le a programot más nyelvre, vagy segítsen a meglévő fordítás javításában. A honosításhoz szükséges fájlok: %1$s;
     7:  2. Vásárolja meg a Donate/Pro verziót;
     8:  3. Ossza meg ötleteit vagy jelentse a hibákat;
     9:  4. Adományozással fejezze ki háláját a készítőnek:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Adatvédelmi irányelvek</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Szolgáltatási feltételek</string>
```

## decoded/res/values-hu/strings.xml:103 (ads_billing_license; file score 20)

```java
    97:     <string name="FINFO_TTL_FILE_INFO">Fájlinformációk</string>
    98:     <string name="FINFO_TYPE">Típus:</string>
    99:     <string name="FINFO_TYPE_FILE_GROUP">Csoport</string>
   100:     <string name="FINFO_TYPE_FOLDER">Mappa</string>
   101:     <string name="FINFO_TYPE_LINK">Link</string>
   102:     <string name="FINFO_VIDEO_INFO">Videó információk</string>
   103:     <string name="FREE_LIMIT_HELP">Csak a Donate/Pro verzió felhasználói számára</string>
   104:     <string name="FSD_ACCESS_FILES_DENIED">A fájl alkalmazás verziója nem támogatja a mappákhoz való hozzáférés megadását.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">A ZArchiver engedélyt igényel a fájlok olvasásához, módosításához és törléséhez, hogy hozzáférhessen a telefon fájljaihoz.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">A ZArchiver engedélyeket igényel a csomagok telepítéséhez, hogy hozzáférhessen az Android/OBB mappához.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Az adatok külső %1 SD-kártyára írásához, engedélyeznie kell a hozzáférést.</string>
   108:     <string name="FSD_DONT_SHOW">Ne jelenjen meg többé</string>
   109:     <string name="FSD_INCORRECT_PATH">Hibásan választotta ki a(z) %1 elérési útvonalát!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Eltávolíthatja ezt a frissítést.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">A(z) %1 adatok írásához, ki kell választania a könyvtár elérési útvonalát.</string>
```

## decoded/res/values-in/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Halaman utama: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Donasi</string>
     5:     <string name="ABT_DONATE_GENERAL">"Anda bisa membantu dengan berbagai cara:
     6:  1. Menterjemah program ke bahasa lainnya atau memperbaiki terjemahan yang ada. File bahasa: %1$s;
     7:  2. Membeli versi Donasi/Pro;
     8:  3. Berbagi ide atau melaporkan masalah;
     9:  4. Tunjukkan terimakasih anda ke pembuat dengan mendonasikan:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Kebijakan Privasi</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Ketentuan layanan</string>
```

## decoded/res/values-in/strings.xml:249 (ads_billing_license; file score 20)

```java
   243:     <string name="MES_SUCESSFUL_DEL_FILE">File sukses dihapus dari arsip</string>
   244:     <string name="MES_SUCESSFUL_END">Operasi selesai dengan sukses</string>
   245:     <string name="MES_SUCESSFUL_TEST">Arsip tidak mengandung kesalahan</string>
   246:     <string name="MES_SUCESSFUL_TESTS">Arsip tidak mengandung kesalahan</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto hanya mendukung kata sandi bahasa inggris!</string>
   248:     <string name="MES_TEST_FILE_PROCESS">Pengujian:</string>
   249:     <string name="MES_WHITE_START_SERVICE">Mempersiapkan untuk membuka arsip</string>
   250:     <string name="MOD_UPDATE_FILE">"Berkas %1 telah dimodifikasi.
   251:  Anda yakin ingin memperbaruinya?"</string>
   252:     <string name="NF_ENTER_FILE_NAME">Nama berkas baru:</string>
   253:     <string name="NF_ENTER_FOLDER_NAME">Nama Folder baru:</string>
   254:     <string name="NF_TTL_NEW_FILE">Berkas baru</string>
   255:     <string name="NF_TTL_NEW_FOLDER">Folder Baru</string>
   256:     <string name="NTF_ADD_FILES_TO_ARC">Menambahkan file ke arsip %1</string>
   257:     <string name="NTF_COMPRESS">Membuat arsip: %1</string>
```

## decoded/res/values-it/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Homepage: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Dona</string>
     5:     <string name="ABT_DONATE_GENERAL">"Puoi supportarlo:
     6:  1. Traducendo il programma in un'altra lingua o correggendo le traduzioni presenti. File di traduzione: %1$s;
     7:  2. Acquistando la versione Donate/Pro;
     8:  3. Suggerendo le tue idee o segnalando eventuali errori;
     9:  4. Ringraziando l'autore con i seguenti strumenti:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Informativa sulla Privacy</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Condizioni del servizio</string>
```

## decoded/res/values-it/strings.xml:103 (ads_billing_license; file score 20)

```java
    97:     <string name="FINFO_TTL_FILE_INFO">Informazioni file</string>
    98:     <string name="FINFO_TYPE">Tipo:</string>
    99:     <string name="FINFO_TYPE_FILE_GROUP">Gruppo di file</string>
   100:     <string name="FINFO_TYPE_FOLDER">Cartella</string>
   101:     <string name="FINFO_TYPE_LINK">Collegamento</string>
   102:     <string name="FINFO_VIDEO_INFO">Informazioni video</string>
   103:     <string name="FREE_LIMIT_HELP">Solo per utenti della versione Donate/Pro</string>
   104:     <string name="FSD_ACCESS_FILES_DENIED">"La versione dell'app File non supporta l'accesso alle cartelle."</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver richiede i permessi per leggere, modificare e eliminare i file sul telefono.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver richiede i permessi per installare i pacchetti per accedere alla cartella Android/OBB.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">"Per scrivere sulla SD esterna %1 devi permetterne l'accesso."</string>
   108:     <string name="FSD_DONT_SHOW">Non mostrare nuovamente</string>
   109:     <string name="FSD_INCORRECT_PATH">Percorso non corretto per %1!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Puoi disinstallare questo aggiornamento.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Per scrivere sulla %1, devi puntare alla sua cartella principale.</string>
```

## decoded/res/values-ja/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">ホームページ: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">貢献</string>
     5:     <string name="ABT_DONATE_GENERAL">"様々な方法で貢献できます:
     6:  1. 他言語への翻訳や既存の翻訳の改善 - 翻訳ファイル: %1$s
     7:  2. 寄付/プロ版の購入
     8:  3. アイデアの提供や問題の報告
     9:  4. アプリ開発者への寄付による感謝の表明:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">プライバシーポリシー</string>
    11:     <string name="ABT_TERM_OF_SERVICE">利用規約</string>
```

## decoded/res/values-ka-rGE/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">ვებგვერდი: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">მხარდაჭერა</string>
     5:     <string name="ABT_DONATE_GENERAL">"თქვენ ჩვენი დახმარება შეგიძლიათ:
     6:  1. პროგრამის სხვა ენაზე გადათარგმნით, ან არასწორი თარგმანის შესწორებით. თარგმანის ფაილები: %1$s;
     7:  2. ფასიანი/პროფესიონალური ვერსიის ყიდვით;
     8:  3. გაგვიზიარეთ თქვენი აზრი, ან გვითხარით პრობლემის შესახებ;
     9:  4. დაუფასეთ ავტორს შრომა ფინანსური მხარდაჭერით:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">კონფიდენციალურობის პოლიტიკა</string>
    11:     <string name="ABT_TERM_OF_SERVICE">მომსახურების პირობები</string>
```

## decoded/res/values-ko/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">홈페이지: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">기부</string>
     5:     <string name="ABT_DONATE_GENERAL">"당신은 몇 가지 방법으로 도울 수 있습니다:
     6:  1. 이 프로그램을 다른 언어로 번역하거나 고쳐주세요. 번역 파일: %1$s;
     7:  2. 기부/프로 버전을 구매하세요;
     8:  3. 당신의 아이디어를 공유하거나 문제를 보고해주세요;
     9:  4. 기부해 제작자에게 감사를 표현하세요:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">개인정보 정책</string>
    11:     <string name="ABT_TERM_OF_SERVICE">서비스 약관</string>
```

## decoded/res/values-lt/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Tinklalapis: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Paremti</string>
     5:     <string name="ABT_DONATE_GENERAL">"Jūs galite padėti įvairiais būdais:
     6:  1. Išversti programėlę į kitą kalbą arba pataisyti esamą. Vertimo failai: %1$s;
     7:  2. Nusipirkti Paramos/Pro versiją;
     8:  3. Dalintis idėjomis arba pranešti apie klaidą;
     9:  4. Parodyti dėkingumą autoriui paremdami:"</string>
    10:     <string name="ABT_TERM_OF_SERVICE">Paslaugų teikimo sąlygos</string>
    11:     <string name="ABT_THANKS">Dėkoju</string>
```

## decoded/res/values-pl/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Strona domowa: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Przekaż darowiznę</string>
     5:     <string name="ABT_DONATE_GENERAL">"Możesz pomóc poprzez:
     6:  1. Przetłumaczenie programu na inny język lub poprawę istniejących tłumaczeń. Lokalizacja plików: %1$s;
     7:  2. Kupienie wersji Donate/Pro;
     8:  3. Podzielenie się Twoim pomysłem lub zgłoszeniem błędów;
     9:  4. Przekazanie dowolnej darowizny autorowi jako podziękowanie:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Polityka prywatności</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Warunki użytkowania</string>
```

## decoded/res/values-pl/strings.xml:103 (ads_billing_license; file score 20)

```java
    97:     <string name="FINFO_TTL_FILE_INFO">Właściwości…</string>
    98:     <string name="FINFO_TYPE">Typ:</string>
    99:     <string name="FINFO_TYPE_FILE_GROUP">Grupa plików</string>
   100:     <string name="FINFO_TYPE_FOLDER">Katalog</string>
   101:     <string name="FINFO_TYPE_LINK">Link</string>
   102:     <string name="FINFO_VIDEO_INFO">Wideo</string>
   103:     <string name="FREE_LIMIT_HELP">Tylko dla użytkowników wersji Donate/Pro</string>
   104:     <string name="FSD_ACCESS_FILES_DENIED">Wersja aplikacji \"Pliki\" nie obsługuje przyznawania dostępu do folderów.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver potrzebuje uprawnień do odczytu, modyfikacji i usuwania plików, aby uzyskać dostęp do plików na Twoim urządzeniu.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver potrzebuje uprawnień do instalacji pakietów, aby uzyskać dostęp do katalogu Android/OBB.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Aby zapisywać dane na zewnętrznej karcie SD %1, przyznaj prawa dostępu do niej.</string>
   108:     <string name="FSD_DONT_SHOW">Nie pokazuj ponownie tej informacji</string>
   109:     <string name="FSD_INCORRECT_PATH">Nieprawidłowa ścieżka dostępu do %1!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Możesz odinstalować tę aktualizację.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Aby korzystać z funkcji zapisu na %1 podaj ścieżkę dostępu do jej katalogu.</string>
```

## decoded/res/values-pt-rBR/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Página inicial: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Doação</string>
     5:     <string name="ABT_DONATE_GENERAL">"Veja como você pode ajudar:
     6:  1. Traduzir o programa para outro idioma ou corrigir traduções existentes. Acesse: %1$s;
     7:  2. Comprando versão Pro;
     8:  3. Feedback;
     9:  4. Você pode contribuir com o autor, doando uma contribuição. Meios disponíveis.."</string>
    10:     <string name="ABT_PRIVACY_POLICY">Política de Privacidade</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Termos e condições</string>
```

## decoded/res/values-ru/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Домашняя страница: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Помочь проекту</string>
     5:     <string name="ABT_DONATE_GENERAL">"Помочь проекту можно различными способами:
     6:  1. Перевести программу на другой язык или исправить существующий перевод. Файлы для перевода: %1$s;
     7:  2. Купить Donate/Pro-версию;
     8:  3. Высказать свои идеи или описать недоработки;
     9:  4. Вы можете сказать спасибо автору программы, следующими способами:"</string>
    10:     <string name="ABT_DONATE_PAY">ЮMoney: 41001641043147</string>
    11:     <string name="ABT_PRIVACY_POLICY">Политика конфиденциальности</string>
```

## decoded/res/values-ru/strings.xml:10 (ads_billing_license; file score 20)

```java
     4:     <string name="ABT_DONATE">Помочь проекту</string>
     5:     <string name="ABT_DONATE_GENERAL">"Помочь проекту можно различными способами:
     6:  1. Перевести программу на другой язык или исправить существующий перевод. Файлы для перевода: %1$s;
     7:  2. Купить Donate/Pro-версию;
     8:  3. Высказать свои идеи или описать недоработки;
     9:  4. Вы можете сказать спасибо автору программы, следующими способами:"</string>
    10:     <string name="ABT_DONATE_PAY">ЮMoney: 41001641043147</string>
    11:     <string name="ABT_PRIVACY_POLICY">Политика конфиденциальности</string>
    12:     <string name="ABT_TERM_OF_SERVICE">Условия использования</string>
    13:     <string name="ABT_THANKS">Благодарность</string>
    14:     <string name="ABT_TTL_ABOUT">О программе</string>
    15:     <string name="ADDF_ENTER_FAVORITE_NAME">Введите название закладки для %1:</string>
    16:     <string name="ADDF_FAVORITE_ICON">Значок:</string>
    17:     <string name="ADDF_TTL_ADD_FAVORITE">Добавление в закладки</string>
    18:     <string name="ADD_ENCRYPT_FILES">Защитить файлы паролем</string>
```

## decoded/res/values-ru/strings.xml:104 (ads_billing_license; file score 20)

```java
    98:     <string name="FINFO_TTL_FILE_INFO">Информация о файле</string>
    99:     <string name="FINFO_TYPE">Тип:</string>
   100:     <string name="FINFO_TYPE_FILE_GROUP">Группа файлов</string>
   101:     <string name="FINFO_TYPE_FOLDER">Папка</string>
   102:     <string name="FINFO_TYPE_LINK">Ссылка</string>
   103:     <string name="FINFO_VIDEO_INFO">Видео</string>
   104:     <string name="FREE_LIMIT_HELP">Только для пользователей Donate/Pro-версии</string>
   105:     <string name="FSD_ACCESS_FILES_DENIED">Версия приложения \"Файл\" не поддерживает предоставление доступа к папкам.</string>
   106:     <string name="FSD_ACCESS_TO_ALL_STORAGE">Для доступа к файлам телефона приложению необходимы разрешения на чтение, модификацию и удаление файлов.</string>
   107:     <string name="FSD_ACCESS_TO_OBB_FOLDER">Для доступа к папке Android/OBB приложению необходимы разрешения на установку приложений.</string>
   108:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Для возможности записи данных на внешнюю SD-карту %1 необходимо разрешить доступ к ней.</string>
   109:     <string name="FSD_DONT_SHOW">Больше не выводить это сообщение</string>
   110:     <string name="FSD_INCORRECT_PATH">Путь до %1 выбран неверно!</string>
   111:     <string name="FSD_REMOVE_FILES_UPDATE">Необходимо удалить обновление этого приложения.</string>
   112:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Для возможности записи данных на %1 необходимо выбрать путь до её каталога.</string>
```

## decoded/res/values-sk/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Domovská stránka: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Prispieť</string>
     5:     <string name="ABT_DONATE_GENERAL">"Môžete pomôcť rôznymi spôsobmi:
     6:  1. Preložte aplikáciu do iného jazyka alebo opravte existujúce preklady. Lokalizačné súbory:%1$s;
     7:  2. Zakúpte si darcovskú/pro verziu;
     8:  3. Podeľte sa o svoje nápady alebo nahláste problémy;
     9:  4. Ukážte svoju vďačnosť k autorovi poskytnutím daru:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Ochrana osobných údajov</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Podmienky služby</string>
```

## decoded/res/values-sr/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Web stranica: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Donirajte</string>
     5:     <string name="ABT_DONATE_GENERAL">"Možete doprineti razvoju tako što ćete:
     6:  1. Prevesti program na drugi jezik ili popraviti postojeći prevod. Fajlovi za lokalizaciju: %1$s;
     7:  2. Kupovina Donate/Pro verzije;
     8:  3. Podeliti vaše ideje ili prijaviti greške;
     9:  4. Možete se zahvaliti autoru na sledeće načine:"</string>
    10:     <string name="ABT_TERM_OF_SERVICE">Uslovi korišćenja</string>
    11:     <string name="ABT_THANKS">Zahvalnice</string>
```

## decoded/res/values-sr/strings.xml:99 (ads_billing_license; file score 20)

```java
    93:     <string name="FINFO_SIZE">Veličina:</string>
    94:     <string name="FINFO_TTL_FILE_INFO">Informacije o fajlu</string>
    95:     <string name="FINFO_TYPE">Tip:</string>
    96:     <string name="FINFO_TYPE_FILE_GROUP">Grupa fajlova</string>
    97:     <string name="FINFO_TYPE_LINK">Veza</string>
    98:     <string name="FINFO_VIDEO_INFO">Video informacije</string>
    99:     <string name="FREE_LIMIT_HELP">Samo za korisnike Donate/Pro verzije</string>
   100:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiveru trebaju dozvole da čita, modifikuje i briše datoteke da bi pristupio datotekama na uređaju.</string>
   101:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiveru trebaju dozvole da instalira pakete da bi pristupio Android/OBB direktorijumu.</string>
   102:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Da biste upisali podatke na externu SD karticu %1 morate dozvoliti pristup do nje.</string>
   103:     <string name="FSD_DONT_SHOW">Ne prikazuj opet</string>
   104:     <string name="FSD_INCORRECT_PATH">Netačna putanja do %1!</string>
   105:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Da biste upisali podatke na %1 morate izabrati putanju do njenog direktorijuma.</string>
   106:     <string name="FSD_TTL_FIX_SD">Upozorenje!</string>
   107:     <string name="FSD_WARNING_TEXT">Operativni sistem Android organičava aplikacije trećih kompanija (one koje nisu došle uz uređaj) da pristupaju funkcijama za upis na eksterne USB diskove ili SD kartice.</string>
```

## decoded/res/values-th-rTH/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">หน้าเว็บหลัก: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">บริจาคเพื่อพัฒนา</string>
     5:     <string name="ABT_DONATE_GENERAL">"คุณสนับสนุนสิ่งดีๆได้อีก
     6:  1. เพิ่มภาษาประจำประเทศของคุณ สำหรับผู้ใช้อื่นๆในภาษาของคุณได้.
     7:  ไฟล์สำหรับภาษาอื่นๆ:%1$s;
     8:  2. ซื้อรุ่นเต็มของเรา.;
     9:  3. ช่วยเสนอแนวทางหรือแนะนำเรา.;
    10:  4. สนับสนุนผลงานแท้หากเห็นใจผู้เขียนและผู้สละเวลา:"</string>
    11:     <string name="ABT_PRIVACY_POLICY">นโยบายความเป็นส่วนตัว</string>
```

## decoded/res/values-tr/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Ana sayfa: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Bağış yap</string>
     5:     <string name="ABT_DONATE_GENERAL">"Çeşitli şekillerde yardımcı olabilirsiniz:
     6:  1. Programı başka bir dile tercüme edin veya varolan çevirileri düzeltin. Yerelleştirme dosyaları: %1$s;
     7:  2. Bağış/Pro sürümünü satın alın;
     8:  3. Fikirlerinizi paylaşın veya sorunlarınızı bildirin;
     9:  4. Bağış yaparak geliştiriciye desteğinizi gösterin:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Gizlilik Politikası</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Kullanım şartları</string>
```

## decoded/res/values-vi/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Trang chủ: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Ủng hộ</string>
     5:     <string name="ABT_DONATE_GENERAL">"Bạn có thể giúp bằng nhiều cách khác nhau:
     6:  1. Dịch chương trình sang một ngôn ngữ khác hoặc sửa bản dịch hiện có. Vị trí các tập tin: %1$s;
     7:  2. Mua phiên bản Đóng góp / Pro;
     8:  3. Chia sẻ ý tưởng hoặc báo cáo sự cố;
     9:  4. Trân trọng cảm ơn tác giả bằng cách đóng góp:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Chính sách quyền riêng tư</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Điều khoản của dịch vụ</string>
```

## decoded/res/values-vi/strings.xml:103 (ads_billing_license; file score 20)

```java
    97:     <string name="FINFO_TTL_FILE_INFO">Thông tin tệp</string>
    98:     <string name="FINFO_TYPE">Loại:</string>
    99:     <string name="FINFO_TYPE_FILE_GROUP">Nhóm</string>
   100:     <string name="FINFO_TYPE_FOLDER">Thư mục</string>
   101:     <string name="FINFO_TYPE_LINK">Đường dẫn</string>
   102:     <string name="FINFO_VIDEO_INFO">Thông tin video</string>
   103:     <string name="FREE_LIMIT_HELP">Dành cho người dùng phiên bản Donate/Pro</string>
   104:     <string name="FSD_ACCESS_FILES_DENIED">Phiên bản ứng dụng Tệp không hỗ trợ cấp quyền truy cập vào thư mục.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">Zarchiver cần sự cho phép để đọc, sửa đổi và xóa các tệp để truy cập các tệp của điện thoại của bạn.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">Zarchiver cần sự cho phép để cài đặt các gói để truy cập thư mục Android / OBB.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Để ghi dữ liệu vào thẻ SD bên ngoài %1, bạn cần phải cho phép truy cập vào nó.</string>
   108:     <string name="FSD_DONT_SHOW">Không hiển thị lại</string>
   109:     <string name="FSD_INCORRECT_PATH">Đường dẫn %1 không hợp lệ!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Bạn có thể gỡ cài đặt bản cập nhật này.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Để ghi dữ liệu thành %1 bạn phải chọn một đường dẫn đế thư mục đó.</string>
```

## decoded/res/values-zh-rCN/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">主页：http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">捐赠</string>
     5:     <string name="ABT_DONATE_GENERAL">"你可提供各种帮助：
     6:  ① 翻译此应用到你本地语言或修正现有翻译。翻译语言文件：%1$s;
     7:  ② 购买 捐赠/Pro 版支持开发者;
     8:  ③ 提供建议或报告问题;
     9:  ④ 通过捐赠支持我的工作：:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">隐私政策</string>
    11:     <string name="ABT_TERM_OF_SERVICE">服务条款</string>
```

## decoded/res/values/strings.xml:3 (network; file score 20)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Homepage: http://zdevs.ru</string>
     4:     <string name="ABT_AUTHOR">© 2011–2024 Ant-ON, &lt;support@zdevs.ru></string>
     5:     <string name="ABT_DONATE">Donate</string>
     6:     <string name="ABT_DONATE_GENERAL">"You can help in various ways:
     7:  1. Translate the program to another language or fix existing translations. Localization files: %1$s;
     8:  2. Buy the Donate/Pro version;
     9:  3. Share your ideas or report problems;
    10:  4. Show your gratitude to the author by making a donation:"</string>
    11:     <string name="ABT_DONATE_PAY">YooMoney: 41001641043147</string>
```

## decoded/res/values/strings.xml:11 (ads_billing_license; file score 20)

```java
     5:     <string name="ABT_DONATE">Donate</string>
     6:     <string name="ABT_DONATE_GENERAL">"You can help in various ways:
     7:  1. Translate the program to another language or fix existing translations. Localization files: %1$s;
     8:  2. Buy the Donate/Pro version;
     9:  3. Share your ideas or report problems;
    10:  4. Show your gratitude to the author by making a donation:"</string>
    11:     <string name="ABT_DONATE_PAY">YooMoney: 41001641043147</string>
    12:     <string name="ABT_OPEN_SOURCE">Open Source</string>
    13:     <string name="ABT_OPEN_SOURCE_7ZIP">"&lt;7-Zip>
    14: 7-Zip is licensed under the GNU LGPL (version 2.1) and unRAR restriction.
    15: Site:\t\thttp://7-zip.org
    16: License:\thttp://7-zip.org/license.txt"</string>
    17:     <string name="ABT_OPEN_SOURCE_AOSP">"&lt;AOSP>
    18: Site:\thttps://source.android.com
    19: License:\tApache 2.0"</string>
```

## decoded/res/values/strings.xml:21 (network; file score 20)

```java
    15: Site:\t\thttp://7-zip.org
    16: License:\thttp://7-zip.org/license.txt"</string>
    17:     <string name="ABT_OPEN_SOURCE_AOSP">"&lt;AOSP>
    18: Site:\thttps://source.android.com
    19: License:\tApache 2.0"</string>
    20:     <string name="ABT_OPEN_SOURCE_APKPARSER">"&lt;APK Parser Lib>
    21: Site:\thttps://github.com/hsiafan/apk-parser
    22: License:\tBSD"</string>
    23:     <string name="ABT_OPEN_SOURCE_BUSYBOX">"&lt;BusyBox>
    24: Site:\thttps://busybox.net
    25: License:\tGNU GPL"</string>
    26:     <string name="ABT_OPEN_SOURCE_FREEBSD">"&lt;FreeBSD>
    27: Site:\thttps://freebsd.org
    28: License:\tBSD"</string>
    29:     <string name="ABT_OPEN_SOURCE_FREELZMA2">"&lt;Fast LZMA2 Library>
```

## decoded/res/values/strings.xml:31 (ads_billing_license; file score 20)

```java
    25: License:\tGNU GPL"</string>
    26:     <string name="ABT_OPEN_SOURCE_FREEBSD">"&lt;FreeBSD>
    27: Site:\thttps://freebsd.org
    28: License:\tBSD"</string>
    29:     <string name="ABT_OPEN_SOURCE_FREELZMA2">"&lt;Fast LZMA2 Library>
    30: Author:\tConor McCarthy
    31: License:\tBSD"</string>
    32:     <string name="ABT_OPEN_SOURCE_ICONV">"&lt;libiconv>
    33: License:\tGNU LGPL
    34: Site:\t\thttp://www.gnu.org/software/libiconv"</string>
    35:     <string name="ABT_OPEN_SOURCE_ICON_1">"&lt;Human-O2 Icons>
    36: Author:\tOliver Scholtz (and others)
    37: License:\tGNU LGPL"</string>
    38:     <string name="ABT_OPEN_SOURCE_ICON_5">"&lt;Numix icon theme>
    39: Author:\tNumix Project
```

## decoded/res/values/strings.xml:40 (ads_billing_license; file score 20)

```java
    34: Site:\t\thttp://www.gnu.org/software/libiconv"</string>
    35:     <string name="ABT_OPEN_SOURCE_ICON_1">"&lt;Human-O2 Icons>
    36: Author:\tOliver Scholtz (and others)
    37: License:\tGNU LGPL"</string>
    38:     <string name="ABT_OPEN_SOURCE_ICON_5">"&lt;Numix icon theme>
    39: Author:\tNumix Project
    40: License:\tGNU GPL
    41: Site:\t\thttp://numixproject.org"</string>
    42:     <string name="ABT_OPEN_SOURCE_LZ4">"&lt;LZ4 Library>
    43: Author:\tYann Collet
    44: License:\tBSD"</string>
    45:     <string name="ABT_OPEN_SOURCE_R2D2">"&lt;r2d2>
    46: Site:\thttps://github.com/moldedbits/r2d2
    47: License:\tApache 2.0"</string>
    48:     <string name="ABT_OPEN_SOURCE_SUBSAMPLING_IV">"&lt;Subsampling Scale Image View>
```

## decoded/res/values/strings.xml:50 (ads_billing_license; file score 20)

```java
    44: License:\tBSD"</string>
    45:     <string name="ABT_OPEN_SOURCE_R2D2">"&lt;r2d2>
    46: Site:\thttps://github.com/moldedbits/r2d2
    47: License:\tApache 2.0"</string>
    48:     <string name="ABT_OPEN_SOURCE_SUBSAMPLING_IV">"&lt;Subsampling Scale Image View>
    49: Site:\thttps://github.com/davemorrissey/subsampling-scale-image-view
    50: License:Apache 2.0"</string>
    51:     <string name="ABT_OPEN_SOURCE_TOASTCOMPAT">"&lt;ToastCompat>
    52: Site:\thttps://github.com/PureWriter/ToastCompat
    53: License:\tApache 2.0"</string>
    54:     <string name="ABT_OPEN_SOURCE_UNEGG">"&lt;UnEgg>
    55: Site:\t\thttp://www.estsoft.com
    56: License:\tUnEgg license"</string>
    57:     <string name="ABT_OPEN_SOURCE_UNRAR">"&lt;UnRAR>
    58: Author:\tAlexander Roshal
```

## decoded/res/values/strings.xml:60 (ads_billing_license; file score 20)

```java
    54:     <string name="ABT_OPEN_SOURCE_UNEGG">"&lt;UnEgg>
    55: Site:\t\thttp://www.estsoft.com
    56: License:\tUnEgg license"</string>
    57:     <string name="ABT_OPEN_SOURCE_UNRAR">"&lt;UnRAR>
    58: Author:\tAlexander Roshal
    59: Site:\t\thttp://rarlab.com
    60: License:\tUnRAR license"</string>
    61:     <string name="ABT_OPEN_SOURCE_ZSTD">"&lt;ZSTD Library>
    62: Author:\tYann Collet
    63: License:\tBSD"</string>
    64:     <string name="ABT_PRIVACY_POLICY">Privacy policy</string>
    65:     <string name="ABT_PRIVATE_POLICY_URL">http://zdevs.ru/za_privacy_policy.txt</string>
    66:     <string name="ABT_TERM_OF_SERVICE">Terms of service</string>
    67:     <string name="ABT_THANKS">Thanks</string>
    68:     <string name="ABT_TRANSLATORS">"ajibayi（اجىباي） - Kirghiz (Arabic) localization
```

## decoded/res/values/strings.xml:154 (network; file score 20)

```java
   148:     <string name="CMP_SEPARATE_ARCHIVE">Create separate archive</string>
   149:     <string name="CMP_SPLIT">Split into volumes:</string>
   150:     <string name="CMP_SPLIT_NO">No</string>
   151:     <string name="CMP_SPLIT_OVER_SIZE">Other size…</string>
   152:     <string name="CMP_TTL_COMPRESS">Create archive</string>
   153:     <string name="CMT_ARCHIVE_COOMENT">Archive comment:</string>
   154:     <string name="DNT_TRANSLATE_SERVICE_URL">https://crowdin.com/project/zarchiverfree</string>
   155:     <string name="DNT_TRANSLATE_URL">https://yadi.sk/d/NTCnBMmK3SHmt2</string>
   156:     <string name="ERROR_7Z_LIB">"Error load the p7zip library!
   157: Not found library for architecture of your phone.
   158: Try download ZArchiver application from Google Play / AppGallery!"</string>
   159:     <string name="ERROR_CRC_ERROR">Corrupt archive (CRC error)</string>
   160:     <string name="ERROR_DATA_ERROR">Data error</string>
   161:     <string name="ERROR_IS_NOT_ARCHIVE">Cannot open file as archive</string>
   162:     <string name="ERROR_NOT_ENOUGH_DISK_SPACE">Not enough disk space</string>
```

## decoded/res/values/strings.xml:213 (ads_billing_license; file score 20)

```java
   207:     <string name="FINFO_TYPE">Type:</string>
   208:     <string name="FINFO_TYPE_FILE_GROUP">Group</string>
   209:     <string name="FINFO_TYPE_FOLDER">Folder</string>
   210:     <string name="FINFO_TYPE_LINK">Link</string>
   211:     <string name="FINFO_USER_GROUP">UID/GID:</string>
   212:     <string name="FINFO_VIDEO_INFO">Video properties</string>
   213:     <string name="FREE_LIMIT_HELP">For Donate/Pro version users only</string>
   214:     <string name="FSD_ACCESS_FILES_DENIED">The File app version does not support grant access to folders.</string>
   215:     <string name="FSD_ACCESS_TO_ALL_STORAGE">"ZArchiver needs permission to read, modify, and delete files to access your phone's files."</string>
   216:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver needs permission to install packages to access the Android/OBB folder.</string>
   217:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">To write data to the external SD card %1, you must allow access to it.</string>
   218:     <string name="FSD_DONT_SHOW">Do not show again</string>
   219:     <string name="FSD_INCORRECT_PATH">Wrong path to %1 was selected!</string>
   220:     <string name="FSD_REMOVE_FILES_UPDATE">You may to uninstall this update.</string>
   221:     <string name="FSD_SELECT_PATH_TO_EXT_SD">You must choose a path to %1 to write to it.</string>
```

## decoded/res/values/public.xml:724 (ads_billing_license; file score 18)

```java
   718:     <public type="id" name="tvTitlMedia3" id="0x7f0700e3" />
   719:     <public type="id" name="tvTitlMedia4" id="0x7f0700e4" />
   720:     <public type="id" name="tvTitlMedia5" id="0x7f0700e5" />
   721:     <public type="id" name="tvUserGroup" id="0x7f0700e6" />
   722:     <public type="id" name="tv_appname" id="0x7f0700e7" />
   723:     <public type="id" name="tv_dest" id="0x7f0700e8" />
   724:     <public type="id" name="tv_donate" id="0x7f0700e9" />
   725:     <public type="id" name="tv_empty_list" id="0x7f0700ea" />
   726:     <public type="id" name="tv_enc" id="0x7f0700eb" />
   727:     <public type="id" name="tv_encrypt" id="0x7f0700ec" />
   728:     <public type="id" name="tv_format" id="0x7f0700ed" />
   729:     <public type="id" name="tv_info" id="0x7f0700ee" />
   730:     <public type="id" name="tv_level" id="0x7f0700ef" />
   731:     <public type="id" name="tv_name" id="0x7f0700f0" />
   732:     <public type="id" name="tv_password" id="0x7f0700f1" />
```

## decoded/res/values/public.xml:819 (ads_billing_license; file score 18)

```java
   813:     <public type="mipmap" name="ic_launcher_text" id="0x7f0a0003" />
   814:     <public type="plurals" name="FINFO_FILE_COUNT" id="0x7f0b0000" />
   815:     <public type="plurals" name="FINFO_FOLDER_COUNT" id="0x7f0b0001" />
   816:     <public type="plurals" name="FINFO_ITEM_COUNT" id="0x7f0b0002" />
   817:     <public type="string" name="ABT_APP_WEBSITE" id="0x7f0c0000" />
   818:     <public type="string" name="ABT_AUTHOR" id="0x7f0c0001" />
   819:     <public type="string" name="ABT_DONATE" id="0x7f0c0002" />
   820:     <public type="string" name="ABT_DONATE_GENERAL" id="0x7f0c0003" />
   821:     <public type="string" name="ABT_DONATE_PAY" id="0x7f0c0004" />
   822:     <public type="string" name="ABT_OPEN_SOURCE" id="0x7f0c0005" />
   823:     <public type="string" name="ABT_OPEN_SOURCE_7ZIP" id="0x7f0c0006" />
   824:     <public type="string" name="ABT_OPEN_SOURCE_AOSP" id="0x7f0c0007" />
   825:     <public type="string" name="ABT_OPEN_SOURCE_APKPARSER" id="0x7f0c0008" />
   826:     <public type="string" name="ABT_OPEN_SOURCE_BUSYBOX" id="0x7f0c0009" />
   827:     <public type="string" name="ABT_OPEN_SOURCE_FREEBSD" id="0x7f0c000a" />
```

## decoded/res/values/public.xml:820 (ads_billing_license; file score 18)

```java
   814:     <public type="plurals" name="FINFO_FILE_COUNT" id="0x7f0b0000" />
   815:     <public type="plurals" name="FINFO_FOLDER_COUNT" id="0x7f0b0001" />
   816:     <public type="plurals" name="FINFO_ITEM_COUNT" id="0x7f0b0002" />
   817:     <public type="string" name="ABT_APP_WEBSITE" id="0x7f0c0000" />
   818:     <public type="string" name="ABT_AUTHOR" id="0x7f0c0001" />
   819:     <public type="string" name="ABT_DONATE" id="0x7f0c0002" />
   820:     <public type="string" name="ABT_DONATE_GENERAL" id="0x7f0c0003" />
   821:     <public type="string" name="ABT_DONATE_PAY" id="0x7f0c0004" />
   822:     <public type="string" name="ABT_OPEN_SOURCE" id="0x7f0c0005" />
   823:     <public type="string" name="ABT_OPEN_SOURCE_7ZIP" id="0x7f0c0006" />
   824:     <public type="string" name="ABT_OPEN_SOURCE_AOSP" id="0x7f0c0007" />
   825:     <public type="string" name="ABT_OPEN_SOURCE_APKPARSER" id="0x7f0c0008" />
   826:     <public type="string" name="ABT_OPEN_SOURCE_BUSYBOX" id="0x7f0c0009" />
   827:     <public type="string" name="ABT_OPEN_SOURCE_FREEBSD" id="0x7f0c000a" />
   828:     <public type="string" name="ABT_OPEN_SOURCE_FREELZMA2" id="0x7f0c000b" />
```

## decoded/res/values-bg/strings.xml:3 (network; file score 15)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Уеб страница: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Допринасяне</string>
     5:     <string name="ABT_DONATE_GENERAL">"Можете да помогнете различно:
     6:  1. Преведете програмата на друг език или поправете превод. Езикови файлове: %1$s;
     7:  2. Купете Donate/Pro версията;
     8:  3. Споделете свои идеи или докладвате за проблеми;
     9:  4. Изразете благодарност към автора като направите дарение:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Политика за сигурност</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Условия за използване</string>
```

## decoded/res/values-bg/strings.xml:102 (ads_billing_license; file score 15)

```java
    96:     <string name="FINFO_TTL_FILE_INFO">Информация за файла</string>
    97:     <string name="FINFO_TYPE">Тип:</string>
    98:     <string name="FINFO_TYPE_FILE_GROUP">Група файлове</string>
    99:     <string name="FINFO_TYPE_FOLDER">Папка</string>
   100:     <string name="FINFO_TYPE_LINK">Линк</string>
   101:     <string name="FINFO_VIDEO_INFO">Видео</string>
   102:     <string name="FREE_LIMIT_HELP">Само за Donate/Pro-версии</string>
   103:     <string name="FSD_ACCESS_TO_ALL_STORAGE">За достъп до файловете на телефона предоставете на приложението необходимите разрешения за четене, модифициране и изтриване на файлове.</string>
   104:     <string name="FSD_ACCESS_TO_OBB_FOLDER">За достъп до папка Android/OBB на приложението е необходимо разрешение за инсталиране на приложения.</string>
   105:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">За запис на външна SD-карта %1 трябва разрешение за достъп.</string>
   106:     <string name="FSD_DONT_SHOW">Повече не показвай</string>
   107:     <string name="FSD_INCORRECT_PATH">Невалиден път към %1!</string>
   108:     <string name="FSD_SELECT_PATH_TO_EXT_SD">За запис на %1 трябва разрешение за достъп до корен каталога.</string>
   109:     <string name="FSD_TTL_FIX_SD">Внимание!</string>
   110:     <string name="FSD_WARNING_TEXT">Операционната система Android ограничава външни приложения (не фабрични с телефона) да записват данни на външни USB- и SD-карти.</string>
```

## decoded/res/values-da/strings.xml:3 (network; file score 15)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Hjemmeside: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Donér</string>
     5:     <string name="ABT_DONATE_GENERAL">"Man kan hjælpe på forskellig vis:
     6:  1. Oversæt appen til et andet sprog eller korrigér eksisterende oversættelser. Lokaliseringsfiler: %1$s;
     7:  2. Køb Donations-/Pro-versionen;
     8:  3. Del evt. ideer eller rapportet problemer;
     9:  4. Vis forfatteren påskønnelse via en donation:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Fortrolighedspolitik</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Tjenestevilkår</string>
```

## decoded/res/values-el/strings.xml:3 (network; file score 15)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Κεντρική σελίδα: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Δωρεά</string>
     5:     <string name="ABT_DONATE_GENERAL">"Μπορείτε να βοηθήσετε με διάφορους τρόπους:
     6:  1. Μεταφράστε το πρόγραμμα σε άλλη γλώσσα ή διορθώστε μια υπάρχουσα μετάφραση. Αρχεία μετάφρασης: %1$s;
     7:  2. Αγοράστε την Donate/Pro έκδοση;
     8:  3. Μοιραστείτε τις ιδέες σας ή αναφέρετε προβλήματα;
     9:  4. Δείξτε τη ευγνωμοσύνη σας στον δημιουργό κάνοντας μια δωρεά:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Πολιτική Απορρήτου</string>
    11:     <string name="ABT_THANKS">Ευχαριστίες</string>
```

## decoded/res/values-el/strings.xml:100 (ads_billing_license; file score 15)

```java
    94:     <string name="FINFO_TTL_FILE_INFO">Πληροφορίες αρχείου</string>
    95:     <string name="FINFO_TYPE">Τύπος:</string>
    96:     <string name="FINFO_TYPE_FILE_GROUP">Ομάδα</string>
    97:     <string name="FINFO_TYPE_FOLDER">Φάκελος</string>
    98:     <string name="FINFO_TYPE_LINK">Σύνδεση</string>
    99:     <string name="FINFO_VIDEO_INFO">Πληροφορίες βίντεο</string>
   100:     <string name="FREE_LIMIT_HELP">Για τους χρήστες της Donate/Pro έκδοσης μόνο</string>
   101:     <string name="FSD_ACCESS_TO_ALL_STORAGE">Το ZArchiver χρειάζεται άδεια ανάγνωσης, τροποποίησης και διαγραφής αρχείων, ώστε να έχει πρόσβαση στα αρχεία του τηλεφώνου σας.</string>
   102:     <string name="FSD_ACCESS_TO_OBB_FOLDER">Το ZArchiver χρειάζεται άδεια εγκατάστασης πακέτων, ώστε να έχει πρόσβαση στο φάκελο Android/OBB.</string>
   103:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Για να γράψετε δεδομένα στην εξωτερική SD κάρτα %1 πρέπει να επιτρέψετε την πρόσβαση σε αυτήν.</string>
   104:     <string name="FSD_DONT_SHOW">Να μην εμφανιστεί ξανά</string>
   105:     <string name="FSD_INCORRECT_PATH">Λάθος επιλογή διαδρομής προς την %1!</string>
   106:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Για να γράψετε δεδομένα στην %1 πρέπει να επιλέξετε τη διαδρομή προς το της φάκελο.</string>
   107:     <string name="FSD_TTL_FIX_SD">Προειδοποίηση!</string>
   108:     <string name="FSD_WARNING_TEXT">Το Android περιορίζει τρίτες εφαρμογές (μη προεγκατεστημένες στη συσκευή) από το να έχουν δικαιώματα εγγραφής σε εξωτερικά USB μνήμες ή SD κάρτες.</string>
```

## decoded/res/values-fa/strings.xml:3 (network; file score 15)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">سایت: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">اهدا</string>
     5:     <string name="ABT_DONATE_GENERAL">"شما از طریق راه های زیر می توانید کمک نمایید:
     6:  1. ترجمه برنامه به زبان های دیگر یا اصلاح ترجمه های موجود. محلی سازی فایل ها: %1$s;
     7:  2. خرید نسخه حرفه ای
     8:  3. ارسال نظرات و پیشنهادات و یا گزارش مشکلات
     9:  4. یا تشکر از طریق راه های زیر:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">شیوه‌ی رازداری</string>
    11:     <string name="ABT_TERM_OF_SERVICE">شرایط خدمات</string>
```

## decoded/res/values-fr/strings.xml:3 (network; file score 15)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Site web : http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Faire un don</string>
     5:     <string name="ABT_DONATE_GENERAL">"Vous pouvez y contribuer de différentes manières :
     6:  1. Traduire le programme dans une autre langue ou corriger les traductions existantes. Fichiers de localisation: %1$s;
     7:  2. Acheter la version Donate/Pro;
     8:  3. Partager vos idées ou signaler tout problème;
     9:  4. Montrer votre gratitude à l'auteur en faisant un don :"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Politique de confidentialité</string>
    11:     <string name="ABT_TERM_OF_SERVICE">"Conditions d'utilisation"</string>
```

## decoded/res/values-fr/strings.xml:92 (ads_billing_license; file score 15)

```java
    86:     <string name="FINFO_TTL_FILE_INFO">Informations</string>
    87:     <string name="FINFO_TYPE">Type :</string>
    88:     <string name="FINFO_TYPE_FILE_GROUP">Groupe</string>
    89:     <string name="FINFO_TYPE_FOLDER">Dossier</string>
    90:     <string name="FINFO_TYPE_LINK">Lien</string>
    91:     <string name="FINFO_VIDEO_INFO">Informations vidéo</string>
    92:     <string name="FREE_LIMIT_HELP">Pour les utilisateurs de la version Donate/Pro uniquement</string>
    93:     <string name="FSD_ACCESS_TO_ALL_STORAGE">"ZArchiver a besoin d'une autorisation pour lire, modifier et supprimer des fichiers afin d'accèder aux fichiers de votre tèlèphone."</string>
    94:     <string name="FSD_ACCESS_TO_OBB_FOLDER">"ZArchiver a besoin de la permission d'installer des paquets pour accèder au dossier Android/OBB."</string>
    95:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">"Pour écrire des données sur la carte SD externe %1 vous devez autoriser l'accés."</string>
    96:     <string name="FSD_DONT_SHOW">Ne pas montrer a nouveau</string>
    97:     <string name="FSD_INCORRECT_PATH">Chemin de sélection incorrecte vers %1!</string>
    98:     <string name="FSD_SELECT_PATH_TO_EXT_SD">"Pour écrire des données sur %1, vous devez choisir un chemin d'accés a son répertoire racine."</string>
    99:     <string name="FSD_TTL_FIX_SD">Avertissement!</string>
   100:     <string name="FSD_WARNING_TEXT">"Android OS limite les applications 3rd party (non pré-installé sur l'appareil) pour accéder a la mémoire flash USB externe ou en fonction de l'écriture de la carte SD."</string>
```

## decoded/res/values-ky/strings.xml:3 (network; file score 15)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">باش بەت：http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">جاسووچۇ</string>
     5:     <string name="ABT_DONATE_GENERAL">"سىز تۅمۅندۅكۉدۅي جاردام بەرەسىز：
     6:  ① ۅز تئلىڭىزگە قوتورموقچۇ بولسوڭۇز جەە قوتورۇپ بولعون تئلدى وڭشوموقچۇ بولسوڭۇز، قوتورۇلاتۇرعان ۅجۅت: %1$s;
     7:  ② ساتىپ الساڭىز قوشۇپ/Pro نۇسقاسى پىروگىراممىرلاردى قولدويت
     8:  ③ پىكىر-تالابىڭىزدى قالتىرىڭ
     9:  ④ پىكىر-تالابىڭىزدى قالتىرىپ مەنىن قىزماتىمدى قولدوپ قويۇڭ："</string>
    10:     <string name="ABT_THANKS">ىراقمات</string>
    11:     <string name="ABT_TTL_ABOUT">جۅنۉندۅ</string>
```

## decoded/res/values-ug/strings.xml:3 (network; file score 15)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">باش بەت : http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">تەقدىم قىلىش</string>
     5:     <string name="ABT_DONATE_GENERAL">"سىز ھەرخىل ھازىرلىقلارغا ياردەملىشىڭ :
     6:  ① مەزكۇر ئەپكە سىزمۇ ئانا تىلىڭىزنى تەرجىمە قىلىپ بىزگە ئەۋەتىپ بېرىپ ئەپنى ئانا تىلىڭىزدا ئىشلىتىڭ ياكى سىزنىڭ تىلىڭىز تەرجىمە قىلىنىپ بولغان بولسا ۋە بەزى سۆزلۈكلەر كەم قالغان بولسا كەم قالغان سۆزلۈكلەرنى بىزگە ئەۋەتىپ بېرىش ئارقىلىق تەرجىمە نىسبىتىنى يۇقىرى كۆتۈرۈڭ تۆۋەندىكى تور ئادرېسىدىن تىل ھۆججىتىنى چۈشۈرۈڭ ：%1$s
     7:  ‏② / Pro نۇسخىسىنى سېتىۋېلىپ ئىشلەتكەن ئابونتلارنى قوللايمىز
     8:  ③ تەكلىپ بېرىڭ ياكى كۆرۈلگەن مەسىلىنى دوكلات قىلىڭ
     9:  ④ بىزنىڭ خىزمەتلىرىمىزگە تەكلىپ بېرىشىڭىزنى قارشى ئالىمىز："</string>
    10:     <string name="ABT_THANKS">تۆھپە قوشقۇچىلار</string>
    11:     <string name="ABT_TTL_ABOUT">ھەققىدە</string>
```

## decoded/res/values-uk/strings.xml:3 (network; file score 15)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Домашня сторінка: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Допомогти проекту</string>
     5:     <string name="ABT_DONATE_GENERAL">"Допомогти проекту можна різними способами:
     6:  1. Перекласти додаток на іншу мову або виправити існуючий переклад. Файли для перекладу: %1$s;
     7:  2. Купити Donate/Pro версію;
     8:  3. Висловити свої ідеї або описати недолікиs;
     9:  4. Ви можете подякувати автору додатка, наступними способами:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Політика конфіденційності</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Умови використання</string>
```

## decoded/res/values-uk/strings.xml:103 (ads_billing_license; file score 15)

```java
    97:     <string name="FINFO_TTL_FILE_INFO">Інформація про файл</string>
    98:     <string name="FINFO_TYPE">Тип:</string>
    99:     <string name="FINFO_TYPE_FILE_GROUP">Група файлів</string>
   100:     <string name="FINFO_TYPE_FOLDER">Тека</string>
   101:     <string name="FINFO_TYPE_LINK">Посилання</string>
   102:     <string name="FINFO_VIDEO_INFO">Відео</string>
   103:     <string name="FREE_LIMIT_HELP">Тільки для користувачів Donate/Pro версії</string>
   104:     <string name="FSD_ACCESS_TO_ALL_STORAGE">Для доступу до файлів телефону додатку необхідні дозволи на перегляд, модифікацію і видалення файлів.</string>
   105:     <string name="FSD_ACCESS_TO_OBB_FOLDER">Для доступу до папки Android/OBB додатку необхідний дозвіл на встановлення додатків.</string>
   106:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Для можливості запису даних на зовнішню SD-карту %1 необхідно дозволити доступ до неї.</string>
   107:     <string name="FSD_DONT_SHOW">Більше не показувати це повідомлення</string>
   108:     <string name="FSD_INCORRECT_PATH">Неправильно вибрано шлях в %1!</string>
   109:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Для запису даних в %1 необхідно вибрати шлях до його каталогу.</string>
   110:     <string name="FSD_TTL_FIX_SD">Увага!</string>
   111:     <string name="FSD_WARNING_TEXT">Операційна система Android обмежує сторонні додатки (ті додатки, які не були встановлені виробником) в записі даних на зовнішні USB- та SD-карти.</string>
```

## decoded/res/values-uz/strings.xml:3 (network; file score 15)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">Veb sayt: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">Hissa qoʻshmoq</string>
     5:     <string name="ABT_DONATE_GENERAL">"Ilovani rivojiga quyidagicha yordam koʻrsatish mumkin:
     6:  1. Ilovani boshqa tillarga tarjima qilish yoki mavjudlarini tahrirlash. Tarjima uchun fayllar: %1$s;
     7:  2. Donate/Pro-versiyani xarid qilish;
     8:  3. Oʻz gʻoyalaringiz hamda kamchilik borasida murojaat yoʻllash;
     9:  4. Ilova muallifiga quyidagi tarzda moddiy yordam berish ham mumkin:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">Maxfiylik siyosati</string>
    11:     <string name="ABT_TERM_OF_SERVICE">Xizmat shartlari</string>
```

## decoded/res/values-zh-rTW/strings.xml:3 (network; file score 15)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <resources>
     3:     <string name="ABT_APP_WEBSITE">首頁: http://zdevs.ru</string>
     4:     <string name="ABT_DONATE">捐赠</string>
     5:     <string name="ABT_DONATE_GENERAL">"你可以用以下方式提供幫助:
     6:  1. 將本軟體翻譯為另一種語言或修復錯誤的翻譯. 相關檔案下載: %1$s;
     7:  2. 購買捐贈/專業版;
     8:  3. 分享你的想法或反映問題;
     9:  4. 你也可以捐赠:"</string>
    10:     <string name="ABT_PRIVACY_POLICY">私隱權政策</string>
    11:     <string name="ABT_TERM_OF_SERVICE">服務條款</string>
```

## decoded/smali/ru/zdevs/zarchiver/activity/AboutDlg.smali:1099 (network; file score 12)

```java
  1093:     .line 274
  1094:     .line 275
  1095:     const-string v1, "android.intent.extra.TEXT"
  1096: 
  1097:     .line 276
  1098:     .line 277
  1099:     const-string v3, "ZArchiver is fast and simple archive and file manager. Get it on https://play.google.com/store/apps/details?id=ru.zdevs.zarchiver"
  1100: 
  1101:     .line 278
  1102:     .line 279
  1103:     invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  1104: 
  1105:     .line 280
  1106:     .line 281
  1107:     .line 282
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:1 (ads_billing_license; file score 8)

```java
     1: .class public Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;
     2: .super Ljava/lang/Object;
     3: .source "SourceFile"
     4: 
     5: # interfaces
     6: .implements Lh/d;
     7: 
     8: 
     9: # annotations
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:12 (ads_billing_license; file score 8)

```java
     6: .implements Lh/d;
     7: 
     8: 
     9: # annotations
    10: .annotation system Ldalvik/annotation/MemberClasses;
    11:     value = {
    12:         Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;
    13:     }
    14: .end annotation
    15: 
    16: 
    17: # instance fields
    18: .field public a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;
    19: 
    20: .field public final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:45 (ads_billing_license; file score 8)

```java
    39:     .line 1
    40:     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    41: 
    42:     .line 2
    43:     .line 3
    44:     .line 4
    45:     new-instance v0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;
    46: 
    47:     .line 5
    48:     .line 6
    49:     invoke-direct {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;-><init>()V
    50: 
    51:     .line 7
    52:     .line 8
    53:     .line 9
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:54 (ads_billing_license; file score 8)

```java
    48:     .line 6
    49:     invoke-direct {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;-><init>()V
    50: 
    51:     .line 7
    52:     .line 8
    53:     .line 9
    54:     iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;
    55: 
    56:     .line 10
    57:     .line 11
    58:     new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    59: 
    60:     .line 12
    61:     .line 13
    62:     const/4 v1, 0x1
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:70 (ads_billing_license; file score 8)

```java
    64:     .line 14
    65:     invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V
    66: 
    67:     .line 15
    68:     .line 16
    69:     .line 17
    70:     iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    71: 
    72:     .line 18
    73:     .line 19
    74:     const-wide v0, 0x7fffffffffffffffL
    75: 
    76:     .line 20
    77:     .line 21
    78:     .line 22
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:81 (ads_billing_license; file score 8)

```java
    75: 
    76:     .line 20
    77:     .line 21
    78:     .line 22
    79:     .line 23
    80:     .line 24
    81:     iput-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->f:J
    82: 
    83:     .line 25
    84:     .line 26
    85:     new-instance v0, Landroid/graphics/Point;
    86: 
    87:     .line 27
    88:     .line 28
    89:     const/4 v1, 0x0
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:97 (ads_billing_license; file score 8)

```java
    91:     .line 29
    92:     invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V
    93: 
    94:     .line 30
    95:     .line 31
    96:     .line 32
    97:     iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->g:Landroid/graphics/Point;
    98: 
    99:     .line 33
   100:     .line 34
   101:     new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
   102: 
   103:     .line 35
   104:     .line 36
   105:     invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:110 (ads_billing_license; file score 8)

```java
   104:     .line 36
   105:     invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
   106: 
   107:     .line 37
   108:     .line 38
   109:     .line 39
   110:     iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->h:Ljava/util/concurrent/atomic/AtomicBoolean;
   111: 
   112:     .line 40
   113:     .line 41
   114:     invoke-static {}, Lg/d;->getPreferredBitmapConfig()Landroid/graphics/Bitmap$Config;
   115: 
   116:     .line 42
   117:     .line 43
   118:     .line 44
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:126 (ads_billing_license; file score 8)

```java
   120: 
   121:     .line 45
   122:     if-eqz v0, :cond_0
   123: 
   124:     .line 46
   125:     .line 47
   126:     iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->c:Landroid/graphics/Bitmap$Config;
   127: 
   128:     .line 48
   129:     .line 49
   130:     goto :goto_0
   131: 
   132:     .line 50
   133:     :cond_0
   134:     sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:138 (ads_billing_license; file score 8)

```java
   132:     .line 50
   133:     :cond_0
   134:     sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
   135: 
   136:     .line 51
   137:     .line 52
   138:     iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->c:Landroid/graphics/Bitmap$Config;
   139: 
   140:     .line 53
   141:     .line 54
   142:     :goto_0
   143:     return-void
   144: .end method
   145: 
   146: 
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:156 (ads_billing_license; file score 8)

```java
   150: 
   151:     .line 1
   152:     monitor-enter p0
   153: 
   154:     .line 2
   155:     :try_start_0
   156:     iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
   157: 
   158:     .line 3
   159:     .line 4
   160:     invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;
   161: 
   162:     .line 5
   163:     .line 6
   164:     .line 7
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:176 (ads_billing_license; file score 8)

```java
   170:     .catchall {:try_start_0 .. :try_end_0} :catchall_1
   171: 
   172:     .line 9
   173:     .line 10
   174:     .line 11
   175:     :try_start_1
   176:     iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;
   177: 
   178:     .line 12
   179:     .line 13
   180:     if-eqz v0, :cond_0
   181: 
   182:     .line 14
   183:     .line 15
   184:     invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->a(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;)V
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:184 (ads_billing_license; file score 8)

```java
   178:     .line 12
   179:     .line 13
   180:     if-eqz v0, :cond_0
   181: 
   182:     .line 14
   183:     .line 15
   184:     invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->a(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;)V
   185: 
   186:     .line 16
   187:     .line 17
   188:     .line 18
   189:     const/4 v0, 0x0
   190: 
   191:     .line 19
   192:     iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:192 (ads_billing_license; file score 8)

```java
   186:     .line 16
   187:     .line 17
   188:     .line 18
   189:     const/4 v0, 0x0
   190: 
   191:     .line 19
   192:     iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;
   193: 
   194:     .line 20
   195:     .line 21
   196:     iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->d:Landroid/content/Context;
   197: 
   198:     .line 22
   199:     .line 23
   200:     iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e:Lg/a;
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:200 (ads_billing_license; file score 8)

```java
   194:     .line 20
   195:     .line 21
   196:     iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->d:Landroid/content/Context;
   197: 
   198:     .line 22
   199:     .line 23
   200:     iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e:Lg/a;
   201:     :try_end_1
   202:     .catchall {:try_start_1 .. :try_end_1} :catchall_0
   203: 
   204:     .line 24
   205:     .line 25
   206:     :cond_0
   207:     :try_start_2
   208:     iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:238 (ads_billing_license; file score 8)

```java
   232:     .line 36
   233:     :catchall_0
   234:     move-exception v0
   235: 
   236:     .line 37
   237:     :try_start_3
   238:     iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
   239: 
   240:     .line 38
   241:     .line 39
   242:     invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;
   243: 
   244:     .line 40
   245:     .line 41
   246:     .line 42
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:278 (ads_billing_license; file score 8)

```java
   272: 
   273:     .line 1
   274:     monitor-enter p0
   275: 
   276:     .line 2
   277:     :try_start_0
   278:     iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;
   279: 
   280:     .line 3
   281:     .line 4
   282:     if-eqz v0, :cond_0
   283: 
   284:     .line 5
   285:     .line 6
   286:     invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->c(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;)Z
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:286 (ads_billing_license; file score 8)

```java
   280:     .line 3
   281:     .line 4
   282:     if-eqz v0, :cond_0
   283: 
   284:     .line 5
   285:     .line 6
   286:     invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->c(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;)Z
   287: 
   288:     .line 7
   289:     .line 8
   290:     .line 9
   291:     move-result v0
   292:     :try_end_0
   293:     .catchall {:try_start_0 .. :try_end_0} :catchall_0
   294: 
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:357 (ads_billing_license; file score 8)

```java
   351:     .line 12
   352:     .line 13
   353:     .line 14
   354:     move-result v0
   355: 
   356:     .line 15
   357:     iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->g:Landroid/graphics/Point;
   358: 
   359:     .line 16
   360:     .line 17
   361:     iget v2, v1, Landroid/graphics/Point;->x:I
   362: 
   363:     .line 18
   364:     .line 19
   365:     if-lt v0, v2, :cond_0
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:386 (ads_billing_license; file score 8)

```java
   380:     .line 27
   381:     if-ge v0, v1, :cond_1
   382: 
   383:     .line 28
   384:     .line 29
   385:     :cond_0
   386:     iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->h:Ljava/util/concurrent/atomic/AtomicBoolean;
   387: 
   388:     .line 30
   389:     .line 31
   390:     const/4 v1, 0x0
   391: 
   392:     .line 32
   393:     const/4 v2, 0x1
   394: 
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:408 (ads_billing_license; file score 8)

```java
   402: 
   403:     .line 37
   404:     if-eqz v0, :cond_1
   405: 
   406:     .line 38
   407:     .line 39
   408:     iget-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->f:J
   409: 
   410:     .line 40
   411:     .line 41
   412:     const-wide v2, 0x7fffffffffffffffL
   413: 
   414:     .line 42
   415:     .line 43
   416:     .line 44
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:431 (ads_billing_license; file score 8)

```java
   425:     .line 49
   426:     .line 50
   427:     new-instance v0, Lcom/davemorrissey/labs/subscaleview/decoder/a;
   428: 
   429:     .line 51
   430:     .line 52
   431:     invoke-direct {v0, p0}, Lcom/davemorrissey/labs/subscaleview/decoder/a;-><init>(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;)V
   432: 
   433:     .line 53
   434:     .line 54
   435:     .line 55
   436:     invoke-virtual {v0}, Ljava/lang/Thread;->start()V
   437: 
   438:     .line 56
   439:     .line 57
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:442 (ads_billing_license; file score 8)

```java
   436:     invoke-virtual {v0}, Ljava/lang/Thread;->start()V
   437: 
   438:     .line 56
   439:     .line 57
   440:     .line 58
   441:     :cond_1
   442:     iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
   443: 
   444:     .line 59
   445:     .line 60
   446:     invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;
   447: 
   448:     .line 61
   449:     .line 62
   450:     .line 63
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:460 (ads_billing_license; file score 8)

```java
   454:     invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
   455: 
   456:     .line 65
   457:     .line 66
   458:     .line 67
   459:     :try_start_0
   460:     iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;
   461: 
   462:     .line 68
   463:     .line 69
   464:     if-eqz v1, :cond_4
   465: 
   466:     .line 70
   467:     .line 71
   468:     invoke-virtual {v1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->d()Landroid/graphics/BitmapRegionDecoder;
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:508 (ads_billing_license; file score 8)

```java
   502:     .line 87
   503:     .line 88
   504:     iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
   505: 
   506:     .line 89
   507:     .line 90
   508:     iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->c:Landroid/graphics/Bitmap$Config;
   509: 
   510:     .line 91
   511:     .line 92
   512:     iput-object p1, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
   513: 
   514:     .line 93
   515:     .line 94
   516:     invoke-virtual {v1, p2, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:531 (ads_billing_license; file score 8)

```java
   525:     .line 98
   526:     if-eqz p1, :cond_2
   527: 
   528:     .line 99
   529:     .line 100
   530:     :try_start_2
   531:     iget-object p2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;
   532: 
   533:     .line 101
   534:     .line 102
   535:     invoke-static {p2, v1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->b(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;Landroid/graphics/BitmapRegionDecoder;)V
   536:     :try_end_2
   537:     .catchall {:try_start_2 .. :try_end_2} :catchall_1
   538: 
   539:     .line 103
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:583 (ads_billing_license; file score 8)

```java
   577:     .line 121
   578:     :catchall_0
   579:     move-exception p1
   580: 
   581:     .line 122
   582:     :try_start_4
   583:     iget-object p2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;
   584: 
   585:     .line 123
   586:     .line 124
   587:     invoke-static {p2, v1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->b(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;Landroid/graphics/BitmapRegionDecoder;)V
   588: 
   589:     .line 125
   590:     .line 126
   591:     .line 127
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:600 (ads_billing_license; file score 8)

```java
   594:     .line 128
   595:     :cond_3
   596:     if-eqz v1, :cond_4
   597: 
   598:     .line 129
   599:     .line 130
   600:     iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;
   601: 
   602:     .line 131
   603:     .line 132
   604:     invoke-static {p1, v1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->b(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;Landroid/graphics/BitmapRegionDecoder;)V
   605: 
   606:     .line 133
   607:     .line 134
   608:     .line 135
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:652 (ads_billing_license; file score 8)

```java
   646: .end method
   647: 
   648: .method public final d(Landroid/content/Context;Lg/a;)Landroid/graphics/Point;
   649:     .locals 0
   650: 
   651:     .line 1
   652:     iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->d:Landroid/content/Context;
   653: 
   654:     .line 2
   655:     .line 3
   656:     iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e:Lg/a;
   657: 
   658:     .line 4
   659:     .line 5
   660:     invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e()V
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:660 (ads_billing_license; file score 8)

```java
   654:     .line 2
   655:     .line 3
   656:     iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e:Lg/a;
   657: 
   658:     .line 4
   659:     .line 5
   660:     invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e()V
   661: 
   662:     .line 6
   663:     .line 7
   664:     .line 8
   665:     iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->g:Landroid/graphics/Point;
   666: 
   667:     .line 9
   668:     .line 10
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:676 (ads_billing_license; file score 8)

```java
   670: .end method
   671: 
   672: .method public final e()V
   673:     .locals 7
   674: 
   675:     .line 1
   676:     iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e:Lg/a;
   677: 
   678:     .line 2
   679:     .line 3
   680:     iget-object v1, v0, Lg/a;->d:Ljava/lang/String;
   681: 
   682:     .line 4
   683:     .line 5
   684:     if-nez v1, :cond_7
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:719 (ads_billing_license; file score 8)

```java
   713:     .line 21
   714:     :try_start_0
   715:     new-instance v1, Ljava/io/File;
   716: 
   717:     .line 22
   718:     .line 23
   719:     iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e:Lg/a;
   720: 
   721:     .line 24
   722:     .line 25
   723:     iget-object v2, v2, Lg/a;->b:Ljava/lang/String;
   724: 
   725:     .line 26
   726:     .line 27
   727:     invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
```

## decoded/smali/com/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder.smali:815 (ads_billing_license; file score 8)

```java
   809:     .line 67
   810:     .line 68
   811:     .line 69
   812:     move-result-object v0
   813: 
   814:     .line 70
   815:     iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e:Lg/a;
   816: 
   817:     .line 71
   818:     .line 72
   819:     iget-wide v3, v1, Lg/a;->e:J
   820: 
   821:     .line 73
   822:     .line 74
   823:     goto :goto_1
```

Snippets shown: 100. Complete bounded hit indexes are in the corresponding TSV files.