package kotlinx.coroutines.flow;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

abstract class t {

    private static final Function1 f64854a = new Function1() {
        @Override
        public final Object invoke(Object obj) {
            return t.d(obj);
        }
    };

    private static final Function2 f64855b = new Function2() {
        @Override
        public final Object invoke(Object obj, Object obj2) {
            return Boolean.valueOf(t.c(obj, obj2));
        }
    };

    public static final boolean c(Object obj, Object obj2) {
        return Intrinsics.c(obj, obj2);
    }

    public static final Object d(Object obj) {
        return obj;
    }

    public static final a e(a aVar) {
        return aVar instanceof h1 ? aVar : f(aVar, f64854a, f64855b);
    }

    private static final a f(a aVar, Function1 function1, Function2 function2) {
        if (aVar instanceof DistinctFlowImpl) {
            DistinctFlowImpl distinctFlowImpl = (DistinctFlowImpl) aVar;
            if (distinctFlowImpl.f64748b == function1 && distinctFlowImpl.f64749c == function2) {
                return aVar;
            }
        }
        return new DistinctFlowImpl(aVar, function1, function2);
    }
}
