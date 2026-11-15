package com.yandex.mobile.ads.impl;

import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.FunctionReferenceImpl;

final class ic2 extends FunctionReferenceImpl implements e74 {
    public ic2(ka2 ka2Var) {
        super(1, ka2Var, dq1.class, "onFailure", "onFailure(Lcom/monetization/ads/video/VideoAdError;)V", 0);
    }

    @Override
    public final Object invoke(Object obj) {
        sb2 sb2Var = (sb2) obj;
        y45.j(sb2Var, "p0");
        ((dq1) this.receiver).a(sb2Var);
        return zfb.a;
    }
}
