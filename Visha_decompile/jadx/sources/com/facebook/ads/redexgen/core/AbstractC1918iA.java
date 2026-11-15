package com.facebook.ads.redexgen.core;

import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;

public abstract class AbstractC1918iA implements MP {
    public int A00;
    public long A01;
    public RewardData A02;

    public abstract int A0H();

    public abstract AbstractC1088Mo A0I();

    public abstract boolean A0J();

    public final void A00(int i) {
        this.A00 = i;
    }

    public final void A01(long j) {
        this.A01 = j;
    }

    public final void A02(RewardData rewardData) {
        this.A02 = rewardData;
    }

    @Override
    public final AdPlacementType A8c() {
        return AdPlacementType.REWARDED_VIDEO;
    }
}
