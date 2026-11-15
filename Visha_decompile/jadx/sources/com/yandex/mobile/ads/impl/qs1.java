package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class qs1 implements d10 {
    private final ms1 a;

    public qs1(o3 o3Var, j1 j1Var, ms1 ms1Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(j1Var, "adActivityListener");
        y45.j(ms1Var, "rewardedDivKitDesignCreatorProvider");
        this.a = ms1Var;
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
        ArrayList arrayList = new ArrayList();
        f30 f30VarA = this.a.a(context, o8Var, q61Var, e1Var, k3Var, ks1Var, f52Var, l20Var, b30Var, m6Var);
        if (f30VarA != null) {
            arrayList.add(f30VarA);
        }
        return arrayList;
    }
}
