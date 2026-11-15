package defpackage;

import android.content.Context;

public abstract class vh1 {
    public static Context a;

    public static Context a() {
        Context context = a;
        if (context != null) {
            return context;
        }
        throw new NullPointerException("u should init first");
    }

    public static void b(Context context) {
        if (a != null) {
            return;
        }
        a = context.getApplicationContext();
    }
}
