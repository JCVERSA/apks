package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class dq0 {
    private final o3 a;
    private final j1 b;
    private final int c;
    private final i30 d;
    private final op e;
    private final b51 f;

    public dq0(o3 o3Var, j1 j1Var, int i) {
        this(o3Var, j1Var, i, new i30(), new di2(), new d51());
    }

    public final f30 a(Context context, o8 o8Var, q61 q61Var, e1 e1Var, zr zrVar, k3 k3Var, dw dwVar, l20 l20Var, f52 f52Var, b30 b30Var, m6 m6Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(e1Var, "adActivityEventController");
        y45.j(zrVar, "contentCloseListener");
        y45.j(k3Var, "adCompleteListener");
        y45.j(dwVar, "debugEventsReporter");
        y45.j(l20Var, "divKitActionHandlerDelegate");
        y45.j(f52Var, "timeProviderContainer");
        try {
            this.d.getClass();
            if (!i30.a(context) || b30Var == null) {
                return null;
            }
            return new f30(b30Var.b(), this.a, new ar(new fq(o8Var, e1Var, this.e, zrVar, this.f, dwVar, f52Var), new as(o8Var, e1Var, k3Var, q61Var.b(), f52Var, b30Var), new vz1(m6Var, e1Var, this.f, mz1.a(m6Var))), this.b, l20Var, this.c);
        } catch (Throwable unused) {
            return null;
        }
    }

    public dq0(o3 o3Var, j1 j1Var, int i, i30 i30Var, op opVar, b51 b51Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(j1Var, "adActivityListener");
        y45.j(i30Var, "divKitIntegrationValidator");
        y45.j(opVar, "closeAppearanceController");
        y45.j(b51Var, "nativeAdControlViewProvider");
        this.a = o3Var;
        this.b = j1Var;
        this.c = i;
        this.d = i30Var;
        this.e = opVar;
        this.f = b51Var;
    }
}
