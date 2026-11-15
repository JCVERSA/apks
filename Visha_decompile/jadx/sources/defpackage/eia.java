package defpackage;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;

public final class eia implements yha {
    public final Object b;
    public final ThreadLocal c;
    public final d.c d;

    public eia(Object obj, ThreadLocal threadLocal) {
        this.b = obj;
        this.c = threadLocal;
        this.d = new gia(threadLocal);
    }

    @Override
    public Object D(d dVar) {
        Object obj = this.c.get();
        this.c.set(this.b);
        return obj;
    }

    @Override
    public void e(d dVar, Object obj) {
        this.c.set(obj);
    }

    @Override
    public Object fold(Object obj, s74 s74Var) {
        return yha.a.a(this, obj, s74Var);
    }

    @Override
    public d.b get(d.c cVar) {
        if (!y45.e(getKey(), cVar)) {
            return null;
        }
        y45.h(this, "null cannot be cast to non-null type E of kotlinx.coroutines.internal.ThreadLocalElement.get");
        return this;
    }

    @Override
    public d.c getKey() {
        return this.d;
    }

    @Override
    public d minusKey(d.c cVar) {
        return y45.e(getKey(), cVar) ? EmptyCoroutineContext.INSTANCE : this;
    }

    @Override
    public d plus(d dVar) {
        return yha.a.b(this, dVar);
    }

    public String toString() {
        return "ThreadLocal(value=" + this.b + ", threadLocal = " + this.c + ')';
    }
}
