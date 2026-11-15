package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.m2;

public abstract class g0 {

    public static final z f64886a = new z("NO_THREAD_ELEMENTS");

    private static final Function2 f64887b = new Function2() {
        @Override
        public final Object invoke(Object obj, Object obj2) {
            return g0.d(obj, (CoroutineContext.Element) obj2);
        }
    };

    private static final Function2 f64888c = new Function2() {
        @Override
        public final Object invoke(Object obj, Object obj2) {
            return g0.e((m2) obj, (CoroutineContext.Element) obj2);
        }
    };

    private static final Function2 f64889d = new Function2() {
        @Override
        public final Object invoke(Object obj, Object obj2) {
            return g0.h((m0) obj, (CoroutineContext.Element) obj2);
        }
    };

    public static final Object d(Object obj, CoroutineContext.Element element) {
        if (!(element instanceof m2)) {
            return obj;
        }
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        int iIntValue = num != null ? num.intValue() : 1;
        return iIntValue == 0 ? element : Integer.valueOf(iIntValue + 1);
    }

    public static final m2 e(m2 m2Var, CoroutineContext.Element element) {
        if (m2Var != null) {
            return m2Var;
        }
        if (element instanceof m2) {
            return (m2) element;
        }
        return null;
    }

    public static final void f(CoroutineContext coroutineContext, Object obj) {
        if (obj == f64886a) {
            return;
        }
        if (obj instanceof m0) {
            ((m0) obj).b(coroutineContext);
            return;
        }
        Object objFold = coroutineContext.fold(null, f64888c);
        Intrinsics.f(objFold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((m2) objFold).k(coroutineContext, obj);
    }

    public static final Object g(CoroutineContext coroutineContext) {
        Object objFold = coroutineContext.fold(0, f64887b);
        Intrinsics.e(objFold);
        return objFold;
    }

    public static final m0 h(m0 m0Var, CoroutineContext.Element element) {
        if (element instanceof m2) {
            m2 m2Var = (m2) element;
            m0Var.a(m2Var, m2Var.o(m0Var.f64907a));
        }
        return m0Var;
    }

    public static final Object i(CoroutineContext coroutineContext, Object obj) {
        if (obj == null) {
            obj = g(coroutineContext);
        }
        if (obj == 0) {
            return f64886a;
        }
        if (obj instanceof Integer) {
            return coroutineContext.fold(new m0(coroutineContext, ((Number) obj).intValue()), f64889d);
        }
        Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((m2) obj).o(coroutineContext);
    }
}
