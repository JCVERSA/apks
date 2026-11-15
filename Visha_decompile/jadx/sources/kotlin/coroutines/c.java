package kotlin.coroutines;

import defpackage.wh1;
import defpackage.y45;

public interface c extends d.b {
    public static final b A6 = b.b;

    public static final class a {
        public static d.b a(c cVar, d.c cVar2) {
            d.b bVarB;
            y45.j(cVar2, "key");
            if (!(cVar2 instanceof kotlin.coroutines.b)) {
                if (c.A6 != cVar2) {
                    return null;
                }
                y45.h(cVar, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get");
                return cVar;
            }
            kotlin.coroutines.b bVar = (kotlin.coroutines.b) cVar2;
            if (!bVar.a(cVar.getKey()) || (bVarB = bVar.b(cVar)) == null) {
                return null;
            }
            return bVarB;
        }

        public static d b(c cVar, d.c cVar2) {
            y45.j(cVar2, "key");
            if (!(cVar2 instanceof kotlin.coroutines.b)) {
                return c.A6 == cVar2 ? EmptyCoroutineContext.INSTANCE : cVar;
            }
            kotlin.coroutines.b bVar = (kotlin.coroutines.b) cVar2;
            return (!bVar.a(cVar.getKey()) || bVar.b(cVar) == null) ? cVar : EmptyCoroutineContext.INSTANCE;
        }
    }

    public static final class b implements d.c {
        public static final b b = new b();
    }

    wh1 interceptContinuation(wh1 wh1Var);

    void releaseInterceptedContinuation(wh1 wh1Var);
}
