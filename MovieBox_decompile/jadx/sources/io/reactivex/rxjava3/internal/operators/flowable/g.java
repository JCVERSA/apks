package io.reactivex.rxjava3.internal.operators.flowable;

import java.util.concurrent.atomic.AtomicBoolean;

final class g extends io.reactivex.rxjava3.core.e {

    final io.reactivex.rxjava3.processors.a f62379b;

    final AtomicBoolean f62380c = new AtomicBoolean();

    g(io.reactivex.rxjava3.processors.a aVar) {
        this.f62379b = aVar;
    }

    @Override
    protected void g(i00.c cVar) {
        this.f62379b.subscribe(cVar);
        this.f62380c.set(true);
    }

    boolean h() {
        return !this.f62380c.get() && this.f62380c.compareAndSet(false, true);
    }
}
