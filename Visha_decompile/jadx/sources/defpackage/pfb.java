package defpackage;

import android.os.Handler;
import android.os.Looper;

public final class pfb {
    public static final pfb a = new pfb();
    public static final Handler b = new Handler(Looper.getMainLooper());

    public static final Handler b() {
        return b;
    }

    public static final boolean c() {
        return y45.e(Thread.currentThread(), d());
    }

    public static final Thread d() {
        Thread thread = Looper.getMainLooper().getThread();
        y45.i(thread, "getMainLooper().thread");
        return thread;
    }

    public static final void f(c74 c74Var) {
        y45.j(c74Var, "$tmp0");
        c74Var.invoke();
    }

    public final boolean e(final c74 c74Var) {
        y45.j(c74Var, "runnable");
        return b.post(new Runnable() {
            @Override
            public final void run() {
                pfb.f(c74Var);
            }
        });
    }
}
