package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.ln;
import defpackage.y45;
import java.util.concurrent.CopyOnWriteArrayList;
import org.greenrobot.greendao.generator.Schema;

public final class ln implements yp0 {
    private final Context a;
    private final lt0 b;
    private final ht0 c;
    private final xp0 d;
    private final fq0 e;
    private final wk1 f;
    private final CopyOnWriteArrayList<wp0> g;
    private pt h;

    public final class a implements md0 {
        private final v7 a;
        final ln b;

        public a(ln lnVar, v7 v7Var) {
            y45.j(v7Var, "adRequestData");
            this.b = lnVar;
            this.a = v7Var;
        }

        @Override
        public final void onAdShown() {
            this.b.b(this.a);
        }
    }

    public final class b implements pt {
        private final v7 a;
        final ln b;

        public b(ln lnVar, v7 v7Var) {
            y45.j(v7Var, "adRequestData");
            this.b = lnVar;
            this.a = v7Var;
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "error");
        }

        @Override
        public final void a(nt ntVar) {
            y45.j(ntVar, "interstitialAd");
            this.b.e.a(this.a, ntVar);
        }
    }

    public ln(Context context, en2 en2Var, lt0 lt0Var, ht0 ht0Var, xp0 xp0Var, fq0 fq0Var, wk1 wk1Var) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(lt0Var, "mainThreadUsageValidator");
        y45.j(ht0Var, "mainThreadExecutor");
        y45.j(xp0Var, "adItemLoadControllerFactory");
        y45.j(fq0Var, "preloadingCache");
        y45.j(wk1Var, "preloadingAvailabilityValidator");
        this.a = context;
        this.b = lt0Var;
        this.c = ht0Var;
        this.d = xp0Var;
        this.e = fq0Var;
        this.f = wk1Var;
        this.g = new CopyOnWriteArrayList<>();
    }

    public static final void c(ln lnVar, v7 v7Var) {
        y45.j(lnVar, "this$0");
        y45.j(v7Var, "$adRequestData");
        lnVar.f.getClass();
        if (wk1.a(v7Var) && lnVar.e.c()) {
            lnVar.a(v7Var, new b(lnVar, v7Var), "render");
        }
    }

    public final class c implements pt {
        public c() {
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "error");
            pt ptVar = ln.this.h;
            if (ptVar != null) {
                ptVar.a(w3Var);
            }
        }

        @Override
        public final void a(nt ntVar) {
            y45.j(ntVar, "interstitialAd");
            pt ptVar = ln.this.h;
            if (ptVar != null) {
                ptVar.a(ntVar);
            }
        }
    }

    public static final void b(ln lnVar, v7 v7Var) {
        y45.j(lnVar, "this$0");
        y45.j(v7Var, "$adRequestData");
        lnVar.f.getClass();
        if (!wk1.a(v7Var)) {
            lnVar.a(v7Var, lnVar.new c(), Schema.DEFAULT_NAME);
            return;
        }
        nt ntVarA = lnVar.e.a(v7Var);
        if (ntVarA == null) {
            lnVar.a(v7Var, lnVar.new c(), Schema.DEFAULT_NAME);
            return;
        }
        pt ptVar = lnVar.h;
        if (ptVar != null) {
            ptVar.a(ntVarA);
        }
    }

    @Override
    @MainThread
    public final void a() {
        this.b.a();
        this.c.a();
        for (wp0 wp0Var : this.g) {
            wp0Var.a((pt) null);
            wp0Var.e();
        }
        this.g.clear();
    }

    @MainThread
    public final void b(final v7 v7Var) {
        this.c.a(new Runnable() {
            @Override
            public final void run() {
                ln.c(this.b, v7Var);
            }
        });
    }

    @Override
    @MainThread
    public final void a(final v7 v7Var) {
        y45.j(v7Var, "adRequestData");
        this.b.a();
        if (this.h == null) {
            hp0.c("InterstitialAdLoader. InterstitialAdLoadListener is null on loading start. Please, use setAdLoadListener before loading Ad.", new Object[0]);
        }
        this.c.a(new Runnable() {
            @Override
            public final void run() {
                ln.b(this.b, v7Var);
            }
        });
    }

    @MainThread
    private final void a(v7 v7Var, pt ptVar, String str) {
        v7 v7VarA = v7.a(v7Var, null, str, 2047);
        wp0 wp0VarA = this.d.a(this.a, this, v7VarA, new a(this, v7VarA));
        this.g.add(wp0VarA);
        wp0VarA.a(v7VarA.a());
        wp0VarA.a(ptVar);
        wp0VarA.b(v7VarA);
    }

    @Override
    public final void a(jd0 jd0Var) {
        wp0 wp0Var = (wp0) jd0Var;
        y45.j(wp0Var, "loadController");
        if (this.h == null) {
            hp0.c("InterstitialAdLoader. InterstitialAdLoadListener is null on finished ad loading. Please, keep active listener until ad loading finished or use cancelLoading().", new Object[0]);
        }
        wp0Var.a((pt) null);
        this.g.remove(wp0Var);
    }

    @Override
    @MainThread
    public final void a(om2 om2Var) {
        this.b.a();
        this.h = om2Var;
    }
}
