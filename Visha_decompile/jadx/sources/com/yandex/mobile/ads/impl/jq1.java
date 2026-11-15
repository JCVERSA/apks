package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.util.Log;
import defpackage.y45;
import java.io.File;

public final class jq1 {
    public static final iq1 a(Context context, int i) {
        y45.j(context, "context");
        int i2 = an1.b;
        boolean z = ti2.a;
        sp0.a("Yandex Mobile Ads");
        ti2.a = Log.isLoggable("Yandex Mobile Ads", 2);
        ti2.a = false;
        xk xkVar = new xk(new di0(context, dt1.a()).a(), new pm());
        File fileA = r10.a(context, "mobileads-volley-cache");
        int i3 = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        iq1 iq1Var = new iq1(new q10(fileA, (int) j01.a.a(context, 10485760L, (ju1VarA == null || ju1VarA.A() == 0) ? 52428800L : ju1VarA.A())), xkVar, i);
        iq1Var.a(new aq1());
        return iq1Var;
    }
}
