package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import android.widget.ProgressBar;
import defpackage.y45;

public final class ns {
    private final mg2 a;
    private final b41 b;
    private final oz1 c;
    private final ol1 d;
    private final jn0 e;

    public ns(Context context, co0 co0Var, gt gtVar, zb2 zb2Var, mg2 mg2Var, nb2 nb2Var) {
        this(context, co0Var, gtVar, zb2Var, mg2Var, nb2Var, new b41(co0Var), new oz1(co0Var, (go0) zb2Var.d()), new ol1(), new jn0(gtVar, zb2Var));
    }

    public final void a(ob2 ob2Var, ln0 ln0Var) {
        y45.j(ob2Var, "uiElements");
        y45.j(ln0Var, "controlsState");
        this.e.a(ob2Var);
        this.b.a(ob2Var, ln0Var);
        View viewN = ob2Var.n();
        if (viewN != null) {
            this.c.a(viewN, ln0Var);
        }
        ProgressBar progressBarJ = ob2Var.j();
        if (progressBarJ != null) {
            this.d.getClass();
            y45.j(progressBarJ, "progressBar");
            y45.j(ln0Var, "controlsState");
            progressBarJ.setProgress((int) (progressBarJ.getMax() * ln0Var.b()));
        }
    }

    public ns(Context context, co0 co0Var, gt gtVar, zb2 zb2Var, mg2 mg2Var, nb2 nb2Var, b41 b41Var, oz1 oz1Var, ol1 ol1Var, jn0 jn0Var) {
        y45.j(context, "context");
        y45.j(co0Var, "instreamVastAdPlayer");
        y45.j(gtVar, "adBreak");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(mg2Var, "videoTracker");
        y45.j(nb2Var, "playbackListener");
        y45.j(b41Var, "muteControlConfigurator");
        y45.j(oz1Var, "skipControlConfigurator");
        y45.j(ol1Var, "progressBarConfigurator");
        y45.j(jn0Var, "instreamContainerTagConfigurator");
        this.a = mg2Var;
        this.b = b41Var;
        this.c = oz1Var;
        this.d = ol1Var;
        this.e = jn0Var;
    }
}
