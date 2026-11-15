package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class eg {
    public static void a(Context context, en2 en2Var) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        int i = g82.c;
        g82.a(context, en2Var.c());
        de.a(context, en2Var.c());
        mt0 mt0Var = new mt0();
        Boolean boolC = mt0.c(context);
        if (boolC != null) {
            q11.b(boolC.booleanValue());
        }
        Boolean boolF = mt0.f(context);
        if (boolF != null) {
            q11.a(boolF.booleanValue());
        }
        if (pa.a(context)) {
            new i11();
            i11.a aVarA = i11.a(context);
            if (aVarA instanceof i11.a.b) {
                hp0.a(new ip0().a((i11.a.b) aVarA), new Object[0]);
            } else if (aVarA instanceof i11.a.C0318a) {
                hp0.b("Yandex Mobile Ads 7.12.2 integrated successfully", new Object[0]);
            }
            new a11().a();
            rz0 rz0Var = new rz0();
            int i2 = mz0.e;
            c01.a(new d01(rz0Var).a(new a01().a(mz0.a.a())));
        }
        qw1 qw1Var = new qw1(new it0(), mt0Var, en2Var);
        p0.a(context);
        qw1Var.a(context);
    }
}
