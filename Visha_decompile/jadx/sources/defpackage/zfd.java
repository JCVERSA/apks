package defpackage;

import android.content.Context;

public class zfd {
    public static zfd b = new zfd();
    public Context a;

    public static zfd c() {
        return b;
    }

    public Context a() {
        return this.a;
    }

    public void b(Context context) {
        this.a = context != null ? context.getApplicationContext() : null;
    }
}
