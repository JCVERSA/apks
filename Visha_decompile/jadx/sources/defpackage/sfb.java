package defpackage;

import kotlin.Pair;
import kotlin.coroutines.c;
import kotlin.coroutines.d;

public final class sfb extends x29 {
    public final ThreadLocal b;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    public sfb(d dVar, wh1 wh1Var) {
        ufb ufbVar = ufb.b;
        super(dVar.get(ufbVar) == null ? dVar.plus(ufbVar) : dVar, wh1Var);
        this.b = new ThreadLocal();
        if (wh1Var.getContext().get(c.A6) instanceof kotlinx.coroutines.c) {
            return;
        }
        Object objI = dia.i(dVar, null);
        dia.f(dVar, objI);
        W(dVar, objI);
    }

    public final boolean V() {
        boolean z = this.threadLocalIsSet && this.b.get() == null;
        this.b.remove();
        return !z;
    }

    public final void W(d dVar, Object obj) {
        this.threadLocalIsSet = true;
        this.b.set(abb.a(dVar, obj));
    }

    @Override
    public void afterResume(Object obj) {
        if (this.threadLocalIsSet) {
            Pair pair = (Pair) this.b.get();
            if (pair != null) {
                dia.f((d) pair.component1(), pair.component2());
            }
            this.b.remove();
        }
        Object objA = wb1.a(obj, this.uCont);
        wh1<Object> wh1Var = this.uCont;
        d context = wh1Var.getContext();
        Object objI = dia.i(context, null);
        sfb sfbVarM = objI != dia.a ? ek1.m(wh1Var, context, objI) : null;
        try {
            this.uCont.resumeWith(objA);
            zfb zfbVar = zfb.a;
        } finally {
            if (sfbVarM == null || sfbVarM.V()) {
                dia.f(context, objI);
            }
        }
    }
}
