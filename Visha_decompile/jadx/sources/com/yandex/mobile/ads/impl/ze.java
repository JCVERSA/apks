package com.yandex.mobile.ads.impl;

import android.os.Handler;
import com.yandex.mobile.ads.impl.ze;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import java.util.HashSet;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Lambda;

public final class ze implements hi {
    private static final long f = TimeUnit.SECONDS.toMillis(30);
    private static final Object g = new Object();
    private final ye a;
    private final bf b;
    private final Handler c;
    private final WeakHashMap<ii, Object> d;
    private boolean e;

    public final class a implements xe {
        public a() {
        }

        @Override
        public final void a(String str) {
            ze.this.a();
        }
    }

    public static final class b extends Lambda implements c74 {
        public b() {
            super(0);
        }

        @Override
        public final Object invoke() {
            ze.this.b.getClass();
            bf.a();
            ze.this.a();
            return zfb.a;
        }
    }

    public ze(ye yeVar, bf bfVar, Handler handler) {
        y45.j(yeVar, "appMetricaAutograbLoader");
        y45.j(bfVar, "appMetricaErrorProvider");
        y45.j(handler, "stopStartupParamsRequestHandler");
        this.a = yeVar;
        this.b = bfVar;
        this.c = handler;
        this.d = new WeakHashMap<>();
    }

    private final void c() {
        synchronized (g) {
            this.c.removeCallbacksAndMessages(null);
            this.e = false;
            zfb zfbVar = zfb.a;
        }
    }

    private final void d() {
        boolean z;
        synchronized (g) {
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
            b();
            this.a.a(new a());
        }
    }

    public final void a() {
        HashSet hashSet;
        sp0.a(new Object[0]);
        synchronized (g) {
            hashSet = new HashSet(this.d.keySet());
            this.d.clear();
            c();
            zfb zfbVar = zfb.a;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((ii) it.next()).a(null);
        }
    }

    @Override
    public final void b(ii iiVar) {
        y45.j(iiVar, "autograbRequestListener");
        synchronized (g) {
            this.d.remove(iiVar);
        }
    }

    private final void b() {
        final b bVar = new b();
        this.c.postDelayed(new Runnable() {
            @Override
            public final void run() {
                ze.a(bVar);
            }
        }, f);
    }

    public static final void a(c74 c74Var) {
        y45.j(c74Var, "$tmp0");
        c74Var.invoke();
    }

    @Override
    public final void a(ii iiVar) {
        y45.j(iiVar, "autograbRequestListener");
        synchronized (g) {
            this.d.put(iiVar, null);
        }
        try {
            d();
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
            this.b.getClass();
            bf.b();
            a();
        }
    }
}
