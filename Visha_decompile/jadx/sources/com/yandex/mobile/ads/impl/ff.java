package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.ff;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Lambda;

public final class ff implements nf {
    private static final long g = TimeUnit.SECONDS.toMillis(30);
    private final ef a;
    private final ue b;
    private final Handler c;
    private final bf d;
    private boolean e;
    private final Object f;

    public static final class a extends Lambda implements c74 {
        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            ff.this.b();
            ff.this.d.getClass();
            bf.a();
            ff.b(ff.this);
            return zfb.a;
        }
    }

    public ff(ef efVar, ue ueVar) {
        y45.j(efVar, "appMetricaIdentifiersChangedObservable");
        y45.j(ueVar, "appMetricaAdapter");
        this.a = efVar;
        this.b = ueVar;
        this.c = new Handler(Looper.getMainLooper());
        this.d = new bf();
        this.f = new Object();
    }

    public static final void b(ff ffVar) {
        ffVar.getClass();
        sp0.b(new Object[0]);
        ffVar.a.a();
    }

    public final void a(Context context, aj0 aj0Var) {
        boolean z;
        y45.j(context, "context");
        y45.j(aj0Var, "observer");
        this.a.a(aj0Var);
        try {
            synchronized (this.f) {
                try {
                    if (this.e) {
                        z = false;
                    } else {
                        z = true;
                        this.e = true;
                    }
                    zfb zfbVar = zfb.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                sp0.a(new Object[0]);
                a();
                this.b.a(context, this);
            }
        } catch (Throwable unused) {
            b();
            sp0.c(new Object[0]);
        }
    }

    public final void b() {
        synchronized (this.f) {
            this.c.removeCallbacksAndMessages(null);
            this.e = false;
            zfb zfbVar = zfb.a;
        }
    }

    @Override
    public final void a(mf mfVar) {
        y45.j(mfVar, "error");
        b();
        this.d.a(mfVar);
        sp0.b(new Object[0]);
        this.a.a();
    }

    @Override
    public final void a(lf lfVar) {
        y45.j(lfVar, "params");
        sp0.d(lfVar);
        b();
        ef efVar = this.a;
        String strC = lfVar.c();
        efVar.a(new df(lfVar.b(), lfVar.a(), strC));
    }

    private final void a() {
        final a aVar = new a();
        this.c.postDelayed(new Runnable() {
            @Override
            public final void run() {
                ff.a(aVar);
            }
        }, g);
    }

    public static final void a(c74 c74Var) {
        y45.j(c74Var, "$tmp0");
        c74Var.invoke();
    }
}
