package com.yandex.mobile.ads.impl;

import android.widget.ProgressBar;
import android.widget.TextView;
import defpackage.y45;

public final class qf2 implements cd2 {
    private final rg2 a;
    private final yd b;
    private final tu c;

    public qf2(rg2 rg2Var) {
        this(rg2Var, new yd(), new tu());
    }

    @Override
    public final void a(long j, long j2) {
        yb1 yb1VarB = this.a.b();
        if (yb1VarB != null) {
            aw0 aw0VarA = yb1VarB.a().a();
            ProgressBar videoProgress = aw0VarA != null ? aw0VarA.getVideoProgress() : null;
            if (videoProgress != null) {
                this.b.getClass();
                yd.a(videoProgress, j, j2);
            }
            aw0 aw0VarA2 = yb1VarB.a().a();
            TextView countDownProgress = aw0VarA2 != null ? aw0VarA2.getCountDownProgress() : null;
            if (countDownProgress != null) {
                this.c.a(countDownProgress, j, j2);
            }
        }
    }

    public qf2(rg2 rg2Var, yd ydVar, tu tuVar) {
        y45.j(rg2Var, "videoViewAdapter");
        y45.j(ydVar, "animatedProgressBarController");
        y45.j(tuVar, "countDownProgressController");
        this.a = rg2Var;
        this.b = ydVar;
        this.c = tuVar;
    }
}
