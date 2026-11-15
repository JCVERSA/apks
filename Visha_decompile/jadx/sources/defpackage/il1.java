package defpackage;

import android.content.Context;

public final class il1 implements al3 {
    public final oj8 a;
    public final oj8 b;
    public final oj8 c;

    public il1(oj8 oj8Var, oj8 oj8Var2, oj8 oj8Var3) {
        this.a = oj8Var;
        this.b = oj8Var2;
        this.c = oj8Var3;
    }

    public static il1 a(oj8 oj8Var, oj8 oj8Var2, oj8 oj8Var3) {
        return new il1(oj8Var, oj8Var2, oj8Var3);
    }

    public static hl1 c(Context context, hy0 hy0Var, hy0 hy0Var2) {
        return new hl1(context, hy0Var, hy0Var2);
    }

    @Override
    public hl1 get() {
        return c((Context) this.a.get(), (hy0) this.b.get(), (hy0) this.c.get());
    }
}
