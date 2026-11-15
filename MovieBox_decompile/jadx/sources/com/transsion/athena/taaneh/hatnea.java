package com.transsion.athena.taaneh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Method;

public class hatnea {

    private static String f41687a = "";

    private static String f41688b = "";

    @SuppressLint({"PrivateApi"})
    public static String a() {
        if (TextUtils.isEmpty(f41687a)) {
            try {
                Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class);
                String str = (String) method.invoke(null, "ro.tranos.version", "");
                f41687a = str;
                if (TextUtils.isEmpty(str)) {
                    f41687a = (String) method.invoke(null, "ro.os_product.version", "");
                }
            } catch (Exception e10) {
                aethna.b(e10.getMessage());
            }
        }
        return f41687a;
    }

    public static String a(Context context) {
        if (!TextUtils.isEmpty(f41688b)) {
            return f41688b;
        }
        try {
            String string = Settings.Global.getString(context.getContentResolver(), "os_small_version");
            f41688b = string;
            return string;
        } catch (Exception e10) {
            aethna.b(Log.getStackTraceString(e10));
            return "";
        }
    }
}
