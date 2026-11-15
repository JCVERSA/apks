package kotlinx.coroutines;

import defpackage.k95;
import defpackage.n95;
import defpackage.o95;
import defpackage.pb1;
import defpackage.pc9;
import defpackage.uc2;
import defpackage.zc2;
import java.util.Iterator;
import java.util.concurrent.CancellationException;

public abstract class JobKt__JobKt {
    public static final pb1 a(j jVar) {
        return new k95(jVar);
    }

    public static pb1 b(j jVar, int i, Object obj) {
        if ((i & 1) != 0) {
            jVar = null;
        }
        return n95.a(jVar);
    }

    public static final void c(kotlin.coroutines.d dVar, CancellationException cancellationException) {
        j jVar = (j) dVar.get(j.B6);
        if (jVar != null) {
            jVar.cancel(cancellationException);
        }
    }

    public static void d(kotlin.coroutines.d dVar, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        n95.c(dVar, cancellationException);
    }

    public static final void e(kotlin.coroutines.d dVar, CancellationException cancellationException) {
        pc9 children;
        j jVar = (j) dVar.get(j.B6);
        if (jVar == null || (children = jVar.getChildren()) == null) {
            return;
        }
        Iterator it = children.iterator();
        while (it.hasNext()) {
            ((j) it.next()).cancel(cancellationException);
        }
    }

    public static void f(kotlin.coroutines.d dVar, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        n95.e(dVar, cancellationException);
    }

    public static final uc2 g(j jVar, uc2 uc2Var) {
        return k(jVar, false, new zc2(uc2Var), 1, null);
    }

    public static final void h(kotlin.coroutines.d dVar) {
        j jVar = (j) dVar.get(j.B6);
        if (jVar != null) {
            n95.i(jVar);
        }
    }

    public static final void i(j jVar) {
        if (!jVar.isActive()) {
            throw jVar.getCancellationException();
        }
    }

    public static final uc2 j(j jVar, boolean z, o95 o95Var) {
        return jVar instanceof JobSupport ? ((JobSupport) jVar).invokeOnCompletionInternal$kotlinx_coroutines_core(z, o95Var) : jVar.invokeOnCompletion(o95Var.u(), z, new JobKt__JobKt$invokeOnCompletion$1(o95Var));
    }

    public static uc2 k(j jVar, boolean z, o95 o95Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return n95.j(jVar, z, o95Var);
    }
}
