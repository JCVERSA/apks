package defpackage;

import android.content.Context;

public final class bo6 implements al3 {
    public final oj8 a;
    public final oj8 b;

    public bo6(oj8 oj8Var, oj8 oj8Var2) {
        this.a = oj8Var;
        this.b = oj8Var2;
    }

    public static bo6 a(oj8 oj8Var, oj8 oj8Var2) {
        return new bo6(oj8Var, oj8Var2);
    }

    public static ao6 c(Context context, Object obj) {
        return new ao6(context, (hl1) obj);
    }

    @Override
    public ao6 get() {
        return c((Context) this.a.get(), this.b.get());
    }
}
