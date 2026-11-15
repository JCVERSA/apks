package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public abstract class uv3 {
    public static boolean a = false;
    public static final ExecutorService b = Executors.newSingleThreadExecutor();

    public static SharedPreferences b(Context context) {
        return context.getSharedPreferences("FingerprintSPUtils", 0);
    }

    public static boolean c(Context context) {
        if (context == null) {
            return false;
        }
        return b(context).getBoolean("fingerprintEnabled", false);
    }

    public static boolean d(Context context) {
        if (context == null) {
            return false;
        }
        return b(context).getBoolean("isFirstHideLaunch", true);
    }

    public static boolean e() {
        return a;
    }

    public static Void f(SharedPreferences sharedPreferences, String str, boolean z) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putBoolean(str, z);
        editorEdit.apply();
        return null;
    }

    public static void g(boolean z) {
        a = z;
    }

    public static Future h(Context context, final String str, final boolean z) {
        if (context == null) {
            return null;
        }
        final SharedPreferences sharedPreferencesB = b(context);
        return b.submit(new Callable() {
            @Override
            public final Object call() {
                return uv3.f(sharedPreferencesB, str, z);
            }
        });
    }
}
