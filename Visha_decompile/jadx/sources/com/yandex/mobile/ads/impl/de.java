package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import defpackage.y45;
import defpackage.ye9;
import java.util.Set;

public final class de {
    private de() {
    }

    public static void a(Context context, sp1 sp1Var) {
        ce ceVar;
        kotlinx.coroutines.c cVarB = defpackage.mc2.b();
        defpackage.nk1 nk1VarA = kotlinx.coroutines.d.a(cVarB);
        ae aeVar = new ae(cVarB, new Handler(Looper.getMainLooper()));
        be beVar = new be(sp1Var);
        y42 y42Var = new y42();
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(cVarB, "coroutineContext");
        y45.j(nk1VarA, "coroutineScope");
        y45.j(aeVar, "anrChecker");
        y45.j(beVar, "anrReporter");
        y45.j(y42Var, "threadUtils");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        if (ju1VarA == null || !ju1VarA.h()) {
            return;
        }
        Long lI = ju1VarA.i();
        long jLongValue = lI != null ? lI.longValue() : 1000L;
        Long lJ = ju1VarA.j();
        long jLongValue2 = lJ != null ? lJ.longValue() : 3500L;
        Set<e60> setQ = ju1VarA.q();
        if (setQ == null) {
            setQ = ye9.f();
        }
        Set<e60> set = setQ;
        int i2 = ce.k;
        y45.j(set, "crashStackTraceExclusionRules");
        y45.j(nk1VarA, "coroutineScope");
        y45.j(aeVar, "anrChecker");
        y45.j(beVar, "anrReporter");
        y45.j(y42Var, "threadUtils");
        ce ceVar2 = ce.j;
        if (ceVar2 == null) {
            synchronized (ce.i) {
                ceVar = ce.j;
                if (ceVar == null) {
                    ceVar = new ce(jLongValue, jLongValue2, set, nk1VarA, aeVar, beVar, y42Var, 0);
                    ce.j = ceVar;
                }
            }
            ceVar2 = ceVar;
        }
        ceVar2.c();
    }
}
