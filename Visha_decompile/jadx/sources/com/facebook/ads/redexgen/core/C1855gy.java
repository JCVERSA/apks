package com.facebook.ads.redexgen.core;

import com.facebook.ads.RewardedVideoAd;
import java.util.Arrays;

public class C1855gy extends MQ {
    public static byte[] A01;
    public final C1853gw A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 43);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{9, 24, 1, 36, 40, 41, 51, 53, 40, 43, 43, 34, 53, 103, 46, 52, 103, 41, 50, 43, 43};
    }

    public C1855gy(C1853gw c1853gw) {
        this.A00 = c1853gw;
    }

    @Override
    public final void A06() {
        this.A00.A08.onRewardServerFailed();
    }

    @Override
    public final void A07() {
        this.A00.A08.onRewardServerSuccess();
    }

    @Override
    public final void A08() {
        if (this.A00.A03 == null) {
            this.A00.A08.onRewardedVideoCompleted();
        }
    }

    @Override
    public final void A09() {
        if (this.A00.A03 == null) {
            this.A00.A08.onRewardedVideoActivityDestroyed();
        }
    }

    @Override
    public final void A0A() {
        if (this.A00.A03 != null) {
            C1203Rb c1203Rb = (C1203Rb) this.A00.A03.buildShowAdConfig();
            c1203Rb.A02(System.currentTimeMillis() - this.A00.A02);
            this.A00.A03.show(c1203Rb.build());
            return;
        }
        this.A00.A08.onRewardedVideoClosed();
    }

    @Override
    public final void A0C() {
        this.A00.A07.A0F().A3C();
        this.A00.A08.onAdClicked(this.A00.A09.A6c());
    }

    @Override
    public final void A0D() {
        this.A00.A08.onLoggingImpression(this.A00.A09.A6c());
    }

    @Override
    public final void A0F(MP mp) {
        if (this.A00.A05 == null) {
            this.A00.A07.A08().AAy(A00(0, 3, 67), AbstractC1248Sv.A0N, new C1249Sw(A00(3, 18, 108)));
            return;
        }
        AbstractC1918iA abstractC1918iA = (AbstractC1918iA) mp;
        if (this.A00.A09.A03 != null) {
            abstractC1918iA.A02(this.A00.A09.A03);
        }
        this.A00.A09.A00 = abstractC1918iA.A0H();
        this.A00.A06 = true;
        this.A00.A04 = this.A00.A05.A0I();
        if (this.A00.A04 != null) {
            int iA1x = 0;
            if (!this.A00.A04.A1T()) {
                iA1x = ((AbstractC1910hy) this.A00.A04).A1x();
            }
            if (iA1x > 0) {
                WR wr = new WR();
                if (wr.A09(this.A00.A07, this.A00.A09.A06, iA1x)) {
                    wr.A08(this.A00.A07, true);
                    this.A00.A03 = wr.A07(this.A00.A07, this.A00.A09.A0D, this.A00.A09.A06);
                } else {
                    wr.A08(this.A00.A07, false);
                }
            }
        }
        if (this.A00.A03 != null) {
            ((AbstractC1910hy) this.A00.A04).A2A(true);
            RewardedVideoAd.RewardedVideoLoadAdConfig loadAdConfig = this.A00.A03.buildLoadAdConfig().withFailOnCacheFailureEnabled(true).withRewardData(this.A00.A04.A0p()).withAdExperience(this.A00.A09.A02).withAdListener(new C1104Ne(this)).build();
            this.A00.A03.loadAd(loadAdConfig);
            return;
        }
        this.A00.A08.onAdLoaded(this.A00.A09.A6c());
    }

    @Override
    public final void A0G(V1 v1) {
        this.A00.A0D(true);
        this.A00.A09.A0B.A0F().A3F(XG.A01(this.A00.A01), v1.A03().getErrorCode(), v1.A04());
        this.A00.A08.onError(this.A00.A09.A6c(), WT.A00(v1));
    }
}
