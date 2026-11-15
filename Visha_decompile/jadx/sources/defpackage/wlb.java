package defpackage;

import android.os.LocaleList;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.core.log.ObjectLogUtils;
import java.util.Locale;

public abstract class wlb {
    public static ObjectLogUtils a = new ObjectLogUtils.a().p("NetworkMonitor").q(true).n(false).m();

    public static String a() {
        String str;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str = (String) cls.getMethod("get", String.class, String.class).invoke(cls, "persist.sys.oobe_country", "unknown");
        } catch (Exception e) {
            a.g(Log.getStackTraceString(e));
            str = "";
        }
        return (TextUtils.isEmpty(str) || "unknown".equals(str)) ? b().getCountry() : str;
    }

    public static Locale b() {
        try {
            return LocaleList.getDefault().get(0);
        } catch (Exception e) {
            Locale locale = Locale.getDefault();
            a.g(Log.getStackTraceString(e));
            return locale;
        }
    }
}
