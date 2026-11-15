package defpackage;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.c;
import kotlin.coroutines.d;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.f;

public abstract class ek1 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    public static final d d(d dVar, d dVar2, final boolean z) {
        boolean zH = h(dVar);
        boolean zH2 = h(dVar2);
        if (!zH && !zH2) {
            return dVar.plus(dVar2);
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = dVar2;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        d dVar3 = (d) dVar.fold(emptyCoroutineContext, new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return ek1.e(ref$ObjectRef, z, (d) obj, (d.b) obj2);
            }
        });
        if (zH2) {
            ref$ObjectRef.element = ((d) ref$ObjectRef.element).fold(emptyCoroutineContext, new s74() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return ek1.f((d) obj, (d.b) obj2);
                }
            });
        }
        return dVar3.plus((d) ref$ObjectRef.element);
    }

    public static final d e(Ref$ObjectRef ref$ObjectRef, boolean z, d dVar, d.b bVar) {
        return dVar.plus(bVar);
    }

    public static final d f(d dVar, d.b bVar) {
        return dVar.plus(bVar);
    }

    public static final String g(d dVar) {
        return null;
    }

    public static final boolean h(d dVar) {
        return ((Boolean) dVar.fold(Boolean.FALSE, new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return Boolean.valueOf(ek1.i(((Boolean) obj).booleanValue(), (d.b) obj2));
            }
        })).booleanValue();
    }

    public static final boolean i(boolean z, d.b bVar) {
        return z;
    }

    public static final d j(nk1 nk1Var, d dVar) {
        d dVarD = d(nk1Var.getCoroutineContext(), dVar, true);
        return (dVarD == mc2.a() || dVarD.get(c.A6) != null) ? dVarD : dVarD.plus(mc2.a());
    }

    public static final d k(d dVar, d dVar2) {
        return !h(dVar2) ? dVar.plus(dVar2) : d(dVar, dVar2, false);
    }

    public static final sfb l(ok1 ok1Var) {
        while (!(ok1Var instanceof f) && (ok1Var = ok1Var.getCallerFrame()) != null) {
            if (ok1Var instanceof sfb) {
                return (sfb) ok1Var;
            }
        }
        return null;
    }

    public static final sfb m(wh1 wh1Var, d dVar, Object obj) {
        if (!(wh1Var instanceof ok1) || dVar.get(ufb.b) == null) {
            return null;
        }
        sfb sfbVarL = l((ok1) wh1Var);
        if (sfbVarL != null) {
            sfbVarL.W(dVar, obj);
        }
        return sfbVarL;
    }
}
