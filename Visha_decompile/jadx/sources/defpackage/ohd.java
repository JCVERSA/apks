package defpackage;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Method;

public abstract class ohd {
    public static String a = "";
    public static String b = "";

    public static String a() {
        if (TextUtils.isEmpty(a)) {
            try {
                Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class);
                String str = (String) method.invoke(null, "ro.tranos.version", "");
                a = str;
                if (TextUtils.isEmpty(str)) {
                    a = (String) method.invoke(null, "ro.os_product.version", "");
                }
            } catch (Exception e) {
                c4d.d(e.getMessage());
            }
        }
        return a;
    }

    public static String b(Context context) {
        if (!TextUtils.isEmpty(b)) {
            return b;
        }
        try {
            String string = Settings.Global.getString(context.getContentResolver(), "os_small_version");
            b = string;
            return string;
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            return "";
        }
    }
}
