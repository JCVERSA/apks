package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.m2;

public final class h0 implements m2 {

    private final Object f64890a;

    private final ThreadLocal f64891b;

    private final CoroutineContext.Key f64892c;

    public h0(Object obj, ThreadLocal threadLocal) {
        this.f64890a = obj;
        this.f64891b = threadLocal;
        this.f64892c = new i0(threadLocal);
    }

    @Override
    public Object fold(Object obj, Function2 function2) {
        return m2.a.a(this, obj, function2);
    }

    @Override
    public CoroutineContext.Element get(CoroutineContext.Key key) {
        if (!Intrinsics.c(getKey(), key)) {
            return null;
        }
        Intrinsics.f(this, "null cannot be cast to non-null type E of kotlinx.coroutines.internal.ThreadLocalElement.get");
        return this;
    }

    @Override
    public CoroutineContext.Key getKey() {
        return this.f64892c;
    }

    @Override
    public void k(CoroutineContext coroutineContext, Object obj) {
        this.f64891b.set(obj);
    }

    @Override
    public CoroutineContext minusKey(CoroutineContext.Key key) {
        return Intrinsics.c(getKey(), key) ? EmptyCoroutineContext.INSTANCE : this;
    }

    @Override
    public Object o(CoroutineContext coroutineContext) {
        Object obj = this.f64891b.get();
        this.f64891b.set(this.f64890a);
        return obj;
    }

    @Override
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return m2.a.b(this, coroutineContext);
    }

    public String toString() {
        return "ThreadLocal(value=" + this.f64890a + ", threadLocal = " + this.f64891b + ')';
    }
}
