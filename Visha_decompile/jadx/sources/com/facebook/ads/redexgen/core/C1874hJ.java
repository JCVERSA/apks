package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.protocol.AdErrorType;

public class C1874hJ extends AbstractRunnableC1322Vt {
    public final C7B A00;
    public final NU A01;
    public final C06936r A02;

    public C1874hJ(C06936r c06936r, NU nu, C7B c7b) {
        this.A02 = c06936r;
        this.A01 = nu;
        this.A00 = c7b;
    }

    @Override
    public final void A07() {
        this.A02.A0T(this.A01);
        this.A02.A0Q(this.A00);
        this.A02.A00 = null;
        AdErrorType adErrorType = AdErrorType.RV_AD_TIMEOUT;
        this.A02.A0B.A0F().A5Y(adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage());
        this.A02.A07.A0G(new V1(adErrorType, ""));
    }
}
