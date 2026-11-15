package defpackage;

import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.mgtv.easydatasource.flowreporter.BuildConfig;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import java.util.Locale;

public abstract class mjb {
    public static String a = "";
    public static String b = "";

    public static String a() {
        try {
            return (!ul4.i() || System.currentTimeMillis() - ul4.c() < 5000) ? "" : WebSettings.getDefaultUserAgent(ul4.a());
        } catch (Throwable th) {
            ja1.Log().e("createNewUserAgent is error , error infor is :=" + th.getMessage());
            return "";
        }
    }

    public static String b() {
        Locale locale = Locale.getDefault();
        StringBuffer stringBuffer = new StringBuffer();
        String strReplace = Build.VERSION.RELEASE.replace(ProcessInfo.SPLIT_NEW_VERSION, "");
        if (strReplace.length() > 0) {
            stringBuffer.append(strReplace);
        } else {
            stringBuffer.append(BuildConfig.VERSION_NAME);
        }
        stringBuffer.append("; ");
        String language = locale.getLanguage();
        if (language != null) {
            stringBuffer.append(language.toLowerCase());
            String country = locale.getCountry();
            if (country != null) {
                stringBuffer.append("-");
                stringBuffer.append(country.toLowerCase());
            }
        } else {
            stringBuffer.append("en");
        }
        if ("REL".equals(Build.VERSION.CODENAME)) {
            String str = Build.MODEL;
            if (str.length() > 0) {
                stringBuffer.append("; ");
                stringBuffer.append(str);
            }
        }
        String str2 = Build.ID;
        if (str2.length() > 0) {
            stringBuffer.append(" Build/");
            stringBuffer.append(str2);
        }
        return String.format("Mozilla/5.0 (Linux; Android %s;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/55.0.2883.91 Mobile Safari/537.36", stringBuffer);
    }

    public static String c() {
        try {
            if (d(a)) {
                return a;
            }
            String strJ = o9.e().j("user_agent");
            a = strJ;
            if (d(strJ)) {
                return a;
            }
            String strA = a();
            a = strA;
            if (d(strA)) {
                o9.e().r("user_agent", a);
                return a;
            }
            if (TextUtils.isEmpty(b)) {
                b = b();
            }
            return d(b) ? b : "";
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean d(String str) {
        return (TextUtils.isEmpty(str) || str.length() <= 10 || str.contains("windows NT") || str.contains("Macintosh") || str.contains("Dalvik")) ? false : true;
    }
}
