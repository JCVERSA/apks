package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.oc;
import defpackage.y45;
import defpackage.zfb;

public final class oc implements sc {
    private static final Object f = new Object();
    private static volatile oc g;
    public static final int h = 0;
    private final Handler a;
    private final tc b;
    private final uc c;
    private boolean d;
    private final cz e;

    public static final class a {
        public static oc a(Context context) {
            oc ocVar;
            y45.j(context, "context");
            oc ocVar2 = oc.g;
            if (ocVar2 != null) {
                return ocVar2;
            }
            synchronized (oc.f) {
                ocVar = oc.g;
                if (ocVar == null) {
                    ocVar = new oc(context);
                    oc.g = ocVar;
                }
            }
            return ocVar;
        }
    }

    public oc(Context context) {
        this(new Handler(Looper.getMainLooper()), new tc(), new uc(context), new wc());
    }

    public static final void b(oc ocVar) {
        y45.j(ocVar, "this$0");
        ocVar.e();
        ocVar.b.a();
    }

    private final void d() {
        this.a.postDelayed(new Runnable() {
            @Override
            public final void run() {
                oc.b(this.b);
            }
        }, this.e.a());
    }

    private final void e() {
        synchronized (f) {
            this.a.removeCallbacksAndMessages(null);
            this.d = false;
            zfb zfbVar = zfb.a;
        }
    }

    public final void a(vc vcVar) {
        y45.j(vcVar, "listener");
        this.b.b(vcVar);
    }

    @Override
    public final void a(nc ncVar) {
        y45.j(ncVar, "advertisingInfoHolder");
        e();
        this.b.b(ncVar);
    }

    public final void b(vc vcVar) {
        boolean z;
        y45.j(vcVar, "listener");
        this.b.a(vcVar);
        synchronized (f) {
            try {
                if (this.d) {
                    z = false;
                } else {
                    z = true;
                    this.d = true;
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            d();
            this.c.a(this);
        }
    }

    private oc(Handler handler, tc tcVar, uc ucVar, wc wcVar) {
        this.a = handler;
        this.b = tcVar;
        this.c = ucVar;
        wcVar.getClass();
        this.e = wc.a();
    }

    @Override
    public final void a() {
        e();
        this.b.a();
    }
}
