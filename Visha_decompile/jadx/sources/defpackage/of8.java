package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.Log;
import com.transsion.utils.deviceinfo.a;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public abstract class of8 {
    public static final Map a;

    static {
        HashMap map = new HashMap();
        map.put("ar", "ar");
        map.put("bg", "bul");
        map.put("cs", "cs");
        map.put("de", "de");
        map.put("efi", "efi_NG");
        map.put("el", "el");
        map.put("en", "en");
        map.put("es", "es");
        map.put("fr", "fr");
        map.put("guz", "guz_KE");
        map.put("hi", "hi");
        map.put("hu", "hu");
        map.put("ibb", "ibb_NG");
        map.put("ig", "ig");
        map.put("it", "it");
        map.put("kam", "kam_KE");
        map.put("ki", "ki_KE");
        map.put("ky", "ru");
        map.put("luo", "luo_KE");
        map.put("mer", "mer_KE");
        map.put("mn", "mn");
        map.put("nl", "nl");
        map.put("pcm", "pcm_NG");
        map.put("pl", "pl");
        map.put("pt", "pt");
        map.put("ro", "ro");
        map.put("ru", "ru");
        map.put("sk", "svk");
        map.put("sl", "sl");
        map.put("sv", "sv");
        map.put("tg", "tg");
        map.put("tk", "tk");
        map.put("yo", "yo");
        a = Collections.unmodifiableMap(map);
    }

    public static String a(int i, boolean z, Locale locale, String str) {
        return d(i, z, l(locale, z, i), true, str);
    }

    public static String b(Context context) {
        Locale localeJ = j(context);
        int i = i(context);
        boolean z = pp3.c;
        String strA = a(i, z, localeJ, h());
        e(localeJ, i, z, true, strA);
        return strA;
    }

    public static String c(String str, String str2) {
        if (str2 == null || str2.isEmpty()) {
            return str;
        }
        return str + "?brand=" + m(str2);
    }

    public static String d(int i, boolean z, String str, boolean z2, String str2) {
        if (str == null || str.isEmpty()) {
            str = "en";
        }
        return c((i == 0 ? "https://test-cdn-visha.vishavideo.com" : "https://visha-cdn.shalltry.com") + (z ? "/v2" : "") + "/language/" + str + "/" + (z2 ? "agreement.html" : "privacy-policy.html"), str2);
    }

    public static void e(Locale locale, int i, boolean z, boolean z2, String str) {
        String language = locale != null ? locale.getLanguage() : "null";
        String country = locale != null ? locale.getCountry() : "";
        String strL = l(locale, z, i);
        StringBuilder sb = new StringBuilder();
        sb.append("lang=");
        sb.append(language);
        sb.append(", country=");
        sb.append(country);
        sb.append(", pathSeg=");
        sb.append(strL);
        sb.append(", envMode=");
        sb.append(i);
        sb.append(", pre=");
        sb.append(z);
        sb.append(", type=");
        sb.append(z2 ? "agreement" : "privacy");
        sb.append(", url=");
        sb.append(str);
        Log.i("PrivacyAgreementUrlBuilder", sb.toString());
    }

    public static String f(int i, boolean z, Locale locale, String str) {
        return d(i, z, l(locale, z, i), false, str);
    }

    public static String g(Context context) {
        Locale localeJ = j(context);
        int i = i(context);
        boolean z = pp3.c;
        String strF = f(i, z, localeJ, h());
        e(localeJ, i, z, false, strF);
        return strF;
    }

    public static String h() {
        String strF = a.k().f();
        return strF != null ? strF : "";
    }

    public static int i(Context context) {
        return k(ge.e(), w6c.d(context, "environment_mode", 0));
    }

    public static Locale j(Context context) {
        Configuration configuration;
        Locale locale;
        Resources resources = context.getResources();
        return (resources == null || (configuration = resources.getConfiguration()) == null || (locale = configuration.getLocales().get(0)) == null) ? Locale.getDefault() : locale;
    }

    public static int k(boolean z, int i) {
        if (z) {
            return i;
        }
        return 1;
    }

    public static String l(Locale locale, boolean z, int i) {
        String language;
        if (locale != null && (language = locale.getLanguage()) != null && !language.isEmpty()) {
            Locale locale2 = Locale.US;
            String lowerCase = language.toLowerCase(locale2);
            String country = locale.getCountry();
            if ("zh".equals(lowerCase)) {
                return (i == 0 || z) ? "zh_CN" : "en";
            }
            if (country != null && !country.isEmpty()) {
                String str = (String) a.get(lowerCase + "_" + country.toUpperCase(locale2));
                if (str != null) {
                    return str;
                }
            }
            String str2 = (String) a.get(lowerCase);
            if (str2 != null) {
                return str2;
            }
        }
        return "en";
    }

    public static String m(String str) {
        try {
            return URLEncoder.encode(str, StandardCharsets.UTF_8.name());
        } catch (UnsupportedEncodingException unused) {
            return str;
        }
    }
}
