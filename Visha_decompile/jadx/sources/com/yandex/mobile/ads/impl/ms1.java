package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ms1 {
    private final o3 a;
    private final j1 b;
    private final int c;
    private final i30 d;

    public ms1(o3 o3Var, j1 j1Var, int i) {
        this(o3Var, j1Var, i, new i30());
    }

    private static ar a(o8 o8Var, q61 q61Var, e1 e1Var, k3 k3Var, ks1 ks1Var, f52 f52Var, b30 b30Var, m6 m6Var) {
        o52 o52Var = new o52();
        d51 d51Var = new d51();
        n91 n91VarB = q61Var.b();
        return new ar(new ls1(o8Var, e1Var, ks1Var, d51Var, n91VarB, f52Var, b30Var, new wp()), new as(o8Var, e1Var, k3Var, n91VarB, f52Var, b30Var), new ss1(e1Var, o52Var, n91VarB, f52Var), new vz1(m6Var, e1Var, d51Var, mz1.a(m6Var)));
    }

    public ms1(o3 o3Var, j1 j1Var, int i, i30 i30Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(j1Var, "adActivityListener");
        y45.j(i30Var, "divKitIntegrationValidator");
        this.a = o3Var;
        this.b = j1Var;
        this.c = i;
        this.d = i30Var;
    }

    public final f30 a(Context context, o8 o8Var, q61 q61Var, e1 e1Var, k3 k3Var, ks1 ks1Var, f52 f52Var, l20 l20Var, b30 b30Var, m6 m6Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(e1Var, "adActivityEventController");
        y45.j(k3Var, "adCompleteListener");
        y45.j(ks1Var, "closeVerificationController");
        y45.j(f52Var, "timeProviderContainer");
        y45.j(l20Var, "divKitActionHandlerDelegate");
        try {
            this.d.getClass();
            if (!i30.a(context) || b30Var == null) {
                return null;
            }
            return new f30(b30Var.b(), this.a, a(o8Var, q61Var, e1Var, k3Var, ks1Var, f52Var, b30Var, m6Var), this.b, l20Var, this.c);
        } catch (Throwable unused) {
            return null;
        }
    }
}
