package defpackage;

import android.content.Context;

public final class pr8 {
    public static final pr8 a = new pr8();
    public static nr8 b;
    public static or8 c;
    public static boolean d;

    public final void a() {
        if (!d) {
            throw new IllegalStateException("please call HostChangerManager.init() first");
        }
    }

    public final or8 b() {
        a();
        or8 or8Var = c;
        if (or8Var != null) {
            return or8Var;
        }
        y45.B("regionHostInterceptor");
        return null;
    }

    public final void c(Context context, lr8 lr8Var) {
        y45.j(context, "context");
        y45.j(lr8Var, "config");
        if (d) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        b = new nr8(applicationContext, lr8Var);
        nr8 nr8Var = b;
        if (nr8Var == null) {
            y45.B("regionHostHelper");
            nr8Var = null;
        }
        c = new or8(nr8Var);
        d = true;
    }
}
