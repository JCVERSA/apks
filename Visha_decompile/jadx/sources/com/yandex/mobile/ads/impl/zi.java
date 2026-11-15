package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.zi;
import defpackage.y45;

public final class zi implements t3 {
    private final Handler a;
    private final i5 b;
    private ys c;

    public zi(Context context, o3 o3Var, g5 g5Var) {
        this(context, o3Var, g5Var, new Handler(Looper.getMainLooper()), new i5(context, o3Var, g5Var));
    }

    public static final void b(zi ziVar) {
        y45.j(ziVar, "this$0");
        ys ysVar = ziVar.c;
        if (ysVar != null) {
            ysVar.onAdLoaded();
        }
    }

    public static final void c(zi ziVar) {
        y45.j(ziVar, "this$0");
        ys ysVar = ziVar.c;
        if (ysVar != null) {
            ysVar.onAdClicked();
            ysVar.onLeftApplication();
        }
    }

    public static final void d(zi ziVar) {
        y45.j(ziVar, "this$0");
        ys ysVar = ziVar.c;
        if (ysVar != null) {
            ysVar.onReturnedToApplication();
        }
    }

    public final void a() {
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                zi.a(this.b);
            }
        });
    }

    @Override
    public final void onAdLoaded() {
        this.b.a();
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                zi.b(this.b);
            }
        });
    }

    public static final void a(zi ziVar) {
        y45.j(ziVar, "this$0");
        ys ysVar = ziVar.c;
        if (ysVar != null) {
            ysVar.closeBannerAd();
        }
    }

    public final void b() {
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                zi.c(this.b);
            }
        });
    }

    public zi(Context context, o3 o3Var, g5 g5Var, Handler handler, i5 i5Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(handler, "handler");
        y45.j(i5Var, "adLoadingResultReporter");
        this.a = handler;
        this.b = i5Var;
    }

    @Override
    public final void a(final w3 w3Var) {
        y45.j(w3Var, "error");
        this.b.a(w3Var.c());
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                zi.a(this.b, w3Var);
            }
        });
    }

    public final void c() {
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                zi.d(this.b);
            }
        });
    }

    public static final void a(zi ziVar, w3 w3Var) {
        y45.j(ziVar, "this$0");
        y45.j(w3Var, "$error");
        ys ysVar = ziVar.c;
        if (ysVar != null) {
            ysVar.a(w3Var);
        }
    }

    public final void a(final t4 t4Var) {
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                zi.a(this.b, t4Var);
            }
        });
    }

    public static final void a(zi ziVar, t4 t4Var) {
        y45.j(ziVar, "this$0");
        ys ysVar = ziVar.c;
        if (ysVar != null) {
            ysVar.a(t4Var);
        }
    }

    public final void a(o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        this.b.a(new y7(o3Var));
    }

    public final void a(ys ysVar) {
        this.c = ysVar;
        this.b.a(ysVar);
    }

    public final void a(sg0 sg0Var) {
        y45.j(sg0Var, "reportParameterManager");
        this.b.a(sg0Var);
    }
}
