package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.in;
import defpackage.y45;
import java.util.concurrent.CopyOnWriteArrayList;
import org.greenrobot.greendao.generator.Schema;

@MainThread
public final class in implements xf {
    private final Context a;
    private final lt0 b;
    private final ht0 c;
    private final zf d;
    private final ag e;
    private final wk1 f;
    private final CopyOnWriteArrayList<wf> g;
    private ws h;

    public final class a implements md0 {
        private final v7 a;
        final in b;

        public a(in inVar, v7 v7Var) {
            y45.j(v7Var, "adRequestData");
            this.b = inVar;
            this.a = v7Var;
        }

        @Override
        public final void onAdShown() {
            this.b.b(this.a);
        }
    }

    public final class b implements ws {
        private final v7 a;
        final in b;

        public b(in inVar, v7 v7Var) {
            y45.j(v7Var, "adRequestData");
            this.b = inVar;
            this.a = v7Var;
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "error");
        }

        @Override
        public final void a(us usVar) {
            y45.j(usVar, "appOpenAd");
            this.b.e.a(this.a, usVar);
        }
    }

    public in(Context context, en2 en2Var, lt0 lt0Var, ht0 ht0Var, zf zfVar, ag agVar, wk1 wk1Var) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(lt0Var, "mainThreadUsageValidator");
        y45.j(ht0Var, "mainThreadExecutor");
        y45.j(zfVar, "adLoadControllerFactory");
        y45.j(agVar, "preloadingCache");
        y45.j(wk1Var, "preloadingAvailabilityValidator");
        this.a = context;
        this.b = lt0Var;
        this.c = ht0Var;
        this.d = zfVar;
        this.e = agVar;
        this.f = wk1Var;
        this.g = new CopyOnWriteArrayList<>();
    }

    public static final void c(in inVar, v7 v7Var) {
        y45.j(inVar, "this$0");
        y45.j(v7Var, "$adRequestData");
        inVar.f.getClass();
        if (wk1.a(v7Var) && inVar.e.c()) {
            inVar.a(v7Var, new b(inVar, v7Var), "render");
        }
    }

    public final class c implements ws {
        public c() {
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "error");
            ws wsVar = in.this.h;
            if (wsVar != null) {
                wsVar.a(w3Var);
            }
        }

        @Override
        public final void a(us usVar) {
            y45.j(usVar, "appOpenAd");
            ws wsVar = in.this.h;
            if (wsVar != null) {
                wsVar.a(usVar);
            }
        }
    }

    public static final void b(in inVar, v7 v7Var) {
        y45.j(inVar, "this$0");
        y45.j(v7Var, "$adRequestData");
        inVar.f.getClass();
        if (!wk1.a(v7Var)) {
            inVar.a(v7Var, inVar.new c(), Schema.DEFAULT_NAME);
            return;
        }
        us usVarA = inVar.e.a(v7Var);
        if (usVarA == null) {
            inVar.a(v7Var, inVar.new c(), Schema.DEFAULT_NAME);
            return;
        }
        ws wsVar = inVar.h;
        if (wsVar != null) {
            wsVar.a(usVarA);
        }
    }

    @Override
    @MainThread
    public final void a() {
        this.b.a();
        this.c.a();
        for (wf wfVar : this.g) {
            wfVar.a((ws) null);
            wfVar.e();
        }
        this.g.clear();
    }

    @MainThread
    public final void b(final v7 v7Var) {
        this.c.a(new Runnable() {
            @Override
            public final void run() {
                in.c(this.b, v7Var);
            }
        });
    }

    @Override
    @MainThread
    public final void a(final v7 v7Var) {
        y45.j(v7Var, "adRequestData");
        this.b.a();
        if (this.h == null) {
            hp0.c("AppOpenAdLoader. AppOpenAdLoadListener is null on loading start. Please, use setAdLoadListener before loading Ad.", new Object[0]);
        }
        this.c.a(new Runnable() {
            @Override
            public final void run() {
                in.b(this.b, v7Var);
            }
        });
    }

    @MainThread
    private final void a(v7 v7Var, ws wsVar, String str) {
        v7 v7VarA = v7.a(v7Var, null, str, 2047);
        wf wfVarA = this.d.a(this.a, this, v7VarA, new a(this, v7VarA));
        this.g.add(wfVarA);
        wfVarA.a(v7VarA.a());
        wfVarA.a(wsVar);
        wfVarA.b(v7VarA);
    }

    @Override
    public final void a(jd0 jd0Var) {
        wf wfVar = (wf) jd0Var;
        y45.j(wfVar, "loadController");
        if (this.h == null) {
            hp0.c("AppOpenAdLoader. AppOpenAdLoadListener is null on finished ad loading. Please, keep active listener until ad loading finished or use cancelLoading().", new Object[0]);
        }
        wfVar.a((ws) null);
        this.g.remove(wfVar);
    }

    @Override
    @MainThread
    public final void a(rl2 rl2Var) {
        this.b.a();
        this.h = rl2Var;
    }
}
