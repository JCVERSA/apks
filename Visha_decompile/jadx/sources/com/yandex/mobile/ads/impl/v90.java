package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class v90 extends c90 {
    private final t71 A;
    private final z91 B;
    private final sg0 C;
    private final z90 x;
    private final v7 y;
    private final xt1 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v90(Context context, bv1 bv1Var, o3 o3Var, z90 z90Var, v7 v7Var, ka0 ka0Var, xt1 xt1Var, t71 t71Var, z91 z91Var, sg0 sg0Var) {
        super(context, o3Var, new g5(), ka0Var);
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o3Var, "adConfiguration");
        y45.j(z90Var, "feedItemLoadListener");
        y45.j(v7Var, "adRequestData");
        y45.j(xt1Var, "sdkAdapterReporter");
        y45.j(t71Var, "requestParameterManager");
        y45.j(z91Var, "nativeResponseCreator");
        y45.j(sg0Var, "htmlAdResponseReportManager");
        this.x = z90Var;
        this.y = v7Var;
        this.z = xt1Var;
        this.A = t71Var;
        this.B = z91Var;
        this.C = sg0Var;
    }

    public final void y() {
        b(this.y);
    }

    public final class b implements z91.b {
        private final o8<String> a;
        final v90 b;

        public b(v90 v90Var, o8<String> o8Var) {
            y45.j(o8Var, "adResponse");
            this.b = v90Var;
            this.a = o8Var;
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "adRequestError");
            this.b.b(w3Var);
        }

        @Override
        public final void a(q61 q61Var) {
            y45.j(q61Var, "nativeAd");
            if (q61Var instanceof b02) {
                this.b.u();
                this.b.x.a(new gs0((b02) q61Var, this.a));
            } else {
                this.b.b(w7.x());
            }
        }
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        super.a(w3Var);
        this.x.a(w3Var);
    }

    public final class a implements dr1 {
        private final o8<String> a;
        final v90 b;

        public a(v90 v90Var, o8<String> o8Var) {
            y45.j(o8Var, "adResponse");
            this.b = v90Var;
            this.a = o8Var;
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "adRequestError");
            this.b.z.a(this.b.l(), this.a, this.b.A);
            this.b.z.a(this.b.l(), this.a, (u71) null);
        }

        @Override
        public final void a(y61 y61Var) {
            y45.j(y61Var, "nativeAdResponse");
            u71 u71Var = new u71(this.a, y61Var, this.b.f());
            this.b.z.a(this.b.l(), this.a, this.b.A);
            this.b.z.a(this.b.l(), this.a, u71Var);
        }
    }

    @Override
    public final void a(o8<String> o8Var) {
        y45.j(o8Var, "adResponse");
        super.a((o8) o8Var);
        this.C.a(o8Var);
        this.C.a(f());
        this.B.a(o8Var, new b(this, o8Var), new a(this, o8Var));
    }
}
