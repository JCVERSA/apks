package com.yandex.mobile.ads.impl;

import android.os.Looper;
import androidx.annotation.Nullable;
import java.util.concurrent.TimeoutException;

public final class ni1 {
    private final b a;
    private final a b;
    private final jp c;
    private int d;

    @Nullable
    private Object e;
    private Looper f;
    private boolean g;
    private boolean h;
    private boolean i;

    public interface a {
    }

    public interface b {
        void a(int i, @Nullable Object obj) throws m60;
    }

    public ni1(a aVar, b bVar, i52 i52Var, int i, jp jpVar, Looper looper) {
        this.b = aVar;
        this.a = bVar;
        this.f = looper;
        this.c = jpVar;
    }

    public final synchronized void a(long j) throws InterruptedException, TimeoutException {
        boolean z;
        if (!this.g) {
            throw new IllegalStateException();
        }
        if (this.f.getThread() == Thread.currentThread()) {
            throw new IllegalStateException();
        }
        long jB = this.c.b() + j;
        while (true) {
            z = this.i;
            if (z || j <= 0) {
                break;
            }
            this.c.getClass();
            wait(j);
            j = jB - this.c.b();
        }
        if (!z) {
            throw new TimeoutException("Message delivery timed out.");
        }
    }

    @Nullable
    public final Object b() {
        return this.e;
    }

    public final b c() {
        return this.a;
    }

    public final int d() {
        return this.d;
    }

    public final ni1 e() {
        if (this.g) {
            throw new IllegalStateException();
        }
        this.g = true;
        ((t60) this.b).c(this);
        return this;
    }

    public final Looper a() {
        return this.f;
    }

    public final synchronized void a(boolean z) {
        this.h = z | this.h;
        this.i = true;
        notifyAll();
    }

    public final ni1 a(@Nullable Object obj) {
        if (!this.g) {
            this.e = obj;
            return this;
        }
        throw new IllegalStateException();
    }

    public final ni1 a(int i) {
        if (!this.g) {
            this.d = i;
            return this;
        }
        throw new IllegalStateException();
    }
}
