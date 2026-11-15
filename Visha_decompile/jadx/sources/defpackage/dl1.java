package defpackage;

import android.content.Context;
import android.util.Log;

public abstract class dl1 {
    public static final String[] a = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    public static boolean a(Context context, Throwable th) {
        try {
            wd8.l(context);
            wd8.l(th);
            return false;
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }
}
