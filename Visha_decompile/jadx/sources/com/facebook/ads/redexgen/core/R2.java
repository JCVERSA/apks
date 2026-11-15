package com.facebook.ads.redexgen.core;

import com.facebook.ads.AudienceNetworkAds;

public class R2 implements AudienceNetworkAds.InitListener {
    public final R3 A00;

    public R2(R3 r3) {
        this.A00 = r3;
    }

    @Override
    public final void onInitialized(AudienceNetworkAds.InitResult initResult) {
    }
}
