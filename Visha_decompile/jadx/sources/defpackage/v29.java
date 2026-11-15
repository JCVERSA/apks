package defpackage;

import android.content.Context;

public final class v29 implements al3 {
    public final oj8 a;
    public final oj8 b;
    public final oj8 c;

    public v29(oj8 oj8Var, oj8 oj8Var2, oj8 oj8Var3) {
        this.a = oj8Var;
        this.b = oj8Var2;
        this.c = oj8Var3;
    }

    public static v29 a(oj8 oj8Var, oj8 oj8Var2, oj8 oj8Var3) {
        return new v29(oj8Var, oj8Var2, oj8Var3);
    }

    public static u29 c(Context context, String str, int i) {
        return new u29(context, str, i);
    }

    @Override
    public u29 get() {
        return c((Context) this.a.get(), (String) this.b.get(), ((Integer) this.c.get()).intValue());
    }
}
