package com.yandex.mobile.ads.impl;

import com.monetization.ads.quality.base.AdQualityVerificationStateFlow;
import com.monetization.ads.quality.base.result.AdQualityVerificationResult;
import com.monetization.ads.quality.base.state.AdQualityVerificationState;
import defpackage.y45;

public final class h7 {
    private final d7 a;

    public h7(d7 d7Var) {
        y45.j(d7Var, "verificationPolicy");
        this.a = d7Var;
    }

    public final AdQualityVerificationResult a(AdQualityVerificationResult adQualityVerificationResult) {
        y45.j(adQualityVerificationResult, "status");
        if (!(adQualityVerificationResult instanceof AdQualityVerificationResult.Verified)) {
            return adQualityVerificationResult;
        }
        AdQualityVerificationResult.Verified verified = (AdQualityVerificationResult.Verified) adQualityVerificationResult;
        if (!(verified.getVerifiedAd().getVerificationResultStateFlow().getValue() instanceof AdQualityVerificationState.Error) || !this.a.b()) {
            return adQualityVerificationResult;
        }
        AdQualityVerificationStateFlow verifiedAd = verified.getVerifiedAd();
        Object value = verified.getVerifiedAd().getVerificationResultStateFlow().getValue();
        y45.h(value, "null cannot be cast to non-null type com.monetization.ads.quality.base.state.AdQualityVerificationState.Error");
        return new AdQualityVerificationResult.Verified(new g7(verifiedAd, ((AdQualityVerificationState.Error) value).getError().getDescription()));
    }
}
