package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.RewardData;
import java.util.EnumSet;

public final class C06926q extends AbstractC1869hD {
    public static final InterfaceC1105Nf A02 = new C1850gt();
    public C1856gz A00;
    public final C1852gv A01;

    public C06926q(C1852gv c1852gv, String str) {
        super(c1852gv.A05(), str, A02.A5L(c1852gv));
        this.A01 = c1852gv;
    }

    @Override
    public final void A08() {
        if (this.A00 != null) {
            this.A00.destroy();
        }
        super.A00.AIc(NZ.A03);
    }

    @Override
    public final void A09() {
        this.A00 = new C1856gz(this.A01, this, A04());
        this.A00.A0G(this.A01.A0B(), this.A01.A07());
    }

    @Override
    public final void A0D(boolean z) {
        this.A05.AJ3(z);
    }

    public final void A0E(InterstitialAd interstitialAd, EnumSet<CacheFlag> cacheFlags, String str) {
        if (super.A00.A6M()) {
            return;
        }
        this.A01.A0D(interstitialAd);
        if (this.A00 != null) {
            this.A00.A0G(cacheFlags, str);
            return;
        }
        this.A01.A0K(cacheFlags);
        this.A01.A0H(str);
        if (UA.A09(this.A02) && UA.A0A(this.A02)) {
            if (UA.A0M(str)) {
                A05();
                return;
            } else {
                A09();
                return;
            }
        }
        A09();
    }

    public final void A0F(RewardData rewardData) {
        this.A01.A0F(rewardData);
        if (super.A01.A01) {
            super.A01.A0F(1013, AbstractC1120Nu.A00(new Bundle(), rewardData));
        }
    }

    public final boolean A0G() {
        if (this.A00 != null) {
            return this.A00.A0H();
        }
        return this.A01.A00() > 0 && XG.A00() > this.A01.A00();
    }

    public final boolean A0H() {
        if (this.A00 != null) {
            return this.A00.A0I();
        }
        return super.A00.A6h() == NZ.A05;
    }

    public final boolean A0I(InterstitialAd interstitialAd, InterstitialAd.InterstitialShowAdConfig interstitialShowAdConfig) {
        if (super.A00.A6N()) {
            return false;
        }
        this.A01.A0D(interstitialAd);
        if (super.A01.A01) {
            A0A(-1);
            return true;
        }
        if (this.A00 != null) {
            return this.A00.A0J();
        }
        this.A00 = new C1856gz(this.A01, this, A04());
        this.A00.A0J();
        return false;
    }
}
