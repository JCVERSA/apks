package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.view.ViewTreeObserver;
import com.yandex.mobile.ads.impl.hw1;
import defpackage.y45;

public final class hw1 implements ej {
    private final aj a;
    private final z91 b;
    private final nj c;
    private final t71 d;
    private final xt1 e;
    private final b81 f;
    private final Handler g;
    private final pw1 h;
    private final cj i;
    private final d61 j;
    private final ViewTreeObserver.OnPreDrawListener k;
    private o8<String> l;
    private q61 m;
    private boolean n;
    private mj o;

    public static final class c implements dj {
        public c() {
        }

        @Override
        public final void a() {
            hw1.this.a.u();
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "error");
            hw1.this.a.b(w3Var);
        }
    }

    public hw1(aj ajVar, bv1 bv1Var, z91 z91Var, nj njVar, t71 t71Var, xt1 xt1Var, b81 b81Var, Handler handler, pw1 pw1Var, cj cjVar, d61 d61Var) {
        y45.j(ajVar, "loadController");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(z91Var, "nativeResponseCreator");
        y45.j(njVar, "contentControllerCreator");
        y45.j(t71Var, "requestParameterManager");
        y45.j(xt1Var, "sdkAdapterReporter");
        y45.j(b81Var, "adEventListener");
        y45.j(handler, "handler");
        y45.j(pw1Var, "sdkSettings");
        y45.j(cjVar, "sizeValidator");
        y45.j(d61Var, "infoProvider");
        this.a = ajVar;
        this.b = z91Var;
        this.c = njVar;
        this.d = t71Var;
        this.e = xt1Var;
        this.f = b81Var;
        this.g = handler;
        this.h = pw1Var;
        this.i = cjVar;
        this.j = d61Var;
        this.k = new ViewTreeObserver.OnPreDrawListener() {
            @Override
            public final boolean onPreDraw() {
                return hw1.g(this.b);
            }
        };
    }

    public static final void f(hw1 hw1Var) {
        hw1Var.l = null;
        hw1Var.m = null;
    }

    public static final boolean g(final hw1 hw1Var) {
        y45.j(hw1Var, "this$0");
        hw1Var.g.postDelayed(new Runnable() {
            @Override
            public final void run() {
                hw1.h(this.b);
            }
        }, 50L);
        return true;
    }

    public static final void h(hw1 hw1Var) {
        y45.j(hw1Var, "this$0");
        zg2.a(hw1Var.a.C(), false);
    }

    @Override
    public final String getAdInfo() {
        return this.j.a(this.m);
    }

    public final class a implements dr1 {
        private final Context a;
        private final o8<?> b;
        final hw1 c;

        public a(hw1 hw1Var, Context context, o8<?> o8Var) {
            y45.j(context, "context");
            y45.j(o8Var, "adResponse");
            this.c = hw1Var;
            this.a = context;
            this.b = o8Var;
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "adRequestError");
            this.c.e.a(this.a, this.b, this.c.d);
            this.c.e.a(this.a, this.b, (u71) null);
        }

        @Override
        public final void a(y61 y61Var) {
            y45.j(y61Var, "nativeAdResponse");
            u71 u71Var = new u71(this.b, y61Var, this.c.a.f());
            this.c.e.a(this.a, this.b, this.c.d);
            this.c.e.a(this.a, this.b, u71Var);
        }
    }

    @Override
    public final void a(Context context) {
        y45.j(context, "context");
        mj mjVar = this.o;
        if (mjVar != null) {
            mjVar.a();
        }
        this.b.a();
        this.l = null;
        this.m = null;
        this.n = true;
    }

    public final class b implements z91.b {
        public b() {
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "adRequestError");
            if (hw1.this.n) {
                return;
            }
            hw1.f(hw1.this);
            hw1.this.a.b(w3Var);
        }

        @Override
        public final void a(q61 q61Var) {
            y45.j(q61Var, "createdNativeAd");
            if (hw1.this.n) {
                return;
            }
            hw1.this.m = q61Var;
            Handler handler = hw1.this.g;
            final hw1 hw1Var = hw1.this;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    hw1.b.a(hw1Var);
                }
            });
        }

        public static final void a(hw1 hw1Var) {
            y45.j(hw1Var, "this$0");
            hw1Var.a();
        }
    }

    @Override
    public final void a(Context context, o8<String> o8Var) {
        y45.j(context, "context");
        y45.j(o8Var, "response");
        g5 g5VarI = this.a.i();
        f5 f5Var = f5.c;
        bk.a(g5VarI, f5Var, "adLoadingPhaseType", f5Var, null);
        ju1 ju1VarA = this.h.a(context);
        if (ju1VarA != null && ju1VarA.q0()) {
            if (this.n) {
                return;
            }
            gz1 gz1VarQ = this.a.q();
            gz1 gz1VarM = o8Var.M();
            this.l = o8Var;
            if (gz1VarQ != null && iz1.a(context, o8Var, gz1VarM, this.i, gz1VarQ)) {
                this.b.a(o8Var, new b(), new a(this, context, o8Var));
                return;
            }
            w3 w3VarA = w7.a(gz1VarQ != null ? gz1VarQ.c(context) : 0, gz1VarQ != null ? gz1VarQ.a(context) : 0, gz1VarM.getWidth(), gz1VarM.getHeight(), wh2.c(context), wh2.b(context));
            hp0.a(w3VarA.d(), new Object[0]);
            this.a.b(w3VarA);
            return;
        }
        this.a.b(w7.x());
    }

    public final void a() {
        q61 q61Var;
        if (!this.n) {
            o8<String> o8Var = this.l;
            np0 np0VarC = this.a.C();
            if (o8Var == null || (q61Var = this.m) == null) {
                return;
            }
            y45.h(q61Var, "null cannot be cast to non-null type com.monetization.ads.nativeads.NativeAdPrivate");
            mj mjVarA = this.c.a(this.a.l(), o8Var, q61Var, np0VarC, this.f, this.k, this.a.D());
            this.o = mjVarA;
            mjVarA.a(o8Var.M(), new c());
            return;
        }
        this.a.b(w7.i());
    }
}
