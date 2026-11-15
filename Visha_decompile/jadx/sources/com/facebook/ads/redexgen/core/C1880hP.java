package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.protocol.AdErrorType;

public class C1880hP extends AbstractRunnableC1322Vt {
    public final C1936iS A00;
    public final NU A01;
    public final C07006y A02;

    public C1880hP(C07006y c07006y, NU nu, C1936iS c1936iS) {
        this.A02 = c07006y;
        this.A01 = nu;
        this.A00 = c1936iS;
    }

    @Override
    public final void A07() {
        this.A02.A0T(this.A01);
        this.A02.A0Q(this.A00);
        this.A02.A00 = null;
        V1 v1A00 = V1.A00(AdErrorType.INTERSTITIAL_AD_TIMEOUT);
        this.A02.A0B.A0F().A5Y(v1A00.A03().getErrorCode(), v1A00.A04());
        this.A02.A07.A0G(v1A00);
    }
}
