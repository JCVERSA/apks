package defpackage;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.c;
import kotlin.coroutines.d;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.a;
import kotlinx.coroutines.f;
import kotlinx.coroutines.j;

public abstract class el0 {
    public static final d72 a(nk1 nk1Var, d dVar, CoroutineStart coroutineStart, s74 s74Var) {
        d dVarJ = ek1.j(nk1Var, dVar);
        e72 cj5Var = coroutineStart.isLazy() ? new cj5(dVarJ, s74Var) : new e72(dVarJ, true);
        cj5Var.start(coroutineStart, cj5Var, s74Var);
        return cj5Var;
    }

    public static d72 b(nk1 nk1Var, d dVar, CoroutineStart coroutineStart, s74 s74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            dVar = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return cl0.a(nk1Var, dVar, coroutineStart, s74Var);
    }

    public static final j c(nk1 nk1Var, d dVar, CoroutineStart coroutineStart, s74 s74Var) {
        d dVarJ = ek1.j(nk1Var, dVar);
        a nj5Var = coroutineStart.isLazy() ? new nj5(dVarJ, s74Var) : new zv9(dVarJ, true);
        nj5Var.start(coroutineStart, nj5Var, s74Var);
        return nj5Var;
    }

    public static j d(nk1 nk1Var, d dVar, CoroutineStart coroutineStart, s74 s74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            dVar = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return cl0.c(nk1Var, dVar, coroutineStart, s74Var);
    }

    public static final Object e(d dVar, s74 s74Var, wh1 wh1Var) {
        Object objV;
        d context = wh1Var.getContext();
        d dVarK = ek1.k(context, dVar);
        n95.h(dVarK);
        if (dVarK == context) {
            x29 x29Var = new x29(dVarK, wh1Var);
            objV = tfb.b(x29Var, x29Var, s74Var);
        } else {
            c.b bVar = c.A6;
            if (y45.e(dVarK.get(bVar), context.get(bVar))) {
                sfb sfbVar = new sfb(dVarK, wh1Var);
                d context2 = sfbVar.getContext();
                Object objI = dia.i(context2, null);
                try {
                    Object objB = tfb.b(sfbVar, sfbVar, s74Var);
                    dia.f(context2, objI);
                    objV = objB;
                } catch (Throwable th) {
                    dia.f(context2, objI);
                    throw th;
                }
            } else {
                f fVar = new f(dVarK, wh1Var);
                gr0.c(s74Var, fVar, fVar);
                objV = fVar.V();
            }
        }
        if (objV == z45.f()) {
            pt1.c(wh1Var);
        }
        return objV;
    }
}
