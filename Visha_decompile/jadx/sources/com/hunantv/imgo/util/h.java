package com.hunantv.imgo.util;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Properties;

public class h {
    private static String d;
    private static String e;
    private static final String[] a = {"m9", "M9", "mx", "MX"};
    private static boolean h = d();
    private static final String b = Build.BRAND.toLowerCase();
    private static final String c = Build.MODEL;
    private static boolean f = false;
    private static boolean g = false;

    static {
        Properties properties = new Properties();
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
            d = a(properties, declaredMethod, "ro.miui.ui.version.name");
            e = a(properties, declaredMethod, "ro.build.display.id");
        } catch (Exception unused) {
            a("read SystemProperties error");
        }
    }

    public static boolean a(Context context) {
        if (f) {
            return g;
        }
        boolean zE = e(context);
        g = zE;
        f = true;
        return zE;
    }

    public static boolean b() {
        String str = b;
        return str.contains("huawei") || str.contains("honor");
    }

    public static boolean c() {
        return h;
    }

    private static boolean d() {
        try {
            String str = Build.MODEL;
            if (a()) {
                return "V2003A".equalsIgnoreCase(str) || "V2178A".equalsIgnoreCase(str);
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    private static boolean e(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public static boolean b(Context context) {
        try {
            return context.getResources().getConfiguration().toString().contains("hw-magic-windows");
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static boolean c(Context context) {
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) == 3;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static boolean d(Context context) {
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) == 2;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static boolean a() {
        String str = b;
        return str.contains("vivo") || str.contains("bbk");
    }

    public static void a(boolean z) {
        h = z;
    }

    @Nullable
    private static String a(Properties properties, Method method, String str) {
        String property = properties.getProperty(str);
        if (property == null) {
            try {
                property = (String) method.invoke(null, str);
            } catch (Exception unused) {
            }
        }
        return property != null ? property.toLowerCase() : property;
    }

    private static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    private static void a(String str) {
        Log.d("Notch", "DeviceHelper:" + str);
    }
}
