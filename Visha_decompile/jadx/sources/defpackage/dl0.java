package defpackage;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.c;
import kotlin.coroutines.d;
import kotlinx.coroutines.CoroutineStart;

public abstract class dl0 {
    /* JADX WARN: Code duplicated, block: B:16:0x0036  */
    public static final Object a(d dVar, s74 s74Var) {
        yd3 yd3VarA;
        d dVarJ;
        Thread threadCurrentThread = Thread.currentThread();
        c cVar = (c) dVar.get(c.A6);
        if (cVar == null) {
            yd3VarA = fia.a.b();
            dVarJ = ek1.j(qi4.b, dVar.plus(yd3VarA));
        } else {
            yd3 yd3Var = cVar instanceof yd3 ? (yd3) cVar : null;
            if (yd3Var == null) {
                yd3VarA = fia.a.a();
            } else {
                yd3 yd3Var2 = yd3Var.shouldBeProcessedFromContext() ? yd3Var : null;
                if (yd3Var2 == null) {
                    yd3VarA = fia.a.a();
                } else {
                    yd3VarA = yd3Var2;
                }
            }
            dVarJ = ek1.j(qi4.b, dVar);
        }
        tf0 tf0Var = new tf0(dVarJ, threadCurrentThread, yd3VarA);
        tf0Var.start(CoroutineStart.DEFAULT, tf0Var, s74Var);
        return tf0Var.V();
    }

    public static Object b(d dVar, s74 s74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            dVar = EmptyCoroutineContext.INSTANCE;
        }
        return cl0.e(dVar, s74Var);
    }
}
