package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.p61;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class p61 {
    private final j61 a;
    private final Handler b;
    private final i5 c;
    private vt d;
    private bu e;
    private ku f;

    public p61(Context context, o3 o3Var, g5 g5Var, j61 j61Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(j61Var, "nativeAdLoadingFinishedListener");
        this.a = j61Var;
        this.b = new Handler(Looper.getMainLooper());
        this.c = new i5(context, o3Var, g5Var);
    }

    public final void a() {
        this.b.removeCallbacksAndMessages(null);
    }

    private final void a(final w3 w3Var) {
        this.c.a(w3Var.c());
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                p61.a(this.b, w3Var);
            }
        });
    }

    public final void b(w3 w3Var) {
        y45.j(w3Var, "error");
        a(w3Var);
    }

    public static final void a(p61 p61Var, w3 w3Var) {
        y45.j(p61Var, "this$0");
        y45.j(w3Var, "$error");
        vt vtVar = p61Var.d;
        if (vtVar != null) {
            vtVar.a(w3Var);
        }
        bu buVar = p61Var.e;
        if (buVar != null) {
            buVar.a(w3Var);
        }
        ku kuVar = p61Var.f;
        if (kuVar != null) {
            kuVar.a(w3Var);
        }
        p61Var.a.a();
    }

    public final void a(final q61 q61Var) {
        y45.j(q61Var, "nativeAd");
        a4.a(ts.g.a());
        this.c.a();
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                p61.a(this.b, q61Var);
            }
        });
    }

    public static final void a(p61 p61Var, q61 q61Var) {
        y45.j(p61Var, "this$0");
        y45.j(q61Var, "$nativeAd");
        vt vtVar = p61Var.d;
        if (vtVar != null) {
            if (q61Var instanceof t91) {
                vtVar.b(q61Var);
            } else {
                vtVar.a(q61Var);
            }
        }
        p61Var.a.a();
    }

    public final void a(final ArrayList arrayList) {
        y45.j(arrayList, "nativeAds");
        a4.a(ts.g.a());
        this.c.a();
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                p61.a(this.b, arrayList);
            }
        });
    }

    public static final void a(p61 p61Var, List list) {
        y45.j(p61Var, "this$0");
        y45.j(list, "$nativeAds");
        bu buVar = p61Var.e;
        if (buVar != null) {
            buVar.onAdsLoaded(list);
        }
        p61Var.a.a();
    }

    public final void a(final k81 k81Var) {
        y45.j(k81Var, "sliderAd");
        a4.a(ts.g.a());
        this.c.a();
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                p61.a(this.b, k81Var);
            }
        });
    }

    public static final void a(p61 p61Var, b02 b02Var) {
        y45.j(p61Var, "this$0");
        y45.j(b02Var, "$sliderAd");
        ku kuVar = p61Var.f;
        if (kuVar != null) {
            kuVar.a(b02Var);
        }
        p61Var.a.a();
    }

    public final void a(o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        this.c.a(new y7(o3Var));
    }

    public final void a(vt vtVar) {
        this.d = vtVar;
        this.c.a(vtVar, this.e, this.f);
    }

    public final void a(bu buVar) {
        this.e = buVar;
        this.c.a(this.d, buVar, this.f);
    }

    public final void a(d71 d71Var) {
        y45.j(d71Var, "reportParameterManager");
        this.c.a(d71Var);
    }

    public final void a(ku kuVar) {
        this.f = kuVar;
        this.c.a(this.d, this.e, kuVar);
    }
}
