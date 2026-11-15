package defpackage;

import android.content.Context;

public final class hvh {
    public static final hvh b = new hvh();
    public Context a;

    public static hvh b() {
        return b;
    }

    public final Context a() {
        return this.a;
    }

    public final void c(Context context) {
        this.a = context != null ? context.getApplicationContext() : null;
    }
}
