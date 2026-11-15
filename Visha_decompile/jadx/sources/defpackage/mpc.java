package defpackage;

import android.content.Context;

public class mpc {
    public static final mpc b = new mpc();
    public kv7 a = null;

    public static kv7 a(Context context) {
        return b.b(context);
    }

    public final synchronized kv7 b(Context context) {
        try {
            if (this.a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.a = new kv7(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.a;
    }
}
