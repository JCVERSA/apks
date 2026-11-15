package io.appmetrica.analytics.impl;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

public final class G9 implements IHandlerExecutor {
    public final Looper a;
    public final Handler b;
    public final HandlerThreadC2613ib c;

    public G9(@NonNull String str) {
        this(a(str));
    }

    public static HandlerThreadC2613ib a(String str) {
        HandlerThreadC2613ib handlerThreadC2613ib = new HandlerThreadC2613ib(str + "-" + ThreadFactoryC3013yd.a.incrementAndGet());
        handlerThreadC2613ib.start();
        return handlerThreadC2613ib;
    }

    @Override
    public final void execute(@NonNull Runnable runnable) {
        this.b.post(runnable);
    }

    @Override
    public final void executeDelayed(@NonNull Runnable runnable, long j) {
        this.b.postDelayed(runnable, TimeUnit.MILLISECONDS.toMillis(j));
    }

    @Override
    @NonNull
    public final Handler getHandler() {
        return this.b;
    }

    @Override
    @NonNull
    public final Looper getLooper() {
        return this.a;
    }

    @Override
    public final boolean isRunning() {
        boolean z;
        HandlerThreadC2613ib handlerThreadC2613ib = this.c;
        synchronized (handlerThreadC2613ib) {
            z = handlerThreadC2613ib.a;
        }
        return z;
    }

    @Override
    public final void remove(@NonNull Runnable runnable) {
        this.b.removeCallbacks(runnable);
    }

    @Override
    public final void removeAll() {
        this.b.removeCallbacksAndMessages(null);
    }

    @Override
    public final void stopRunning() {
        HandlerThreadC2613ib handlerThreadC2613ib = this.c;
        synchronized (handlerThreadC2613ib) {
            handlerThreadC2613ib.a = false;
            handlerThreadC2613ib.interrupt();
        }
    }

    @Override
    public final <T> Future<T> submit(Callable<T> callable) {
        FutureTask futureTask = new FutureTask(callable);
        this.b.post(futureTask);
        return futureTask;
    }

    public G9(HandlerThreadC2613ib handlerThreadC2613ib) {
        this(handlerThreadC2613ib, handlerThreadC2613ib.getLooper(), new Handler(handlerThreadC2613ib.getLooper()));
    }

    @VisibleForTesting
    public G9(@NonNull HandlerThreadC2613ib handlerThreadC2613ib, @NonNull Looper looper, @NonNull Handler handler) {
        this.c = handlerThreadC2613ib;
        this.a = looper;
        this.b = handler;
    }

    @Override
    public final void executeDelayed(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
        this.b.postDelayed(runnable, timeUnit.toMillis(j));
    }
}
