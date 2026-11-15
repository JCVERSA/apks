package defpackage;

import kotlin.coroutines.d;
import kotlinx.coroutines.flow.internal.SafeCollector;
import kotlinx.coroutines.j;

public abstract class v09 {
    public static final void b(final SafeCollector safeCollector, d dVar) {
        if (((Number) dVar.fold(0, new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return Integer.valueOf(v09.c(safeCollector, ((Integer) obj).intValue(), (d.b) obj2));
            }
        })).intValue() == safeCollector.collectContextSize) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + safeCollector.collectContext + ",\n\t\tbut emission happened in " + dVar + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    public static final int c(SafeCollector safeCollector, int i, d.b bVar) {
        d.c key = bVar.getKey();
        d.b bVar2 = safeCollector.collectContext.get(key);
        if (key != j.B6) {
            if (bVar != bVar2) {
                return Integer.MIN_VALUE;
            }
            return i + 1;
        }
        j jVar = (j) bVar2;
        y45.h(bVar, "null cannot be cast to non-null type kotlinx.coroutines.Job");
        j jVarD = d((j) bVar, jVar);
        if (jVarD == jVar) {
            return jVar == null ? i : i + 1;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + jVarD + ", expected child of " + jVar + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
    }

    public static final j d(j jVar, j jVar2) {
        while (jVar != null) {
            if (jVar == jVar2 || !(jVar instanceof x29)) {
                return jVar;
            }
            jVar = ((x29) jVar).getParent();
        }
        return null;
    }
}
