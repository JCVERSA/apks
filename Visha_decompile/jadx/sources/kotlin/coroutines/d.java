package kotlin.coroutines;

import defpackage.s74;
import defpackage.y45;
import kotlin.coroutines.d;

public interface d {

    public static final class a {
        public static d b(d dVar, d dVar2) {
            y45.j(dVar2, "context");
            return dVar2 == EmptyCoroutineContext.INSTANCE ? dVar : (d) dVar2.fold(dVar, new s74() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return d.a.c((d) obj, (d.b) obj2);
                }
            });
        }

        public static d c(d dVar, b bVar) {
            CombinedContext combinedContext;
            y45.j(dVar, "acc");
            y45.j(bVar, "element");
            d dVarMinusKey = dVar.minusKey(bVar.getKey());
            EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
            if (dVarMinusKey == emptyCoroutineContext) {
                return bVar;
            }
            kotlin.coroutines.c.b bVar2 = kotlin.coroutines.c.A6;
            kotlin.coroutines.c cVar = (kotlin.coroutines.c) dVarMinusKey.get(bVar2);
            if (cVar == null) {
                combinedContext = new CombinedContext(dVarMinusKey, bVar);
            } else {
                d dVarMinusKey2 = dVarMinusKey.minusKey(bVar2);
                if (dVarMinusKey2 == emptyCoroutineContext) {
                    return new CombinedContext(bVar, cVar);
                }
                combinedContext = new CombinedContext(new CombinedContext(dVarMinusKey2, bVar), cVar);
            }
            return combinedContext;
        }
    }

    public interface b extends d {

        public static final class a {
            public static Object a(b bVar, Object obj, s74 s74Var) {
                y45.j(s74Var, "operation");
                return s74Var.invoke(obj, bVar);
            }

            public static b b(b bVar, c cVar) {
                y45.j(cVar, "key");
                if (!y45.e(bVar.getKey(), cVar)) {
                    return null;
                }
                y45.h(bVar, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get");
                return bVar;
            }

            public static d c(b bVar, c cVar) {
                y45.j(cVar, "key");
                return y45.e(bVar.getKey(), cVar) ? EmptyCoroutineContext.INSTANCE : bVar;
            }

            public static d d(b bVar, d dVar) {
                y45.j(dVar, "context");
                return a.b(bVar, dVar);
            }
        }

        @Override
        b get(c cVar);

        c getKey();
    }

    public interface c {
    }

    Object fold(Object obj, s74 s74Var);

    b get(c cVar);

    d minusKey(c cVar);

    d plus(d dVar);
}
