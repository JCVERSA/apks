package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.lzy.okgo.model.Progress;
import defpackage.l1a;
import defpackage.y45;

public final class nu1 {
    private final jc a;
    private final p50 b;
    private final g5 c;
    private final uu1 d;
    private final pu1 e;
    private final gq1 f;
    private final ru1 g;
    private final r22 h;
    private final Context i;

    public interface a {
        void a(ju1 ju1Var, kr krVar);

        void a(si2 si2Var, kr krVar);
    }

    public nu1(Context context, sp1 sp1Var, jc jcVar, p50 p50Var, g5 g5Var) {
        uu1 uu1Var = new uu1(context, sp1Var);
        int i = pu1.d;
        pu1 pu1VarA = pu1.a.a();
        int i2 = gq1.c;
        this(context, sp1Var, jcVar, p50Var, g5Var, uu1Var, pu1VarA, gq1.a.a(), new ru1(), new r22(sp1Var));
    }

    public final void a() {
        gq1 gq1Var = this.f;
        Context context = this.i;
        gq1Var.getClass();
        gq1.a(context, this);
    }

    public final void a(kx1 kx1Var, gl0 gl0Var, ou1.a.b bVar) {
        String str;
        y45.j(kx1Var, "sensitiveModeChecker");
        y45.j(gl0Var, "initializationCallSource");
        y45.j(bVar, "listener");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(this.i);
        if (ju1VarA != null && !this.d.a()) {
            bVar.a(ju1VarA, kr.d);
            return;
        }
        vu1 vu1Var = new vu1(this.i, this.e, bVar, this.c);
        this.h.a(gl0Var);
        o50 o50VarC = this.b.c();
        Context context = this.i;
        String strA = o50VarC.a();
        if (strA == null || strA.length() == 0) {
            str = null;
        } else {
            String strA2 = this.g.a(context, kx1Var, this.a, o50VarC);
            StringBuilder sb = new StringBuilder();
            sb.append(strA);
            if (!y45.e(String.valueOf(l1a.q1(sb)), "/")) {
                sb.append("/");
            }
            sb.append("v1/startup");
            sb.append("?");
            sb.append(strA2);
            String string = sb.toString();
            y45.i(string, "toString(...)");
            str = string;
        }
        if (str == null || str.length() == 0) {
            vu1Var.a((si2) new r3(x3.j, null));
            return;
        }
        tu1 tu1Var = new tu1(this.i, str, this.d, o50VarC.d(), vu1Var, vu1Var);
        tu1Var.b(this);
        g5 g5Var = this.c;
        f5 f5Var = f5.n;
        bk.a(g5Var, f5Var, "adLoadingPhaseType", f5Var, null);
        gq1 gq1Var = this.f;
        Context context2 = this.i;
        synchronized (gq1Var) {
            y45.j(context2, "context");
            y45.j(tu1Var, Progress.REQUEST);
            hd1.a(context2).a(tu1Var);
        }
    }

    public nu1(Context context, sp1 sp1Var, jc jcVar, p50 p50Var, g5 g5Var, uu1 uu1Var, pu1 pu1Var, gq1 gq1Var, ru1 ru1Var, r22 r22Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(jcVar, "advertisingConfiguration");
        y45.j(p50Var, "environmentController");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(uu1Var, "requestPolicy");
        y45.j(pu1Var, "sdkConfigurationProvider");
        y45.j(gq1Var, "requestManager");
        y45.j(ru1Var, "queryConfigurator");
        y45.j(r22Var, "startupRequestReporter");
        this.a = jcVar;
        this.b = p50Var;
        this.c = g5Var;
        this.d = uu1Var;
        this.e = pu1Var;
        this.f = gq1Var;
        this.g = ru1Var;
        this.h = r22Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.i = applicationContext;
    }
}
