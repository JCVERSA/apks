package io.reactivex.rxjava3.internal.schedulers;

import androidx.compose.animation.core.j0;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

final class c implements Callable, io.reactivex.rxjava3.disposables.c {

    static final FutureTask f62514f = new FutureTask(Functions.f62324b, null);

    final Runnable f62515a;

    final ExecutorService f62518d;

    Thread f62519e;

    final AtomicReference f62517c = new AtomicReference();

    final AtomicReference f62516b = new AtomicReference();

    c(Runnable runnable, ExecutorService executorService) {
        this.f62515a = runnable;
        this.f62518d = executorService;
    }

    @Override
    public Void call() {
        this.f62519e = Thread.currentThread();
        try {
            this.f62515a.run();
            this.f62519e = null;
            c(this.f62518d.submit(this));
            return null;
        } catch (Throwable th2) {
            this.f62519e = null;
            dy.a.r(th2);
            throw th2;
        }
    }

    void b(Future future) {
        Future future2;
        do {
            future2 = (Future) this.f62517c.get();
            if (future2 == f62514f) {
                future.cancel(this.f62519e != Thread.currentThread());
                return;
            }
        } while (!j0.a(this.f62517c, future2, future));
    }

    void c(Future future) {
        Future future2;
        do {
            future2 = (Future) this.f62516b.get();
            if (future2 == f62514f) {
                future.cancel(this.f62519e != Thread.currentThread());
                return;
            }
        } while (!j0.a(this.f62516b, future2, future));
    }

    @Override
    public void dispose() {
        AtomicReference atomicReference = this.f62517c;
        FutureTask futureTask = f62514f;
        Future future = (Future) atomicReference.getAndSet(futureTask);
        if (future != null && future != futureTask) {
            future.cancel(this.f62519e != Thread.currentThread());
        }
        Future future2 = (Future) this.f62516b.getAndSet(futureTask);
        if (future2 == null || future2 == futureTask) {
            return;
        }
        future2.cancel(this.f62519e != Thread.currentThread());
    }

    @Override
    public boolean isDisposed() {
        return this.f62517c.get() == f62514f;
    }
}
