package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.c11;
import defpackage.wn8;
import defpackage.y45;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class c11 {
    private final Executor a;
    private final Executor b;

    public c11() {
        Executor executor = new Executor() {
            @Override
            public final void execute(Runnable runnable) {
                c11.a(runnable);
            }
        };
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(wn8.k(Runtime.getRuntime().availableProcessors() - 1, 2, 4));
        y45.i(executorServiceNewFixedThreadPool, "newFixedThreadPool(...)");
        this(executor, executorServiceNewFixedThreadPool);
    }

    public static final void a(Runnable runnable) {
        y45.j(runnable, "r");
        new Handler(Looper.getMainLooper()).post(runnable);
    }

    public final Executor b() {
        return this.a;
    }

    public final Executor a() {
        return this.b;
    }

    public c11(Executor executor, Executor executor2) {
        y45.j(executor, "mainThreadExecutor");
        y45.j(executor2, "backgroundExecutor");
        this.a = executor;
        this.b = executor2;
    }
}
