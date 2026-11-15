package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class b82 {
    private final bv1 a;
    private final am0 b;
    private final ao0 c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b82(bv1 bv1Var, am0 am0Var) {
        this(bv1Var, am0Var, ao0.a.a());
        int i = ao0.g;
    }

    public final a82 a(Context context, gt gtVar, zb2 zb2Var, co0 co0Var, mg2 mg2Var, yk1 yk1Var, nb2 nb2Var) {
        y45.j(context, "context");
        y45.j(gtVar, "coreInstreamAdBreak");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(co0Var, "instreamVastAdPlayer");
        y45.j(mg2Var, "videoTracker");
        y45.j(yk1Var, "imageProvider");
        y45.j(nb2Var, "playbackListener");
        if (!this.c.e()) {
            bv1 bv1Var = this.a;
            vu vuVar = new vu();
            no0 no0Var = new no0(vuVar);
            he2 he2VarA = no0Var.a(zb2Var.b(), null);
            return new so(context, bv1Var, gtVar, co0Var, zb2Var, mg2Var, nb2Var, vuVar, no0Var, he2VarA, new zm0(context, bv1Var, gtVar, zb2Var, mg2Var, nb2Var, he2VarA), new f6(co0Var));
        }
        bv1 bv1Var2 = this.a;
        am0 am0Var = this.b;
        ns nsVar = new ns(context, co0Var, gtVar, zb2Var, mg2Var, nb2Var);
        in0 in0Var = new in0();
        hn0 hn0VarA = in0.a(context, zb2Var);
        zg zgVar = new zg(context, bv1Var2, zb2Var, gtVar, mg2Var, nb2Var, yk1Var, hn0VarA);
        List<fn0> listA = zgVar.a();
        gh ghVar = new gh(listA);
        an0 an0Var = new an0();
        qn0 qn0Var = new qn0();
        int i = pw1.l;
        pn0 pn0VarA = qn0.a(pw1.a.a().a(context));
        return new ms(context, bv1Var2, am0Var, co0Var, gtVar, zb2Var, mg2Var, yk1Var, nb2Var, nsVar, in0Var, hn0VarA, zgVar, listA, ghVar, an0Var, qn0Var, pn0VarA, new xm0(am0Var, pn0VarA));
    }

    public b82(bv1 bv1Var, am0 am0Var, ao0 ao0Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(am0Var, "customUiElementsHolder");
        y45.j(ao0Var, "instreamSettings");
        this.a = bv1Var;
        this.b = am0Var;
        this.c = ao0Var;
    }
}
