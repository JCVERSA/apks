package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.yi5;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import java.util.ArrayList;

public final class Rf {
    public final C2418ag a;
    public final Ga b;
    public final C2692lg c;
    public final yi5 d = kotlin.b.a(new Of(this));
    public final yi5 e = kotlin.b.a(new Mf(this));
    public final yi5 f = kotlin.b.a(new Qf(this));
    public final ArrayList g = new ArrayList();

    public Rf(C2418ag c2418ag, C2667kg c2667kg, Ga ga, C2692lg c2692lg) {
        this.a = c2418ag;
        this.b = ga;
        this.c = c2692lg;
    }

    public static final Jf a(Rf rf) {
        return (Jf) rf.d.getValue();
    }

    public static final void a(Rf rf, C2468cg c2468cg, Jf jf) {
        boolean zE;
        rf.g.add(c2468cg);
        C2692lg c2692lg = rf.c;
        if (c2468cg == null) {
            c2692lg.getClass();
        } else {
            SafePackageManager safePackageManager = c2692lg.b;
            Context context = c2692lg.a;
            String installerPackageName = safePackageManager.getInstallerPackageName(context, context.getPackageName());
            int iOrdinal = c2468cg.d.ordinal();
            if (iOrdinal == 1) {
                zE = y45.e(c2692lg.f, installerPackageName);
            } else if (iOrdinal == 2) {
                zE = y45.e(c2692lg.g, installerPackageName);
            }
            if (zE) {
                rf.a(c2468cg);
                return;
            }
        }
        jf.a();
    }

    public final void a(C2468cg c2468cg) {
        C2418ag c2418ag = this.a;
        synchronized (c2418ag) {
            c2418ag.b = c2468cg;
            c2418ag.c = true;
            c2418ag.d.a(c2468cg);
            c2418ag.d.d();
            c2418ag.a(c2418ag.b);
        }
    }
}
