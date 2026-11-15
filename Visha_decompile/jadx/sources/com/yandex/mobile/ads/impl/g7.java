package com.yandex.mobile.ads.impl;

import com.monetization.ads.quality.base.AdQualityVerificationStateFlow;
import com.monetization.ads.quality.base.model.AdQualityVerificationBlockingReasons;
import com.monetization.ads.quality.base.model.AdQualityVerificationMode;
import com.monetization.ads.quality.base.state.AdQualityVerificationState;
import defpackage.gx9;
import defpackage.hx9;
import defpackage.sz3;
import defpackage.y45;

public final class g7 implements AdQualityVerificationStateFlow {
    private final AdQualityVerificationStateFlow a;
    private final String b;
    private final AdQualityVerificationMode c;
    private final gx9 d;

    public g7(AdQualityVerificationStateFlow adQualityVerificationStateFlow, String str) {
        y45.j(adQualityVerificationStateFlow, "verificationStateFlow");
        y45.j(str, "errorDescription");
        this.a = adQualityVerificationStateFlow;
        this.b = str;
        this.c = adQualityVerificationStateFlow.getVerificationMode();
        this.d = sz3.a(hx9.a(new AdQualityVerificationState.Blocked(new AdQualityVerificationBlockingReasons(defpackage.y71.n("Ad is blocked by validation policy", str), defpackage.y71.n("Ad is blocked by validation policy", str)))));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g7)) {
            return false;
        }
        g7 g7Var = (g7) obj;
        return y45.e(this.a, g7Var.a) && y45.e(this.b, g7Var.b);
    }

    @Override
    public final AdQualityVerificationMode getVerificationMode() {
        return this.c;
    }

    @Override
    public final gx9 getVerificationResultStateFlow() {
        return this.d;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "AdQualityVerificationStateFlowByPolicy(verificationStateFlow=" + this.a + ", errorDescription=" + this.b + ")";
    }
}
