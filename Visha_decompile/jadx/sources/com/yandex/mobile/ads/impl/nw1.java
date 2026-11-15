package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import defpackage.y45;
import kotlin.Result;

public final class nw1 implements cd0<bs1> {
    private final jd0<bs1> a;
    private final d61 b;
    private final xt1 c;
    private final z91 d;
    private final o3 e;
    private final t71 f;
    private final sd0 g;
    private o8<String> h;
    private q61 i;
    private boolean j;

    public nw1(jd0<bs1> jd0Var, bv1 bv1Var, d61 d61Var) {
        y45.j(jd0Var, "rewardedAdLoadController");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(d61Var, "infoProvider");
        this.a = jd0Var;
        this.b = d61Var;
        Context contextL = jd0Var.l();
        o3 o3VarF = jd0Var.f();
        this.e = o3VarF;
        this.f = new t71(o3VarF);
        g5 g5VarI = jd0Var.i();
        this.c = new xt1(o3VarF);
        this.d = new z91(contextL, bv1Var, o3VarF, g5VarI);
        this.g = new sd0(bv1Var);
    }

    @Override
    public final String getAdInfo() {
        return this.b.a(this.i);
    }

    public final class a implements dr1 {
        private final o8<String> a;
        private final Context b;
        final nw1 c;

        public a(nw1 nw1Var, Context context, o8<String> o8Var) {
            y45.j(context, "context");
            y45.j(o8Var, "adResponse");
            this.c = nw1Var;
            this.a = o8Var;
            this.b = context.getApplicationContext();
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "adRequestError");
            xt1 xt1Var = this.c.c;
            Context context = this.b;
            y45.i(context, "context");
            xt1Var.a(context, this.a, this.c.f);
            xt1 xt1Var2 = this.c.c;
            Context context2 = this.b;
            y45.i(context2, "context");
            xt1Var2.a(context2, this.a, (u71) null);
        }

        @Override
        public final void a(y61 y61Var) {
            y45.j(y61Var, "nativeAdResponse");
            u71 u71Var = new u71(this.a, y61Var, this.c.e);
            xt1 xt1Var = this.c.c;
            Context context = this.b;
            y45.i(context, "context");
            xt1Var.a(context, this.a, this.c.f);
            xt1 xt1Var2 = this.c.c;
            Context context2 = this.b;
            y45.i(context2, "context");
            xt1Var2.a(context2, this.a, u71Var);
        }
    }

    @Override
    public final void a(Context context) {
        y45.j(context, "context");
        this.j = true;
        this.h = null;
        this.i = null;
        this.d.a();
        sp0.d(new Object[0]);
    }

    public final class b implements z91.b {
        public b() {
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "adRequestError");
            if (nw1.this.j) {
                return;
            }
            nw1.this.i = null;
            nw1.this.a.b(w3Var);
        }

        @Override
        public final void a(q61 q61Var) {
            y45.j(q61Var, "nativeAdPrivate");
            if (nw1.this.j) {
                return;
            }
            nw1.this.i = q61Var;
            nw1.this.a.u();
        }
    }

    @Override
    public final void a(Context context, o8<String> o8Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        if (this.j) {
            return;
        }
        this.h = o8Var;
        g5 g5VarI = this.a.i();
        f5 f5Var = f5.c;
        g5VarI.getClass();
        y45.j(f5Var, "adLoadingPhaseType");
        g5VarI.a(f5Var, null);
        this.d.a(o8Var, new b(), new a(this, context, o8Var));
    }

    @Override
    public final Object a(zd0 zd0Var, Activity activity) {
        bs1 bs1Var = (bs1) zd0Var;
        y45.j(bs1Var, "contentController");
        y45.j(activity, "activity");
        Result.Companion companion = Result.INSTANCE;
        Object objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(r6.a()));
        o8<String> o8Var = this.h;
        q61 q61Var = this.i;
        if (o8Var == null || q61Var == null) {
            return objM279constructorimpl;
        }
        Object objA = this.g.a(activity, new c1(new c1.a(o8Var, this.e, bs1Var.i()).a(this.e.o()).a(q61Var)));
        this.h = null;
        this.i = null;
        return objA;
    }
}
