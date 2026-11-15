package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Map;

public abstract class i62<R, T> extends qk<T> {
    private final id A;
    private final e8 B;
    private final R x;
    private final lq1<R, T> y;
    private final sp1 z;

    public i62(Context context, o3 o3Var, int i, String str, qk.a aVar, Object obj, lq1 lq1Var, eq1 eq1Var, int i2) {
        this(context, o3Var, i, str, aVar, obj, lq1Var, (i2 & 128) != 0 ? null : eq1Var, o3Var.q().c(), new id(context), new e8());
    }

    private final void y() {
        op1 op1VarA = this.y.a(this.x);
        this.z.a(op1VarA);
        String strC = op1VarA.c();
        op1.b bVar = op1.b.k;
        if (y45.e(strC, bVar.a())) {
            this.A.a(bVar, op1VarA.b(), null, null);
        }
    }

    @Override
    public final xq1<T> a(xc1 xc1Var) {
        y45.j(xc1Var, "networkResponse");
        int i = xc1Var.a;
        xq1<T> xq1VarA = a(xc1Var, i);
        op1 op1VarA = this.y.a(xq1VarA, i, this.x);
        pp1 pp1Var = new pp1(op1VarA.b(), 2);
        pp1Var.a(nf0.a(xc1Var.c, vh0.y), "server_log_id");
        Map<String, String> map = xc1Var.c;
        if (map != null) {
            pp1Var.a(p8.a(map));
        }
        this.z.a(op1VarA);
        return xq1VarA;
    }

    public abstract xq1<T> a(xc1 xc1Var, int i);

    @Override
    public si2 b(si2 si2Var) {
        y45.j(si2Var, "requestError");
        xc1 xc1Var = si2Var.b;
        this.z.a(this.y.a(null, xc1Var != null ? xc1Var.a : -1, this.x));
        return super.b(si2Var);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i62(Context context, o3 o3Var, int i, String str, qk.a<T> aVar, R r, lq1<R, T> lq1Var, eq1 eq1Var, sp1 sp1Var, id idVar, e8 e8Var) {
        super(context, i, str, aVar, eq1Var);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(str, "url");
        y45.j(aVar, "listener");
        y45.j(lq1Var, "requestReporter");
        y45.j(sp1Var, "metricaReporter");
        y45.j(idVar, "metricaLibraryEventReporter");
        y45.j(e8Var, "adRequestRetryPolicyCreator");
        this.x = r;
        this.y = lq1Var;
        this.z = sp1Var;
        this.A = idVar;
        this.B = e8Var;
        a(context);
        r();
        s();
        y();
    }

    private final void a(Context context) {
        Integer numR;
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        a(this.B.a(context, (ju1VarA == null || (numR = ju1VarA.R()) == null) ? bi0.a() : numR.intValue()));
    }
}
