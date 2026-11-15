package androidx.compose.runtime;

import java.util.List;

public abstract class p {

    private static final Object f3558a = new Object();

    private static final w f3559b = new a();

    public static final class a implements w {
        a() {
        }
    }

    public static final l a(f fVar, m mVar) {
        return new o(mVar, fVar, null, 4, null);
    }

    public static final d2 b(f fVar, m mVar) {
        return new o(mVar, fVar, null, 4, null);
    }

    public static final void f(androidx.collection.d0 d0Var, int i10, int i11) {
        int iA = d0Var.a(i10);
        d0Var.j(i10, d0Var.a(i11));
        d0Var.j(i11, iA);
    }

    public static final void g(List list, int i10, int i11) {
        Object obj = list.get(i10);
        list.set(i10, list.get(i11));
        list.set(i11, obj);
    }
}
