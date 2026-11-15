package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class yi2 implements qk.a<xc1> {
    private final dq1<xc1> a = null;

    @Override
    public final void a(si2 si2Var) {
        sb2 sb2Var;
        y45.j(si2Var, "error");
        if (si2Var.b == null) {
            String message = si2Var.getMessage();
            if (message == null) {
                message = "Ad request failed with network error";
            }
            sb2Var = new sb2(2, message);
        } else {
            y45.j("Ping error", "description");
            sb2Var = new sb2(1, "Ping error");
        }
        dq1<xc1> dq1Var = this.a;
        if (dq1Var != null) {
            dq1Var.a(sb2Var);
        }
    }

    @Override
    public final void a(Object obj) {
        xc1 xc1Var = (xc1) obj;
        y45.j(xc1Var, "response");
        dq1<xc1> dq1Var = this.a;
        if (dq1Var != null) {
            dq1Var.a(xc1Var);
        }
    }
}
