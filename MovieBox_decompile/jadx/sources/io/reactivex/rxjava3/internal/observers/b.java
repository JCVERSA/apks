package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.CountDownLatch;

public abstract class b extends CountDownLatch implements o, io.reactivex.rxjava3.disposables.c {

    Object f62342a;

    Throwable f62343b;

    io.reactivex.rxjava3.disposables.c f62344c;

    volatile boolean f62345d;

    public b() {
        super(1);
    }

    public final Object a() {
        if (getCount() != 0) {
            try {
                io.reactivex.rxjava3.internal.util.b.a();
                await();
            } catch (InterruptedException e10) {
                dispose();
                throw ExceptionHelper.g(e10);
            }
        }
        Throwable th2 = this.f62343b;
        if (th2 == null) {
            return this.f62342a;
        }
        throw ExceptionHelper.g(th2);
    }

    @Override
    public final void dispose() {
        this.f62345d = true;
        io.reactivex.rxjava3.disposables.c cVar = this.f62344c;
        if (cVar != null) {
            cVar.dispose();
        }
    }

    @Override
    public final boolean isDisposed() {
        return this.f62345d;
    }

    @Override
    public final void onComplete() {
        countDown();
    }

    @Override
    public final void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        this.f62344c = cVar;
        if (this.f62345d) {
            cVar.dispose();
        }
    }
}
