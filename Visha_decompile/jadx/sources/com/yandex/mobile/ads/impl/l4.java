package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class l4 {
    private final Context a;
    private final gt b;
    private final w2 c;
    private final sj0 d;
    private final jm0 e;
    private final cn0 f;
    private final pc2<go0> g;
    private final x2 h;
    private final og2 i;

    public l4(Context context, gt gtVar, w2 w2Var, sj0 sj0Var, jm0 jm0Var, cn0 cn0Var, pc2 pc2Var) {
        this(context, gtVar, w2Var, sj0Var, jm0Var, cn0Var, pc2Var, new x2(), new og2(gtVar.d().d()));
    }

    public final k4 a(zb2<go0> zb2Var) {
        ad2 ad2Var;
        y45.j(zb2Var, "videoAdInfo");
        x2 x2Var = this.h;
        w2 w2Var = this.c;
        x2Var.getClass();
        y45.j(w2Var, "adBreakPosition");
        int iOrdinal = w2Var.ordinal();
        if (iOrdinal == 0) {
            ad2Var = ad2.b;
        } else if (iOrdinal == 1) {
            ad2Var = ad2.c;
        } else if (iOrdinal == 2) {
            ad2Var = ad2.d;
        } else {
            if (iOrdinal != 3) {
                throw new NoWhenBranchMatchedException();
            }
            ad2Var = ad2.e;
        }
        ng2 ng2VarA = this.i.a(this.a, zb2Var, ad2Var);
        qd2 qd2Var = new qd2();
        Context context = this.a;
        bv1 bv1VarD = this.b.d();
        jm0 jm0Var = this.e;
        cn0 cn0Var = this.f;
        gt gtVar = this.b;
        sj0 sj0Var = this.d;
        pc2<go0> pc2Var = this.g;
        o3 o3Var = new o3(ts.h, bv1VarD);
        go0 go0VarD = zb2Var.d();
        co0 co0Var = new co0(go0VarD, jm0Var);
        vo0 vo0Var = new vo0(cn0Var);
        uo0 uo0Var = new uo0(gtVar, zb2Var, qd2Var, vo0Var, new tg2(vo0Var), new wo0(qd2Var, gtVar, zb2Var));
        dd2 dd2Var = new dd2();
        eo0 eo0Var = new eo0(pc2Var);
        v92 v92Var = new v92(context, o3Var, co0Var, vo0Var, zb2Var, uo0Var, qd2Var, ng2VarA, dd2Var, eo0Var, null);
        kj0 kj0Var = new kj0(context);
        g5 g5Var = new g5();
        return new k4(zb2Var, new do0(context, bv1VarD, jm0Var, cn0Var, gtVar, zb2Var, qd2Var, ng2VarA, sj0Var, pc2Var, o3Var, go0VarD, co0Var, vo0Var, uo0Var, dd2Var, eo0Var, v92Var, kj0Var, g5Var, new tn0(kj0Var, g5Var), new rm0(go0VarD, vo0Var, co0Var, cn0Var, qd2Var), new dm0(go0VarD, new cc2(go0VarD)), new xl0(gtVar)), this.d, qd2Var, ng2VarA);
    }

    public l4(Context context, gt gtVar, w2 w2Var, sj0 sj0Var, jm0 jm0Var, cn0 cn0Var, pc2<go0> pc2Var, x2 x2Var, og2 og2Var) {
        y45.j(context, "context");
        y45.j(gtVar, "adBreak");
        y45.j(w2Var, "adBreakPosition");
        y45.j(sj0Var, "imageProvider");
        y45.j(jm0Var, "adPlayerController");
        y45.j(cn0Var, "adViewsHolderManager");
        y45.j(pc2Var, "playbackEventsListener");
        y45.j(x2Var, "adBreakPositionConverter");
        y45.j(og2Var, "videoTrackerCreator");
        this.a = context;
        this.b = gtVar;
        this.c = w2Var;
        this.d = sj0Var;
        this.e = jm0Var;
        this.f = cn0Var;
        this.g = pc2Var;
        this.h = x2Var;
        this.i = og2Var;
    }
}
