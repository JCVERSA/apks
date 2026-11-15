package io.reactivex.rxjava3.internal.schedulers;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

final class b implements Future {

    final io.reactivex.rxjava3.disposables.c f62513a;

    b(io.reactivex.rxjava3.disposables.c cVar) {
        this.f62513a = cVar;
    }

    @Override
    public boolean cancel(boolean z10) {
        this.f62513a.dispose();
        return false;
    }

    @Override
    public Object get() {
        return null;
    }

    @Override
    public boolean isCancelled() {
        return false;
    }

    @Override
    public boolean isDone() {
        return false;
    }

    @Override
    public Object get(long j10, TimeUnit timeUnit) {
        return null;
    }
}
