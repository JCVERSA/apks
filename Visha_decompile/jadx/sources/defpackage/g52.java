package defpackage;

import android.os.Handler;
import android.os.Looper;

public final class g52 implements dea {
    public final Handler a = new Handler(Looper.getMainLooper());

    public static final void c(c74 c74Var) {
        y45.j(c74Var, "$tmp0");
        c74Var.invoke();
    }

    @Override
    public void a(final c74 c74Var) {
        y45.j(c74Var, "task");
        if (y45.e(Looper.myLooper(), Looper.getMainLooper())) {
            c74Var.invoke();
        } else {
            this.a.post(new Runnable() {
                @Override
                public final void run() {
                    g52.c(c74Var);
                }
            });
        }
    }
}
