package defpackage;

import android.content.Context;
import androidx.core.content.ContextCompat;

public abstract class zq8 {
    public static boolean a(Context context, String str) {
        return d() && e(context, str) == 0;
    }

    public static boolean b(Context context, String str) {
        return g() && f(context, str) == 0;
    }

    public static Object c(Context context) {
        return k("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[]{Context.class}, context);
    }

    public static boolean d() {
        try {
            int i = ContextCompat.RECEIVER_VISIBLE_TO_INSTANT_APPS;
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static int e(Context context, String str) {
        try {
            int i = ContextCompat.RECEIVER_VISIBLE_TO_INSTANT_APPS;
            return ((Integer) ContextCompat.class.getDeclaredMethod("checkSelfPermission", Context.class, String.class).invoke(ContextCompat.class, context, str)).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static int f(Context context, String str) {
        try {
            int i = ContextCompat.RECEIVER_VISIBLE_TO_INSTANT_APPS;
            return ((Integer) ContextCompat.class.getDeclaredMethod("checkSelfPermission", Context.class, String.class).invoke(ContextCompat.class, context, str)).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static boolean g() {
        try {
            int i = ContextCompat.RECEIVER_VISIBLE_TO_INSTANT_APPS;
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static String h(Context context) {
        String str = null;
        try {
            Object objC = c(context);
            if (objC != null) {
                str = (String) i(objC, "getId", null, new Object[0]);
            }
        } catch (Throwable unused) {
        }
        return str == null ? "" : str;
    }

    public static Object i(Object obj, String str, Class[] clsArr, Object... objArr) {
        return j(obj.getClass(), str, obj, clsArr, objArr);
    }

    public static Object j(Class cls, String str, Object obj, Class[] clsArr, Object... objArr) {
        return cls.getMethod(str, clsArr).invoke(obj, objArr);
    }

    public static Object k(String str, String str2, Class[] clsArr, Object... objArr) {
        return j(Class.forName(str), str2, null, clsArr, objArr);
    }
}
