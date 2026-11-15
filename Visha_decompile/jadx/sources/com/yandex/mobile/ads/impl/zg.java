package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.lzy.okgo.cookie.SerializableCookie;
import defpackage.y45;
import java.util.List;

public final class zg {
    private final Context a;
    private final bv1 b;
    private final zb2<go0> c;
    private final gt d;
    private final mg2 e;
    private final lo0 f;
    private final sj0 g;
    private final hn0 h;
    private final xo i;
    private final no0 j;
    private final ng k;

    public zg(Context context, bv1 bv1Var, zb2 zb2Var, gt gtVar, mg2 mg2Var, nb2 nb2Var, yk1 yk1Var, hn0 hn0Var) {
        this(context, bv1Var, zb2Var, gtVar, mg2Var, nb2Var, yk1Var, hn0Var, new xo(), new no0(), new ng());
    }

    public final List<fn0> a() {
        ng ngVar = this.k;
        Context context = this.a;
        bv1 bv1Var = this.b;
        zb2<go0> zb2Var = this.c;
        gt gtVar = this.d;
        mg2 mg2Var = this.e;
        ngVar.getClass();
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(gtVar, "adBreak");
        y45.j(mg2Var, "videoTracker");
        mg mgVar = new mg(zb2Var, new yn0(context, bv1Var, gtVar, zb2Var).a(), mg2Var);
        ig<?> igVarA = this.h.a("call_to_action");
        he2 he2VarA = this.j.a(this.c.b(), igVarA != null ? igVarA.b() : null);
        xo xoVar = this.i;
        zb2<go0> zb2Var2 = this.c;
        Context context2 = this.a;
        bv1 bv1Var2 = this.b;
        gt gtVar2 = this.d;
        mg2 mg2Var2 = this.e;
        lo0 lo0Var = this.f;
        xoVar.getClass();
        y45.j(zb2Var2, "videoAdInfo");
        y45.j(context2, "context");
        y45.j(bv1Var2, "sdkEnvironmentModule");
        y45.j(gtVar2, "adBreak");
        y45.j(mg2Var2, "videoTracker");
        y45.j(lo0Var, "playbackListener");
        y45.j(he2VarA, "videoClicks");
        tn tnVar = new tn(igVarA, new wo(context2, bv1Var2, gtVar2, zb2Var2, mg2Var2, lo0Var, he2VarA, new zm0(context2, bv1Var2, gtVar2, zb2Var2, mg2Var2, lo0Var, he2VarA), new l10()));
        un unVar = new un();
        zb2<go0> zb2Var3 = this.c;
        gc gcVarA = new hc(zb2Var3, new ic(zb2Var3.g())).a();
        ig<?> igVarA2 = this.h.a("favicon");
        if (igVarA2 == null || !(igVarA2.d() instanceof xj0)) {
            igVarA2 = null;
        }
        jj0 jj0Var = new jj0(this.a, new sn0(false), this.g);
        v80 v80Var = new v80(jj0Var, igVarA2, mgVar);
        u30 u30Var = new u30(this.h.a(SerializableCookie.DOMAIN), mgVar);
        a22 a22Var = new a22(this.h.a("sponsored"), this.c.a(), mgVar, new b22());
        p6 p6Var = new p6(this.c.d().b().a(), this.c.d().b().b());
        c72 c72Var = new c72(jj0Var, this.h.a("trademark"), mgVar);
        bm0 bm0Var = new bm0();
        ff1 ff1VarA = new yn0(this.a, this.b, this.d, this.c).a();
        ig<?> igVarA3 = this.h.a("feedback");
        yb ybVar = new yb(bm0Var, ff1VarA, new k0());
        m10 m10Var = new m10();
        o20 o20Var = new o20(m10Var);
        ua0 ua0Var = new ua0(igVarA3, mgVar, this.e, ybVar, new r20(m10Var, o20Var, new q20(o20Var, new n30())));
        kj2 kj2Var = new kj2(this.h.a("warning"), mgVar);
        Context context3 = this.a;
        sj0 sj0Var = this.g;
        return defpackage.y71.n(tnVar, gcVarA, v80Var, u30Var, a22Var, p6Var, c72Var, unVar, ua0Var, kj2Var, new dn1(context3, sj0Var, he2VarA, igVarA2, new en1(context3, sj0Var), x80.a(context3, w80.f)));
    }

    public zg(Context context, bv1 bv1Var, zb2 zb2Var, gt gtVar, mg2 mg2Var, nb2 nb2Var, yk1 yk1Var, hn0 hn0Var, xo xoVar, no0 no0Var, ng ngVar) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(gtVar, "adBreak");
        y45.j(mg2Var, "videoTracker");
        y45.j(nb2Var, "playbackListener");
        y45.j(yk1Var, "imageProvider");
        y45.j(hn0Var, "assetsWrapper");
        y45.j(xoVar, "clickControlConfiguratorProvider");
        y45.j(no0Var, "instreamVideoClicksProvider");
        y45.j(ngVar, "assetClickConfiguratorProvider");
        this.a = context;
        this.b = bv1Var;
        this.c = zb2Var;
        this.d = gtVar;
        this.e = mg2Var;
        this.f = nb2Var;
        this.g = yk1Var;
        this.h = hn0Var;
        this.i = xoVar;
        this.j = no0Var;
        this.k = ngVar;
    }
}
