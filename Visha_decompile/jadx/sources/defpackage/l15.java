package defpackage;

import io.reactivex.internal.functions.Functions;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

public final class l15 implements Callable, rc2 {
    public static final FutureTask g = new FutureTask(Functions.b, null);
    public final Runnable b;
    public final ExecutorService e;
    public Thread f;
    public final AtomicReference d = new AtomicReference();
    public final AtomicReference c = new AtomicReference();

    public l15(Runnable runnable, ExecutorService executorService) {
        this.b = runnable;
        this.e = executorService;
    }

    @Override
    public Void call() {
        this.f = Thread.currentThread();
        try {
            this.b.run();
            c(this.e.submit(this));
            this.f = null;
        } catch (Throwable th) {
            this.f = null;
            yw8.s(th);
        }
        return null;
    }

    public void b(Future future) {
        Future future2;
        do {
            future2 = (Future) this.d.get();
            if (future2 == g) {
                future.cancel(this.f != Thread.currentThread());
                return;
            }
        } while (!wk5.a(this.d, future2, future));
    }

    public void c(Future future) {
        Future future2;
        do {
            future2 = (Future) this.c.get();
            if (future2 == g) {
                future.cancel(this.f != Thread.currentThread());
                return;
            }
        } while (!wk5.a(this.c, future2, future));
    }

    @Override
    public void dispose() {
        AtomicReference atomicReference = this.d;
        FutureTask futureTask = g;
        Future future = (Future) atomicReference.getAndSet(futureTask);
        if (future != null && future != futureTask) {
            future.cancel(this.f != Thread.currentThread());
        }
        Future future2 = (Future) this.c.getAndSet(futureTask);
        if (future2 == null || future2 == futureTask) {
            return;
        }
        future2.cancel(this.f != Thread.currentThread());
    }

    @Override
    public boolean isDisposed() {
        return this.d.get() == g;
    }
}
