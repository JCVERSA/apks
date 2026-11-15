package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import com.hisavana.common.constant.ComConstants;

public abstract class jxe {
    public static int a(Context context) {
        return f(context, "crash_without_write");
    }

    public static int b(Context context) {
        return f(context, "init_without_write");
    }

    public static void c(Context context) {
        g(context, "crash_without_write");
    }

    public static void d(Context context) {
        g(context, "init_without_write");
    }

    public static void e(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(ComConstants.PLATFORM_ADMOB, 0);
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putInt("init_without_write", 0).putInt("crash_without_write", 0).commit();
    }

    public static int f(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(ComConstants.PLATFORM_ADMOB, 0);
        if (sharedPreferences == null) {
            return 0;
        }
        try {
            return sharedPreferences.getInt(str, 0);
        } catch (ClassCastException unused) {
            return 0;
        }
    }

    public static void g(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(ComConstants.PLATFORM_ADMOB, 0);
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putInt(str, f(context, str) + 1).commit();
    }
}
