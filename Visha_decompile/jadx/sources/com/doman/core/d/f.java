package com.doman.core.d;

import android.provider.Settings;
import android.text.TextUtils;
import com.doman.core.CoreMain;

public final class f {
    private static String a = "ELOG";

    public static boolean a() {
        try {
            if (b()) {
                com.doman.core.webview.c.b(com.doman.core.webview.c.e, "usb is connect ");
                return false;
            }
            if (!c()) {
                return true;
            }
            com.doman.core.webview.c.b(com.doman.core.webview.c.d, "proxy is connect ");
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean b() {
        try {
            return Settings.Secure.getInt(CoreMain.getInstance().getContext().getContentResolver(), "adb_enabled", 0) > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean c() {
        try {
            String property = System.getProperty("http.proxyHost");
            String property2 = System.getProperty("http.proxyPort");
            if (property2 == null) {
                property2 = "-1";
            }
            return (TextUtils.isEmpty(property) || Integer.parseInt(property2) == -1) ? false : true;
        } catch (Exception unused) {
            return false;
        }
    }
}
