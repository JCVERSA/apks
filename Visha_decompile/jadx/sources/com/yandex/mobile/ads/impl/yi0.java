package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class yi0 {
    private final o50 a;
    private final n4 b;

    public yi0(o50 o50Var, n4 n4Var) {
        y45.j(o50Var, "environmentConfiguration");
        y45.j(n4Var, "adHostConfigurator");
        this.a = o50Var;
        this.b = n4Var;
    }

    public final void a(Context context, xi0 xi0Var) {
        String strA;
        y45.j(context, "context");
        y45.j(xi0Var, "identifiers");
        df dfVarA = xi0Var.a();
        String strC = xi0Var.c();
        cj0 cj0VarB = xi0Var.b();
        n4 n4Var = this.b;
        n4Var.getClass();
        y45.j(context, "context");
        y45.j(dfVarA, "identifiers");
        y45.j(cj0VarB, "identifiersType");
        int iOrdinal = cj0VarB.ordinal();
        if (iOrdinal == 0) {
            strA = n4Var.a(context);
        } else {
            if (iOrdinal != 1) {
                throw new NoWhenBranchMatchedException();
            }
            strA = dfVarA.a();
            if (strA == null) {
                strA = n4Var.a(context);
            }
        }
        this.a.a(strA);
        this.a.b(dfVarA.b());
        this.a.d(dfVarA.c());
        this.a.c(strC);
    }
}
