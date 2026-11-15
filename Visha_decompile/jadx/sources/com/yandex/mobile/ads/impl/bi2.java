package com.yandex.mobile.ads.impl;

import android.os.SystemClock;
import defpackage.y45;
import defpackage.zfb;

public final class bi2<T> implements cd2, ed2 {
    private final zb2<T> a;
    private final qd2 b;
    private final mg2 c;
    private final pc2<T> d;
    private final td2 e;
    private Long f;
    private boolean g;

    public bi2(zb2 zb2Var, sg2 sg2Var, qd2 qd2Var, ng2 ng2Var, pc2 pc2Var) {
        this(zb2Var, sg2Var, qd2Var, ng2Var, pc2Var, new ug2(sg2Var));
    }

    @Override
    public final void a(long j, long j2) {
        if (this.g) {
            return;
        }
        zfb zfbVar = null;
        if (!this.e.a() || this.b.a() != pd2.e) {
            this.f = null;
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Long l = this.f;
        if (l != null) {
            if (jElapsedRealtime - l.longValue() >= 2000) {
                this.g = true;
                this.d.k(this.a);
                this.c.n();
            }
            zfbVar = zfb.a;
        }
        if (zfbVar == null) {
            this.f = Long.valueOf(jElapsedRealtime);
            this.d.l(this.a);
        }
    }

    @Override
    public final void b() {
        this.f = null;
    }

    public bi2(zb2 zb2Var, sg2 sg2Var, qd2 qd2Var, ng2 ng2Var, pc2 pc2Var, td2 td2Var) {
        y45.j(zb2Var, "videoAdInfo");
        y45.j(sg2Var, "videoViewProvider");
        y45.j(qd2Var, "videoAdStatusController");
        y45.j(ng2Var, "videoTracker");
        y45.j(pc2Var, "videoAdPlaybackEventsListener");
        y45.j(td2Var, "videoAdVisibilityValidator");
        this.a = zb2Var;
        this.b = qd2Var;
        this.c = ng2Var;
        this.d = pc2Var;
        this.e = td2Var;
    }

    @Override
    public final void a() {
        this.f = null;
    }
}
