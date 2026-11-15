package kotlin.coroutines.jvm.internal;

import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;

final class a {

    public static final a f64220a = new a();

    private static final C0797a f64221b = new C0797a(null, null, null);

    private static C0797a f64222c;

    private static final class C0797a {

        public final Method f64223a;

        public final Method f64224b;

        public final Method f64225c;

        public C0797a(Method method, Method method2, Method method3) {
            this.f64223a = method;
            this.f64224b = method2;
            this.f64225c = method3;
        }
    }

    private a() {
    }

    private final C0797a a(BaseContinuationImpl baseContinuationImpl) {
        try {
            C0797a c0797a = new C0797a(Class.class.getDeclaredMethod("getModule", null), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
            f64222c = c0797a;
            return c0797a;
        } catch (Exception unused) {
            C0797a c0797a2 = f64221b;
            f64222c = c0797a2;
            return c0797a2;
        }
    }

    public final String b(BaseContinuationImpl continuation) {
        Method method;
        Object objInvoke;
        Method method2;
        Object objInvoke2;
        Intrinsics.h(continuation, "continuation");
        C0797a c0797aA = f64222c;
        if (c0797aA == null) {
            c0797aA = a(continuation);
        }
        if (c0797aA == f64221b || (method = c0797aA.f64223a) == null || (objInvoke = method.invoke(continuation.getClass(), null)) == null || (method2 = c0797aA.f64224b) == null || (objInvoke2 = method2.invoke(objInvoke, null)) == null) {
            return null;
        }
        Method method3 = c0797aA.f64225c;
        Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, null) : null;
        if (objInvoke3 instanceof String) {
            return (String) objInvoke3;
        }
        return null;
    }
}
