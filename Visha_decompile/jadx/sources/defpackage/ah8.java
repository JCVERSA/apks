package defpackage;

import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.b;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.utils.deviceinfo.a;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public abstract class ah8 {
    public static boolean a = false;
    public static final String b = "https://api.vishavideo.com";
    public static String c = "";
    public static String d = "";
    public static String e = "";
    public static String f = "";
    public static String g = "";
    public static String h = "";
    public static String i = "";
    public static String j = "";

    public static String a() {
        StringBuilder sb = new StringBuilder();
        String strJ = a.j();
        if (TextUtils.isEmpty(strJ)) {
            strJ = "";
        }
        sb.append(strJ);
        sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        String strF = AthenaAnalytics.F(Utils.a());
        sb.append(TextUtils.isEmpty(strF) ? "" : strF);
        sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        sb.append(i);
        return sb.toString();
    }

    public static String b() {
        StringBuilder sb = new StringBuilder("visha ");
        if (a) {
            sb.append("test");
        } else {
            sb.append(b.d());
        }
        return sb.toString();
    }
}
