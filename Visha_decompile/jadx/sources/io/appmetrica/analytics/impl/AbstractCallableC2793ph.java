package io.appmetrica.analytics.impl;

import android.content.Intent;
import android.os.RemoteException;
import defpackage.zfb;
import io.appmetrica.analytics.internal.IAppMetricaService;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;

public abstract class AbstractCallableC2793ph implements Callable {
    public static final C2768oh d = new C2768oh();
    public final C2602i0 a;
    public final Ck b;
    public boolean c;

    public AbstractCallableC2793ph(C2602i0 c2602i0, Ck ck) {
        this.a = c2602i0;
        this.b = ck;
    }

    public abstract void a(IAppMetricaService iAppMetricaService);

    public void a(Throwable th) {
    }

    public final C2602i0 b() {
        return this.a;
    }

    public boolean c() {
        C2602i0 c2602i0 = this.a;
        synchronized (c2602i0) {
            try {
                if (c2602i0.d == null) {
                    c2602i0.e = new CountDownLatch(1);
                    Intent intentA = AbstractC2497dk.a(c2602i0.a);
                    try {
                        c2602i0.g.b(c2602i0.a);
                        c2602i0.a.bindService(intentA, c2602i0.i, 1);
                    } catch (Throwable unused) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.a.a(5000L);
        return true;
    }

    @Override
    public Object call() {
        a();
        return zfb.a;
    }

    public final boolean d() {
        return this.c;
    }

    public final void a(boolean z) {
        this.c = z;
    }

    public void a() {
        IAppMetricaService iAppMetricaService;
        try {
            if (this.c) {
                return;
            }
            this.c = true;
            int i = 0;
            do {
                C2602i0 c2602i0 = this.a;
                synchronized (c2602i0) {
                    iAppMetricaService = c2602i0.d;
                }
                if (iAppMetricaService != null) {
                    try {
                        a(iAppMetricaService);
                        Ck ck = this.b;
                        if (ck != null && !((C2420ai) ck).a()) {
                            return;
                        }
                        this.a.c();
                        return;
                    } catch (RemoteException unused) {
                    }
                }
                i++;
                if (!c() || S1.e.get()) {
                    return;
                }
            } while (i < 3);
        } catch (Throwable th) {
            a(th);
        }
    }
}
