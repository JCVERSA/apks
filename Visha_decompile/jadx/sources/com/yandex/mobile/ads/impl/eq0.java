package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class eq0 implements d10 {
    private final o3 a;
    private final dq0 b;
    private final c51 c;

    public eq0(o3 o3Var, j1 j1Var, dq0 dq0Var, c51 c51Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(j1Var, "adActivityListener");
        y45.j(dq0Var, "interstitialDivKitDesignCreatorProvider");
        y45.j(c51Var, "nativeAdControlViewProviderById");
        this.a = o3Var;
        this.b = dq0Var;
        this.c = c51Var;
    }

    @Override
    public final List<ee0> a(Context context, o8<?> o8Var, q61 q61Var, zr zrVar, st stVar, e1 e1Var, dw dwVar, k3 k3Var, ks1 ks1Var, f52 f52Var, l20 l20Var, b30 b30Var, m6 m6Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(zrVar, "contentCloseListener");
        y45.j(stVar, "nativeAdEventListener");
        y45.j(e1Var, "eventController");
        y45.j(dwVar, "debugEventsReporter");
        y45.j(k3Var, "adCompleteListener");
        y45.j(ks1Var, "closeVerificationController");
        y45.j(f52Var, "timeProviderContainer");
        y45.j(l20Var, "divKitActionHandlerDelegate");
        fq fqVarA = new cq0(o8Var, e1Var, zrVar, new di2()).a(this.c, dwVar, f52Var);
        s01 s01VarC = this.a.q().c();
        return defpackage.i81.l0(defpackage.i81.J0(defpackage.x71.e(this.b.a(context, o8Var, q61Var, e1Var, zrVar, k3Var, dwVar, l20Var, f52Var, b30Var, m6Var)), defpackage.y71.n(new nj1(fqVarA, s01VarC, new vq()), new cr0(fqVarA, s01VarC, new uq1(), new vq()), new br0(fqVarA, s01VarC, new uq1(), new vq()))));
    }
}
