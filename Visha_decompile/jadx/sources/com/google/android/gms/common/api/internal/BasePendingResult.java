package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ICancelToken;
import defpackage.k08;
import defpackage.lu8;
import defpackage.n2e;
import defpackage.p2e;
import defpackage.r2e;
import defpackage.s2e;
import defpackage.ubc;
import defpackage.ur8;
import defpackage.wd8;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

@KeepName
public abstract class BasePendingResult<R extends lu8> extends k08 {
    public static final ThreadLocal n = new n2e();
    public final a b;
    public final WeakReference c;
    public lu8 g;
    public Status h;
    public volatile boolean i;
    public boolean j;
    public boolean k;
    public ICancelToken l;

    @KeepName
    private r2e resultGuardian;
    public final Object a = new Object();
    public final CountDownLatch d = new CountDownLatch(1);
    public final ArrayList e = new ArrayList();
    public final AtomicReference f = new AtomicReference();
    public boolean m = false;

    public static class a extends s2e {
        public a(Looper looper) {
            super(looper);
        }

        @Override
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                Pair pair = (Pair) message.obj;
                ubc.a(pair.first);
                lu8 lu8Var = (lu8) pair.second;
                try {
                    throw null;
                } catch (RuntimeException e) {
                    BasePendingResult.l(lu8Var);
                    throw e;
                }
            }
            if (i == 2) {
                ((BasePendingResult) message.obj).e(Status.RESULT_TIMEOUT);
                return;
            }
            Log.wtf("BasePendingResult", "Don't know how to handle message: " + i, new Exception());
        }
    }

    public BasePendingResult(com.google.android.gms.common.api.c cVar) {
        this.b = new a(cVar != null ? cVar.c() : Looper.getMainLooper());
        this.c = new WeakReference(cVar);
    }

    public static void l(lu8 lu8Var) {
        if (lu8Var instanceof ur8) {
            try {
                ((ur8) lu8Var).release();
            } catch (RuntimeException e) {
                Log.w("BasePendingResult", "Unable to release ".concat(String.valueOf(lu8Var)), e);
            }
        }
    }

    @Override
    public final void b(k08.a aVar) {
        wd8.b(aVar != null, "Callback cannot be null.");
        synchronized (this.a) {
            try {
                if (f()) {
                    aVar.a(this.h);
                } else {
                    this.e.add(aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final lu8 c(long j, TimeUnit timeUnit) {
        if (j > 0) {
            wd8.k("await must not be called on the UI thread when time is greater than zero.");
        }
        wd8.p(!this.i, "Result has already been consumed.");
        wd8.p(true, "Cannot await if then() has been called.");
        try {
            if (!this.d.await(j, timeUnit)) {
                e(Status.RESULT_TIMEOUT);
            }
        } catch (InterruptedException unused) {
            e(Status.RESULT_INTERRUPTED);
        }
        wd8.p(f(), "Result is not ready.");
        return h();
    }

    public abstract lu8 d(Status status);

    public final void e(Status status) {
        synchronized (this.a) {
            try {
                if (!f()) {
                    g(d(status));
                    this.k = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean f() {
        return this.d.getCount() == 0;
    }

    public final void g(lu8 lu8Var) {
        synchronized (this.a) {
            try {
                if (this.k || this.j) {
                    l(lu8Var);
                    return;
                }
                f();
                wd8.p(!f(), "Results have already been set");
                wd8.p(!this.i, "Result has already been consumed");
                i(lu8Var);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final lu8 h() {
        lu8 lu8Var;
        synchronized (this.a) {
            wd8.p(!this.i, "Result has already been consumed.");
            wd8.p(f(), "Result is not ready.");
            lu8Var = this.g;
            this.g = null;
            this.i = true;
        }
        ubc.a(this.f.getAndSet(null));
        return (lu8) wd8.l(lu8Var);
    }

    public final void i(lu8 lu8Var) {
        this.g = lu8Var;
        this.h = lu8Var.getStatus();
        p2e p2eVar = null;
        this.l = null;
        this.d.countDown();
        if (!this.j && (this.g instanceof ur8)) {
            this.resultGuardian = new r2e(this, p2eVar);
        }
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((k08.a) arrayList.get(i)).a(this.h);
        }
        this.e.clear();
    }

    public final void k() {
        boolean z = true;
        if (!this.m && !((Boolean) n.get()).booleanValue()) {
            z = false;
        }
        this.m = z;
    }
}
