package defpackage;

import android.view.View;

public final class on9 {
    public c74 a;

    public on9(View view, c74 c74Var) {
        y45.j(view, "view");
        this.a = c74Var;
        if (view.isAttachedToWindow()) {
            b();
        }
    }

    public final void a() {
        this.a = null;
    }

    public final void b() {
        c74 c74Var = this.a;
        if (c74Var != null) {
            c74Var.invoke();
        }
        this.a = null;
    }
}
