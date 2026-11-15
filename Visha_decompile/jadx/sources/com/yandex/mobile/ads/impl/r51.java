package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.r51;
import defpackage.y45;

public final class r51 implements n0 {
    private final Handler a;
    private st b;

    public r51() {
        this(new Handler(Looper.getMainLooper()));
    }

    public static final void c(r51 r51Var) {
        y45.j(r51Var, "this$0");
        st stVar = r51Var.b;
        if (stVar != null) {
            stVar.onReturnedToApplication();
        }
    }

    public final void a() {
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                r51.a(this.b);
            }
        });
    }

    @Override
    public final void onLeftApplication() {
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                r51.b(this.b);
            }
        });
    }

    @Override
    public final void onReturnedToApplication() {
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                r51.c(this.b);
            }
        });
    }

    public static final void a(r51 r51Var) {
        y45.j(r51Var, "this$0");
        st stVar = r51Var.b;
        if (stVar != null) {
            stVar.closeNativeAd();
        }
    }

    public static final void b(r51 r51Var) {
        y45.j(r51Var, "this$0");
        st stVar = r51Var.b;
        if (stVar != null) {
            stVar.onAdClicked();
        }
        st stVar2 = r51Var.b;
        if (stVar2 != null) {
            stVar2.onLeftApplication();
        }
    }

    public r51(Handler handler) {
        y45.j(handler, "handler");
        this.a = handler;
    }

    public final void a(final t4 t4Var) {
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                r51.a(this.b, t4Var);
            }
        });
    }

    public static final void a(r51 r51Var, t4 t4Var) {
        y45.j(r51Var, "this$0");
        st stVar = r51Var.b;
        if (stVar != null) {
            stVar.a(t4Var);
        }
    }

    public final void a(st stVar) {
        this.b = stVar;
    }
}
