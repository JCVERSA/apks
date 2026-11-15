package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class fe implements ee {
    private final pw1 a;
    private final mu1 b;
    private final k2 c;
    private final Context d;

    public fe(Context context, pw1 pw1Var, mu1 mu1Var) {
        y45.j(context, "context");
        y45.j(pw1Var, "sdkSettings");
        y45.j(mu1Var, "sdkConfigurationExpiredDateValidator");
        this.a = pw1Var;
        this.b = mu1Var;
        this.c = new k2(context);
        this.d = context.getApplicationContext();
    }

    @Override
    public final boolean a() {
        if (!this.c.a().d()) {
            return false;
        }
        pw1 pw1Var = this.a;
        Context context = this.d;
        y45.i(context, "context");
        ju1 ju1VarA = pw1Var.a(context);
        if (ju1VarA != null) {
            boolean z = ju1VarA.d() != null;
            boolean zA = this.b.a(ju1VarA);
            if ((ju1VarA.V() && !zA) || z) {
                return false;
            }
        }
        return true;
    }
}
