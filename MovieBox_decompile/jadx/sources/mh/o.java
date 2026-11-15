package mh;

import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.core.log.ObjectLogUtils;
import java.util.Locale;

public class o {

    public static ObjectLogUtils f66480a = new ObjectLogUtils.a().p("NetworkMonitor").q(true).n(false).m();

    public static String a() {
        String str;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str = (String) cls.getMethod("get", String.class, String.class).invoke(cls, "persist.sys.oobe_country", TmcConstants.ROUTE_UNKNOWN);
        } catch (Exception e10) {
            f66480a.g(Log.getStackTraceString(e10));
            str = "";
        }
        return (TextUtils.isEmpty(str) || TmcConstants.ROUTE_UNKNOWN.equals(str)) ? b().getCountry() : str;
    }

    private static Locale b() {
        try {
            return Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault();
        } catch (Exception e10) {
            Locale locale = Locale.getDefault();
            f66480a.g(Log.getStackTraceString(e10));
            return locale;
        }
    }
}
