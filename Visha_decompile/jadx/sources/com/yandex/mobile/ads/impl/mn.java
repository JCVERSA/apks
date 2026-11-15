package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.mn;
import defpackage.y45;
import java.util.concurrent.CopyOnWriteArrayList;
import org.greenrobot.greendao.generator.Schema;

public final class mn implements fs1 {
    private final Context a;
    private final lt0 b;
    private final ht0 c;
    private final es1 d;
    private final rs1 e;
    private final wk1 f;
    private final CopyOnWriteArrayList<ds1> g;
    private iu h;

    public final class a implements iu {
        private final v7 a;
        final mn b;

        public a(mn mnVar, v7 v7Var) {
            y45.j(v7Var, "adRequestData");
            this.b = mnVar;
            this.a = v7Var;
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "error");
        }

        @Override
        public final void a(gu guVar) {
            y45.j(guVar, "rewardedAd");
            this.b.e.a(this.a, guVar);
        }
    }

    public final class c implements md0 {
        private final v7 a;
        final mn b;

        public c(mn mnVar, v7 v7Var) {
            y45.j(v7Var, "adRequestData");
            this.b = mnVar;
            this.a = v7Var;
        }

        @Override
        public final void onAdShown() {
            this.b.b(this.a);
        }
    }

    public mn(Context context, en2 en2Var, lt0 lt0Var, ht0 ht0Var, es1 es1Var, rs1 rs1Var, wk1 wk1Var) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(lt0Var, "mainThreadUsageValidator");
        y45.j(ht0Var, "mainThreadExecutor");
        y45.j(es1Var, "adItemLoadControllerFactory");
        y45.j(rs1Var, "preloadingCache");
        y45.j(wk1Var, "preloadingAvailabilityValidator");
        this.a = context;
        this.b = lt0Var;
        this.c = ht0Var;
        this.d = es1Var;
        this.e = rs1Var;
        this.f = wk1Var;
        this.g = new CopyOnWriteArrayList<>();
    }

    public static final void c(mn mnVar, v7 v7Var) {
        y45.j(mnVar, "this$0");
        y45.j(v7Var, "$adRequestData");
        mnVar.f.getClass();
        if (wk1.a(v7Var) && mnVar.e.c()) {
            mnVar.a(v7Var, new a(mnVar, v7Var), "render");
        }
    }

    public final class b implements iu {
        public b() {
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "error");
            iu iuVar = mn.this.h;
            if (iuVar != null) {
                iuVar.a(w3Var);
            }
        }

        @Override
        public final void a(gu guVar) {
            y45.j(guVar, "rewardedAd");
            iu iuVar = mn.this.h;
            if (iuVar != null) {
                iuVar.a(guVar);
            }
        }
    }

    public static final void b(mn mnVar, v7 v7Var) {
        y45.j(mnVar, "this$0");
        y45.j(v7Var, "$adRequestData");
        mnVar.f.getClass();
        if (!wk1.a(v7Var)) {
            mnVar.a(v7Var, mnVar.new b(), Schema.DEFAULT_NAME);
            return;
        }
        gu guVarA = mnVar.e.a(v7Var);
        if (guVarA == null) {
            mnVar.a(v7Var, mnVar.new b(), Schema.DEFAULT_NAME);
            return;
        }
        iu iuVar = mnVar.h;
        if (iuVar != null) {
            iuVar.a(guVarA);
        }
    }

    @Override
    @MainThread
    public final void a() {
        this.b.a();
        this.c.a();
        for (ds1 ds1Var : this.g) {
            ds1Var.a((iu) null);
            ds1Var.e();
        }
        this.g.clear();
    }

    @MainThread
    public final void b(final v7 v7Var) {
        this.c.a(new Runnable() {
            @Override
            public final void run() {
                mn.c(this.b, v7Var);
            }
        });
    }

    @Override
    @MainThread
    public final void a(final v7 v7Var) {
        y45.j(v7Var, "adRequestData");
        this.b.a();
        if (this.h == null) {
            hp0.c("RewardedAdLoader. RewardedAdLoadListener is on loading start. Please, use setAdLoadListener before loading Ad.", new Object[0]);
        }
        this.c.a(new Runnable() {
            @Override
            public final void run() {
                mn.b(this.b, v7Var);
            }
        });
    }

    @MainThread
    private final void a(v7 v7Var, iu iuVar, String str) {
        v7 v7VarA = v7.a(v7Var, null, str, 2047);
        ds1 ds1VarA = this.d.a(this.a, this, v7VarA, new c(this, v7VarA));
        this.g.add(ds1VarA);
        ds1VarA.a(v7VarA.a());
        ds1VarA.a(iuVar);
        ds1VarA.b(v7VarA);
    }

    @Override
    public final void a(jd0 jd0Var) {
        ds1 ds1Var = (ds1) jd0Var;
        y45.j(ds1Var, "loadController");
        if (this.h == null) {
            hp0.c("RewardedAdLoader. RewardedAdLoadListener is null on finished ad loading. Please, keep active listener until ad loading finished or use cancelLoading().", new Object[0]);
        }
        ds1Var.a((iu) null);
        this.g.remove(ds1Var);
    }

    @Override
    @MainThread
    public final void a(dn2 dn2Var) {
        this.b.a();
        this.h = dn2Var;
    }
}
