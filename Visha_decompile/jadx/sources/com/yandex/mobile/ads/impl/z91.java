package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class z91 {
    private final bv1 a;
    private final y91 b;
    private final i51 c;

    public interface b {
        void a(q61 q61Var);

        void a(w3 w3Var);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public z91(Context context, bv1 bv1Var, o3 o3Var, g5 g5Var) {
        defpackage.nk1 nk1VarA = su.a();
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, bv1Var, o3Var, g5Var, nk1VarA, applicationContext, new y91(context, bv1Var.c()), new i51(applicationContext, bv1Var, o3Var, g5Var, nk1VarA));
    }

    public final void a(o8<String> o8Var, b bVar, dr1 dr1Var) {
        y45.j(o8Var, "adResponse");
        y45.j(bVar, "responseCreationListener");
        y45.j(dr1Var, "converterListener");
        this.b.a(o8Var, new a(this, o8Var, bVar, dr1Var, new gw1(this.a)));
    }

    public final class a implements dr1 {
        private final o8<String> a;
        private final b b;
        private final dr1 c;
        private final gw1 d;
        final z91 e;

        public a(z91 z91Var, o8<String> o8Var, b bVar, dr1 dr1Var, gw1 gw1Var) {
            y45.j(o8Var, "adResponse");
            y45.j(bVar, "responseCreationListener");
            y45.j(dr1Var, "responseConverterListener");
            y45.j(gw1Var, "sdkNativeAdFactoriesProviderCreator");
            this.e = z91Var;
            this.a = o8Var;
            this.b = bVar;
            this.c = dr1Var;
            this.d = gw1Var;
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "adRequestError");
            this.c.a(w3Var);
            this.b.a(w3Var);
        }

        @Override
        public final void a(y61 y61Var) {
            y45.j(y61Var, "nativeAdResponse");
            this.c.a(y61Var);
            o8<String> o8Var = this.a;
            b bVar = this.b;
            this.e.c.a(o8Var, y61Var, this.d.a(o8Var), new n81(bVar));
        }
    }

    public z91(Context context, bv1 bv1Var, o3 o3Var, g5 g5Var, defpackage.nk1 nk1Var, Context context2, y91 y91Var, i51 i51Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(nk1Var, "coroutineScope");
        y45.j(context2, "appContext");
        y45.j(y91Var, "nativeResponseConverter");
        y45.j(i51Var, "nativeAdCreationManager");
        this.a = bv1Var;
        this.b = y91Var;
        this.c = i51Var;
        o3Var.a(ca1.c);
    }

    public final void a() {
        this.c.a();
    }
}
