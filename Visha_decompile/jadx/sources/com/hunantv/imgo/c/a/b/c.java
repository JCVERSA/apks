package com.hunantv.imgo.c.a.b;

import android.text.TextUtils;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

class c extends AbstractExecutorService implements a {
    private final e a;

    public c(b.C0128b c0128b) {
        this.a = new e(c0128b);
    }

    @Override
    public ExecutorService a() {
        return this;
    }

    @Override
    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        return false;
    }

    @Override
    public void execute(Runnable runnable) {
        a(runnable, "", 0, 10);
    }

    @Override
    public boolean isShutdown() {
        return false;
    }

    @Override
    public boolean isTerminated() {
        return false;
    }

    @Override
    public void shutdown() {
    }

    @Override
    public List<Runnable> shutdownNow() {
        return null;
    }

    @Override
    public void a(Runnable runnable, String str, int i, int i2) {
        if (TextUtils.isEmpty(str)) {
            this.a.a(runnable);
        } else {
            this.a.a(runnable, str, 0, i2);
        }
    }

    @Override
    public void a(String str) {
        this.a.a(str);
    }
}
