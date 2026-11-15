package io.reactivex.rxjava3.internal.operators.observable;

import java.util.concurrent.atomic.AtomicBoolean;

final class r extends io.reactivex.rxjava3.core.j {

    final io.reactivex.rxjava3.subjects.a f62469a;

    final AtomicBoolean f62470b = new AtomicBoolean();

    r(io.reactivex.rxjava3.subjects.a aVar) {
        this.f62469a = aVar;
    }

    @Override
    protected void D(io.reactivex.rxjava3.core.o oVar) {
        this.f62469a.subscribe(oVar);
        this.f62470b.set(true);
    }

    boolean J() {
        return !this.f62470b.get() && this.f62470b.compareAndSet(false, true);
    }
}
