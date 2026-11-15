package defpackage;

import kotlin.coroutines.d;

public abstract class dia {
    public static final y7a a = new y7a("NO_THREAD_ELEMENTS");
    public static final s74 b = new s74() {
        @Override
        public final Object invoke(Object obj, Object obj2) {
            return dia.d(obj, (d.b) obj2);
        }
    };
    public static final s74 c = new s74() {
        @Override
        public final Object invoke(Object obj, Object obj2) {
            return dia.e((yha) obj, (d.b) obj2);
        }
    };
    public static final s74 d = new s74() {
        @Override
        public final Object invoke(Object obj, Object obj2) {
            return dia.h((lia) obj, (d.b) obj2);
        }
    };

    public static final Object d(Object obj, d.b bVar) {
        if (!(bVar instanceof yha)) {
            return obj;
        }
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        int iIntValue = num != null ? num.intValue() : 1;
        return iIntValue == 0 ? bVar : Integer.valueOf(iIntValue + 1);
    }

    public static final yha e(yha yhaVar, d.b bVar) {
        if (yhaVar != null) {
            return yhaVar;
        }
        if (bVar instanceof yha) {
            return (yha) bVar;
        }
        return null;
    }

    public static final void f(d dVar, Object obj) {
        if (obj == a) {
            return;
        }
        if (obj instanceof lia) {
            ((lia) obj).b(dVar);
            return;
        }
        Object objFold = dVar.fold(null, c);
        y45.h(objFold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((yha) objFold).e(dVar, obj);
    }

    public static final Object g(d dVar) {
        Object objFold = dVar.fold(0, b);
        y45.g(objFold);
        return objFold;
    }

    public static final lia h(lia liaVar, d.b bVar) {
        if (bVar instanceof yha) {
            yha yhaVar = (yha) bVar;
            liaVar.a(yhaVar, yhaVar.D(liaVar.a));
        }
        return liaVar;
    }

    public static final Object i(d dVar, Object obj) {
        if (obj == null) {
            obj = g(dVar);
        }
        if (obj == 0) {
            return a;
        }
        if (obj instanceof Integer) {
            return dVar.fold(new lia(dVar, ((Number) obj).intValue()), d);
        }
        y45.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((yha) obj).D(dVar);
    }
}
