package com.facebook.ads.redexgen.core;

import com.facebook.ads.AudienceNetworkAds;

public class TJ implements AudienceNetworkAds.InitResult {
    public final String A00;
    public final boolean A01;

    public TJ(boolean z, String str) {
        this.A01 = z;
        this.A00 = str;
    }

    @Override
    public final String getMessage() {
        return this.A00;
    }

    @Override
    public final boolean isSuccess() {
        return this.A01;
    }
}
