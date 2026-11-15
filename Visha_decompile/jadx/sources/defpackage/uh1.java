package defpackage;

import android.content.Context;

public abstract class uh1 {
    public static Context a;

    public static Context a() {
        return a;
    }

    public static void b(Context context) {
        if (context == null) {
            throw new RuntimeException("Global application context set error");
        }
        a = context.getApplicationContext();
    }
}
