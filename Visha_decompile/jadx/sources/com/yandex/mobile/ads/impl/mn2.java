package com.yandex.mobile.ads.impl;

import defpackage.e84;
import defpackage.x74;
import defpackage.y45;
import kotlin.jvm.internal.FunctionReferenceImpl;

final class mn2 implements ya2, e84 {
    final nn2 a;

    public mn2(nn2 nn2Var) {
        this.a = nn2Var;
    }

    @Override
    public final void a(xa2 xa2Var) {
        y45.j(xa2Var, "p0");
        nn2.a(this.a, xa2Var);
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof ya2) && (obj instanceof e84)) {
            return y45.e(getFunctionDelegate(), ((e84) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override
    public final x74 getFunctionDelegate() {
        return new FunctionReferenceImpl(1, this.a, nn2.class, "trackVerificationNotExecuted", "trackVerificationNotExecuted(Lcom/yandex/mobile/ads/video/playback/tracker/verification/omsdk/error/VerificationNotExecutedException;)V", 0);
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }
}
