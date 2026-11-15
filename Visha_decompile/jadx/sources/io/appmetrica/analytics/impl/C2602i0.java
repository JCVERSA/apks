package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.internal.IAppMetricaService;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class C2602i0 {
    public static final long j = TimeUnit.SECONDS.toMillis(10);
    public final Context a;
    public final ICommonExecutor b;
    public CountDownLatch e;
    public final M1 g;
    public IAppMetricaService d = null;
    public final Object f = new Object();
    public final RunnableC2552g0 h = new RunnableC2552g0(this);
    public final ServiceConnectionC2577h0 i = new ServiceConnectionC2577h0(this);
    public boolean c = false;

    public C2602i0(Context context, ICommonExecutor iCommonExecutor, M1 m1) {
        this.a = context.getApplicationContext();
        this.b = iCommonExecutor;
        this.g = m1;
    }

    public final synchronized boolean a() {
        return this.d != null;
    }

    public final void b() {
        synchronized (this.f) {
            this.b.remove(this.h);
        }
    }

    public final void c() {
        ICommonExecutor iCommonExecutor = this.b;
        synchronized (this.f) {
            try {
                iCommonExecutor.remove(this.h);
                if (!this.c) {
                    iCommonExecutor.executeDelayed(this.h, j);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(Long l) {
        try {
            synchronized (this) {
                try {
                    CountDownLatch countDownLatch = this.e;
                    if (countDownLatch == null) {
                        return;
                    }
                    countDownLatch.await(l.longValue(), TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (InterruptedException unused) {
        }
    }
}
