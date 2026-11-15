package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class aa2 implements dq1<z92> {
    private final ha2 a;
    private final g5 b;
    private final dq1<z92> c;
    private final yd2 d;

    public aa2(Context context, o3 o3Var, ha2 ha2Var, ia2 ia2Var, g5 g5Var, x92 x92Var, dq1 dq1Var, yd2 yd2Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ha2Var, "vastRequestConfiguration");
        y45.j(ia2Var, "requestConfigurationParametersProvider");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(x92Var, "reportParametersProvider");
        y45.j(dq1Var, "requestListener");
        y45.j(yd2Var, "responseHandler");
        this.a = ha2Var;
        this.b = g5Var;
        this.c = dq1Var;
        this.d = yd2Var;
    }

    public static final void a(aa2 aa2Var, sb2 sb2Var) {
        aa2Var.getClass();
        aa2Var.b.a(f5.v, new fa2("error", sb2Var), aa2Var.a);
    }

    public final class a implements dq1<List<? extends mb2>> {
        private final z92 a;
        private final dq1<z92> b;
        final aa2 c;

        public a(aa2 aa2Var, z92 z92Var, dq1<z92> dq1Var) {
            y45.j(z92Var, "vastData");
            y45.j(dq1Var, "requestListener");
            this.c = aa2Var;
            this.a = z92Var;
            this.b = dq1Var;
        }

        @Override
        public final void a(sb2 sb2Var) {
            y45.j(sb2Var, "error");
            aa2.a(this.c, sb2Var);
            this.b.a(sb2Var);
        }

        @Override
        public final void a(List<? extends mb2> list) {
            List<? extends mb2> list2 = list;
            y45.j(list2, "result");
            aa2.a(this.c);
            this.b.a(new z92(new u92(this.a.b().a(), list2), this.a.a()));
        }
    }

    public static final void a(aa2 aa2Var) {
        aa2Var.getClass();
        aa2Var.b.a(f5.v, new fa2("success", null), aa2Var.a);
    }

    @Override
    public final void a(sb2 sb2Var) {
        y45.j(sb2Var, "error");
        this.b.a(f5.v, new fa2("error", sb2Var), this.a);
        this.c.a(sb2Var);
    }

    @Override
    public final void a(z92 z92Var) {
        z92 z92Var2 = z92Var;
        y45.j(z92Var2, "result");
        this.d.a(z92Var2.b().b(), new a(this, z92Var2, this.c));
    }
}
