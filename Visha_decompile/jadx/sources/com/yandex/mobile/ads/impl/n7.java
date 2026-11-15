package com.yandex.mobile.ads.impl;

import com.monetization.ads.quality.base.model.AdQualityVerificationError;
import com.monetization.ads.quality.base.model.configuration.AdQualityVerificationAdConfiguration;
import com.monetization.ads.quality.base.result.AdQualityVerificationResult;
import defpackage.y45;
import kotlin.random.Random;

public final class n7 {
    private final d7 a;

    public n7(d7 d7Var) {
        y45.j(d7Var, "verificationPolicy");
        this.a = d7Var;
    }

    public final AdQualityVerificationResult.NotVerified a(AdQualityVerificationAdConfiguration adQualityVerificationAdConfiguration) {
        boolean zC;
        y45.j(adQualityVerificationAdConfiguration, "adConfiguration");
        m7 m7Var = this.a.a().get(adQualityVerificationAdConfiguration.getVerifiableAdNetwork());
        int iB = m7Var != null ? m7Var.b() : this.a.e();
        boolean z = true;
        if (m7Var != null) {
            zC = !m7Var.a();
        } else {
            zC = this.a.c();
        }
        if (!this.a.d().contains(adQualityVerificationAdConfiguration.getAdUnitId()) && !this.a.d().isEmpty()) {
            z = false;
        }
        if (!zC || !z) {
            return new AdQualityVerificationResult.NotVerified(new AdQualityVerificationError.DisabledError());
        }
        if (Random.Default.nextInt(0, 100) < iB) {
            return null;
        }
        return new AdQualityVerificationResult.NotVerified(new AdQualityVerificationError.LowUsagePercent());
    }
}
