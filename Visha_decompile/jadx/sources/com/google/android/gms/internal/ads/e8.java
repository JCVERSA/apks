package com.google.android.gms.internal.ads;

import defpackage.g8i;
import defpackage.im5;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;

public abstract class e8 extends AbstractExecutorService implements g8i {
    @Override
    public final im5 i(Runnable runnable) {
        return (im5) super.submit(runnable);
    }

    @Override
    public final im5 m(Callable callable) {
        return (im5) super.submit(callable);
    }

    @Override
    public final RunnableFuture newTaskFor(Runnable runnable, Object obj) {
        return zzgct.zze(runnable, obj);
    }

    @Override
    public final Future submit(Runnable runnable) {
        return (im5) super.submit(runnable);
    }

    @Override
    public final RunnableFuture newTaskFor(Callable callable) {
        return new zzgct(callable);
    }

    @Override
    public final Future submit(Runnable runnable, Object obj) {
        return (im5) super.submit(runnable, obj);
    }

    @Override
    public final Future submit(Callable callable) {
        return (im5) super.submit(callable);
    }
}
