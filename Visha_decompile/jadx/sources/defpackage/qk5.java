package defpackage;

import android.content.Context;

public abstract class qk5 {

    public interface a {
        String a(Object obj);
    }

    public static zb1 b(String str, String str2) {
        return zb1.l(ok5.a(str, str2), ok5.class);
    }

    public static zb1 c(final String str, final a aVar) {
        return zb1.m(ok5.class).b(k82.k(Context.class)).f(new nc1() {
            @Override
            public final Object a(ic1 ic1Var) {
                return qk5.d(str, aVar, ic1Var);
            }
        }).d();
    }

    public static ok5 d(String str, a aVar, ic1 ic1Var) {
        return ok5.a(str, aVar.a((Context) ic1Var.a(Context.class)));
    }
}
