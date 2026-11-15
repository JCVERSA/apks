package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.concurrent.locks.ReentrantLock;

public final class D9 {
    public final ReentrantLock a;
    public final C2537fa b;

    public D9(Context context, String str) {
        this(new ReentrantLock(), new C2537fa(context, str));
    }

    public final void a() {
        this.a.lock();
        this.b.a();
    }

    public final void b() {
        this.b.b();
        this.a.unlock();
    }

    public final void c() {
        C2537fa c2537fa = this.b;
        synchronized (c2537fa) {
            c2537fa.b();
            c2537fa.a.delete();
        }
        this.a.unlock();
    }

    public D9(ReentrantLock reentrantLock, C2537fa c2537fa) {
        this.a = reentrantLock;
        this.b = c2537fa;
    }
}
