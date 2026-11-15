package kotlinx.coroutines;

import defpackage.mc2;
import defpackage.n95;
import defpackage.nk1;
import defpackage.pt1;
import defpackage.s74;
import defpackage.se3;
import defpackage.tfb;
import defpackage.th1;
import defpackage.v6a;
import defpackage.wh1;
import defpackage.x29;
import defpackage.z45;
import java.util.concurrent.CancellationException;

public abstract class d {
    public static final nk1 a(kotlin.coroutines.d dVar) {
        if (dVar.get(j.B6) == null) {
            dVar = dVar.plus(JobKt__JobKt.b(null, 1, null));
        }
        return new th1(dVar);
    }

    public static final nk1 b() {
        return new th1(v6a.b(null, 1, null).plus(mc2.c()));
    }

    public static final void c(nk1 nk1Var, String str, Throwable th) {
        d(nk1Var, se3.a(str, th));
    }

    public static final void d(nk1 nk1Var, CancellationException cancellationException) {
        j jVar = (j) nk1Var.getCoroutineContext().get(j.B6);
        if (jVar != null) {
            jVar.cancel(cancellationException);
            return;
        }
        throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + nk1Var).toString());
    }

    public static void e(nk1 nk1Var, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        c(nk1Var, str, th);
    }

    public static void f(nk1 nk1Var, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        d(nk1Var, cancellationException);
    }

    public static final Object g(s74 s74Var, wh1 wh1Var) {
        x29 x29Var = new x29(wh1Var.getContext(), wh1Var);
        Object objB = tfb.b(x29Var, x29Var, s74Var);
        if (objB == z45.f()) {
            pt1.c(wh1Var);
        }
        return objB;
    }

    public static final void h(nk1 nk1Var) {
        n95.h(nk1Var.getCoroutineContext());
    }

    public static final boolean i(nk1 nk1Var) {
        j jVar = (j) nk1Var.getCoroutineContext().get(j.B6);
        if (jVar != null) {
            return jVar.isActive();
        }
        return true;
    }
}
