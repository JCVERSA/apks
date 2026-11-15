package defpackage;

import android.content.Context;

public final class ke3 implements al3 {
    public final oj8 a;

    public ke3(oj8 oj8Var) {
        this.a = oj8Var;
    }

    public static ke3 a(oj8 oj8Var) {
        return new ke3(oj8Var);
    }

    public static String c(Context context) {
        return (String) vd8.c(ie3.b(context), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override
    public String get() {
        return c((Context) this.a.get());
    }
}
