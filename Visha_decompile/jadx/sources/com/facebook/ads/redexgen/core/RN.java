package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.api.NativeAdViewTypeApi;

public final class RN implements NativeAdViewTypeApi {
    public final EnumC1296Us A00;

    public RN(int i) {
        this.A00 = EnumC1296Us.A00(i);
    }

    @Override
    public final int getHeight() {
        return this.A00.A04();
    }

    @Override
    public final int getValue() {
        return this.A00.A05();
    }

    @Override
    public final int getWidth() {
        return this.A00.A06();
    }
}
