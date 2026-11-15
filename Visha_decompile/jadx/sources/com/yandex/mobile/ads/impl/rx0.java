package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.base.MediatedAdapterInfo;
import com.monetization.ads.mediation.base.a;
import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.greenrobot.greendao.generator.Schema;

public final class rx0<T extends com.monetization.ads.mediation.base.a, L> {
    private final o3 a;
    private final g5 b;
    private final yx0<T, L> c;
    private final gy0 d;
    private final sx0<T> e;
    private final ig1 f;
    private final dy0 g;
    private qx0<T> h;

    public rx0(o3 o3Var, g5 g5Var, yx0 yx0Var, gy0 gy0Var, sx0 sx0Var, ig1 ig1Var) {
        this(o3Var, g5Var, yx0Var, gy0Var, sx0Var, ig1Var, new dy0());
    }

    public final qx0<T> a() {
        return this.h;
    }

    public final void b(Context context) {
        y45.j(context, "context");
        qx0<T> qx0Var = this.h;
        if (qx0Var != null) {
            Map<String, ? extends Object> mapH = ky5.h(abb.a("status", "success"));
            this.d.f(context, qx0Var.c(), mapH, qx0Var.a().b().getNetworkName());
        }
    }

    public final void c(Context context, Map<String, ? extends Object> map) {
        lz0 lz0VarC;
        y45.j(context, "context");
        y45.j(map, "mediatedReportData");
        qx0<T> qx0Var = this.h;
        List<String> listD = (qx0Var == null || (lz0VarC = qx0Var.c()) == null) ? null : lz0VarC.d();
        v9 v9Var = new v9(context, this.a);
        if (listD != null) {
            Iterator<T> it = listD.iterator();
            while (it.hasNext()) {
                v9Var.a((String) it.next(), z62.g);
            }
        }
        Map<String, ? extends Object> mapC = kotlin.collections.a.C(map);
        mapC.put("status", "success");
        qx0<T> qx0Var2 = this.h;
        if (qx0Var2 != null) {
            tx0 tx0VarA = qx0Var2.a();
            this.g.getClass();
            mapC.putAll(dy0.a(tx0VarA));
            this.d.g(context, qx0Var2.c(), mapC, qx0Var2.a().b().getNetworkName());
        }
    }

    public final void d(Context context, Map<String, ? extends Object> map) {
        y45.j(context, "context");
        y45.j(map, "additionalReportData");
        qx0<T> qx0Var = this.h;
        if (qx0Var != null) {
            this.d.e(context, qx0Var.c(), map, qx0Var.a().b().getNetworkName());
        }
    }

    public final void e(Context context, Map<String, ? extends Object> map) {
        tx0 tx0VarA;
        MediatedAdapterInfo mediatedAdapterInfoB;
        y45.j(context, "context");
        y45.j(map, "additionalReportData");
        qx0<T> qx0Var = this.h;
        String networkName = null;
        lz0 lz0VarC = qx0Var != null ? qx0Var.c() : null;
        if (lz0VarC != null) {
            gy0 gy0Var = this.d;
            qx0<T> qx0Var2 = this.h;
            if (qx0Var2 != null && (tx0VarA = qx0Var2.a()) != null && (mediatedAdapterInfoB = tx0VarA.b()) != null) {
                networkName = mediatedAdapterInfoB.getNetworkName();
            }
            gy0Var.b(context, lz0VarC, map, networkName);
        }
    }

    public final void a(Context context) {
        y45.j(context, "context");
        qx0<T> qx0Var = this.h;
        if (qx0Var != null) {
            try {
                this.c.a(qx0Var.b());
            } catch (Throwable th) {
                lz0 lz0VarC = qx0Var.c();
                String networkName = qx0Var.a().b().getNetworkName();
                sp0.c(new Object[0]);
                this.d.a(context, lz0VarC, ky5.h(abb.a("reason", ky5.h(abb.a("exception_in_adapter", th.toString())))), networkName);
            }
        }
    }

    public rx0(o3 o3Var, g5 g5Var, yx0<T, L> yx0Var, gy0 gy0Var, sx0<T> sx0Var, ig1 ig1Var, dy0 dy0Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(yx0Var, "mediatedAdLoader");
        y45.j(gy0Var, "mediatedAdapterReporter");
        y45.j(sx0Var, "mediatedAdCreator");
        y45.j(ig1Var, "passbackAdLoader");
        y45.j(dy0Var, "mediatedAdapterInfoReportDataProvider");
        this.a = o3Var;
        this.b = g5Var;
        this.c = yx0Var;
        this.d = gy0Var;
        this.e = sx0Var;
        this.f = ig1Var;
        this.g = dy0Var;
    }

    public final void b(Context context, w3 w3Var, L l) {
        lz0 lz0VarC;
        y45.j(context, "context");
        y45.j(w3Var, "adFetchRequestError");
        qx0<T> qx0Var = this.h;
        xa xaVar = new xa(op1.c.d, (qx0Var == null || (lz0VarC = qx0Var.c()) == null) ? null : lz0VarC.e());
        g5 g5Var = this.b;
        f5 f5Var = f5.c;
        g5Var.getClass();
        y45.j(f5Var, "adLoadingPhaseType");
        y45.j(xaVar, "parametersProvider");
        g5Var.a(f5Var, xaVar, null);
        Map<String, ? extends Object> mapQ = kotlin.collections.a.q(abb.a("status", "error"), abb.a("error_code", Integer.valueOf(w3Var.b())), abb.a("error_description", w3Var.c()));
        qx0<T> qx0Var2 = this.h;
        if (qx0Var2 != null) {
            tx0 tx0VarA = qx0Var2.a();
            this.g.getClass();
            mapQ.putAll(dy0.a(tx0VarA));
            this.d.g(context, qx0Var2.c(), mapQ, qx0Var2.a().b().getNetworkName());
        }
        a(context);
        a(context, l);
    }

    public final void a(Context context, L l) {
        lz0 lz0VarC;
        y45.j(context, "context");
        qx0<T> qx0VarA = this.e.a(context);
        this.h = qx0VarA;
        if (qx0VarA != null) {
            this.a.a(qx0VarA.c());
            this.a.c(qx0VarA.a().b().getNetworkName());
            g5 g5Var = this.b;
            f5 f5Var = f5.c;
            bk.a(g5Var, f5Var, "adLoadingPhaseType", f5Var, null);
            lz0 lz0VarC2 = qx0VarA.c();
            String networkName = qx0VarA.a().b().getNetworkName();
            this.d.b(context, lz0VarC2, networkName);
            try {
                this.c.a(context, qx0VarA.b(), l, qx0VarA.a(context), qx0VarA.d());
                return;
            } catch (Throwable th) {
                sp0.c(new Object[0]);
                this.d.a(context, lz0VarC2, ky5.h(abb.a("reason", ky5.h(abb.a("exception_in_adapter", th.toString())))), networkName);
                qx0<T> qx0Var = this.h;
                xa xaVar = new xa(op1.c.d, (qx0Var == null || (lz0VarC = qx0Var.c()) == null) ? null : lz0VarC.e());
                g5 g5Var2 = this.b;
                f5 f5Var2 = f5.c;
                g5Var2.getClass();
                y45.j(f5Var2, "adLoadingPhaseType");
                y45.j(xaVar, "parametersProvider");
                g5Var2.a(f5Var2, xaVar, null);
                a(context, l);
                return;
            }
        }
        this.f.a();
    }

    public final void c(Context context) {
        tx0 tx0VarA;
        MediatedAdapterInfo mediatedAdapterInfoB;
        y45.j(context, "context");
        qx0<T> qx0Var = this.h;
        String networkName = null;
        lz0 lz0VarC = qx0Var != null ? qx0Var.c() : null;
        if (lz0VarC != null) {
            gy0 gy0Var = this.d;
            qx0<T> qx0Var2 = this.h;
            if (qx0Var2 != null && (tx0VarA = qx0Var2.a()) != null && (mediatedAdapterInfoB = tx0VarA.b()) != null) {
                networkName = mediatedAdapterInfoB.getNetworkName();
            }
            gy0Var.a(context, lz0VarC, networkName);
        }
    }

    public final void b(Context context, Map<String, ? extends Object> map) {
        y45.j(context, "context");
        y45.j(map, "additionalReportData");
        qx0<T> qx0Var = this.h;
        if (qx0Var != null) {
            lz0 lz0VarC = qx0Var.c();
            String networkName = qx0Var.a().b().getNetworkName();
            List<String> listH = lz0VarC.h();
            if (listH != null) {
                Iterator<String> it = listH.iterator();
                while (it.hasNext()) {
                    new v9(context, this.a).a(it.next(), z62.f);
                }
            }
            this.d.d(context, lz0VarC, map, networkName);
        }
    }

    public final void a(Context context, Map<String, ? extends Object> map) {
        y45.j(context, "context");
        y45.j(map, "additionalReportData");
        qx0<T> qx0Var = this.h;
        if (qx0Var != null) {
            lz0 lz0VarC = qx0Var.c();
            String networkName = qx0Var.a().b().getNetworkName();
            List<String> listG = lz0VarC.g();
            if (listG != null) {
                Iterator<String> it = listG.iterator();
                while (it.hasNext()) {
                    new v9(context, this.a).a(it.next(), z62.d);
                }
            }
            Map<String, ? extends Object> mapC = kotlin.collections.a.C(map);
            mapC.put("click_type", Schema.DEFAULT_NAME);
            this.d.c(context, lz0VarC, mapC, networkName);
        }
    }

    public final boolean b() {
        tx0 tx0VarA;
        qx0<T> qx0Var = this.h;
        if (qx0Var == null || (tx0VarA = qx0Var.a()) == null) {
            return true;
        }
        return tx0VarA.c();
    }

    public final void a(Context context, w3 w3Var, L l) {
        y45.j(context, "context");
        y45.j(w3Var, "adFetchRequestError");
        qx0<T> qx0Var = this.h;
        if (qx0Var != null) {
            Map<String, ? extends Object> mapP = kotlin.collections.a.p(abb.a("status", "error"), abb.a("error_code", Integer.valueOf(w3Var.b())));
            this.d.f(context, qx0Var.c(), mapP, qx0Var.a().b().getNetworkName());
        }
        a(context);
        a(context, l);
    }

    public final void a(Context context, o8<String> o8Var) {
        tx0 tx0VarA;
        MediatedAdapterInfo mediatedAdapterInfoB;
        y45.j(context, "context");
        qx0<T> qx0Var = this.h;
        String networkName = null;
        lz0 lz0VarC = qx0Var != null ? qx0Var.c() : null;
        if (lz0VarC != null) {
            gy0 gy0Var = this.d;
            qx0<T> qx0Var2 = this.h;
            if (qx0Var2 != null && (tx0VarA = qx0Var2.a()) != null && (mediatedAdapterInfoB = tx0VarA.b()) != null) {
                networkName = mediatedAdapterInfoB.getNetworkName();
            }
            gy0Var.a(context, lz0VarC, o8Var, networkName);
        }
    }
}
