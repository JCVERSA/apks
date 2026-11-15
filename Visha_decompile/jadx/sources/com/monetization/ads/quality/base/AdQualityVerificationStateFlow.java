package com.monetization.ads.quality.base;

import com.monetization.ads.quality.base.model.AdQualityVerificationMode;
import defpackage.gx9;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001R\u0014\u0010\u0005\u001a\u00020\u00028&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068&X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;", "", "Lcom/monetization/ads/quality/base/model/AdQualityVerificationMode;", "getVerificationMode", "()Lcom/monetization/ads/quality/base/model/AdQualityVerificationMode;", "verificationMode", "Lgx9;", "Lcom/monetization/ads/quality/base/state/AdQualityVerificationState;", "getVerificationResultStateFlow", "()Lgx9;", "verificationResultStateFlow", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface AdQualityVerificationStateFlow {
    AdQualityVerificationMode getVerificationMode();

    gx9 getVerificationResultStateFlow();
}
