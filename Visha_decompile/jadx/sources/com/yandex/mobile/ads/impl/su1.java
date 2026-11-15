package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class su1 {
    private final mu1 a;
    private final xw1 b;
    private final tr c;

    public su1() {
        this(new mu1(), new xw1());
    }

    public final boolean a(ju1 ju1Var) {
        y45.j(ju1Var, "sdkConfiguration");
        if (!this.a.a(ju1Var)) {
            this.b.getClass();
            y45.j(ju1Var, "sdkConfiguration");
            if (y45.e("7.12.2", ju1Var.J())) {
                this.c.getClass();
                y45.j(ju1Var, "sdkConfiguration");
                int i = pw1.l;
                if (y45.e(pw1.a.a().j(), ju1Var.A0())) {
                    this.c.getClass();
                    y45.j(ju1Var, "sdkConfiguration");
                    if (pw1.a.a().d() == ju1Var.m0()) {
                        this.c.getClass();
                        y45.j(ju1Var, "sdkConfiguration");
                        if (y45.e(pw1.a.a().f(), ju1Var.U())) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    public su1(mu1 mu1Var, xw1 xw1Var) {
        y45.j(mu1Var, "sdkConfigurationExpiredDateValidator");
        y45.j(xw1Var, "sdkVersionUpdateValidator");
        this.a = mu1Var;
        this.b = xw1Var;
        this.c = new tr();
    }
}
