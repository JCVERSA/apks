package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.bridge.gms.AdvertisingId;

public class XV implements SU {
    public final AdvertisingId A00;
    public final XN A01;

    public XV(XN xn, AdvertisingId advertisingId) {
        this.A01 = xn;
        this.A00 = advertisingId;
    }

    @Override
    public final boolean AAO() {
        return this.A00.isLimitAdTracking();
    }

    @Override
    public final String getId() {
        return this.A00.getId();
    }
}
