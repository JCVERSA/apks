package com.yandex.mobile.ads.impl;

import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class pd1 {
    private final wk0 a;

    public pd1() {
        this(new wk0());
    }

    public final od1 a(tk0 tk0Var, s9 s9Var) {
        y45.j(tk0Var, "impressionReporter");
        y45.j(s9Var, "adStructureType");
        int iOrdinal = s9Var.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal != 1 && iOrdinal != 2) {
                throw new NoWhenBranchMatchedException();
            }
            this.a.getClass();
            return new s62(tk0Var, wk0.a(s9Var));
        }
        wk0 wk0Var = this.a;
        s9 s9Var2 = s9.d;
        wk0Var.getClass();
        vk0 vk0VarA = wk0.a(s9Var2);
        wk0 wk0Var2 = this.a;
        s9 s9Var3 = s9.c;
        wk0Var2.getClass();
        return new xy1(new s62(tk0Var, vk0VarA), new s62(tk0Var, wk0.a(s9Var3)));
    }

    public pd1(wk0 wk0Var) {
        y45.j(wk0Var, "impressionTrackingReportTypesProvider");
        this.a = wk0Var;
    }
}
