package com.yandex.mobile.ads.impl;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import java.net.UnknownHostException;

public final class et0 {
    private static final Object a = new Object();

    private static String a(String str, @Nullable Throwable th) {
        String strReplace;
        synchronized (a) {
            try {
                if (th != null) {
                    Throwable cause = th;
                    while (true) {
                        if (cause == null) {
                            strReplace = Log.getStackTraceString(th).trim().replace("\t", "    ");
                            break;
                        }
                        if (cause instanceof UnknownHostException) {
                            strReplace = "UnknownHostException (no network)";
                            break;
                        }
                        cause = cause.getCause();
                    }
                } else {
                    strReplace = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (TextUtils.isEmpty(strReplace)) {
            return str;
        }
        return str + "\n  " + strReplace.replace("\n", "\n  ") + '\n';
    }

    public static void b(@Size(max = 23) String str, String str2, @Nullable Throwable th) {
        d(str, a(str2, th));
    }

    public static void c(@Size(max = 23) String str, String str2) {
        synchronized (a) {
            Log.i(str, str2);
        }
    }

    public static void d(@Size(max = 23) String str, String str2) {
        synchronized (a) {
            Log.w(str, str2);
        }
    }

    public static void b(@Size(max = 23) String str, String str2) {
        synchronized (a) {
            Log.e(str, str2);
        }
    }

    public static void a(@Size(max = 23) String str, String str2, @Nullable Throwable th) {
        b(str, a(str2, th));
    }

    public static void a(String str, @Nullable Exception exc) {
        c("BundleUtil", a(str, (Throwable) exc));
    }

    public static void a(@Size(max = 23) String str, String str2) {
        synchronized (a) {
            Log.d(str, str2);
        }
    }
}
