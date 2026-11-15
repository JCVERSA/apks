package com.facebook.ads.redexgen.core;

import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAdListener;

public class C1103Nd implements InterstitialAdListener {
    public final AbstractC1910hy A00;
    public final C1860h4 A01;

    public C1103Nd(C1860h4 c1860h4, AbstractC1910hy abstractC1910hy) {
        this.A01 = c1860h4;
        this.A00 = abstractC1910hy;
    }

    @Override
    public final void onAdClicked(Ad ad) {
    }

    @Override
    public final void onAdLoaded(Ad ad) {
        this.A01.A00.A07.onAdLoaded(this.A01.A00.A08.A6c());
    }

    @Override
    public final void onError(Ad ad, AdError adError) {
        this.A01.A00.A01 = null;
        this.A00.A2A(false);
        this.A01.A00.A07.onAdLoaded(this.A01.A00.A08.A6c());
    }

    @Override
    public final void onInterstitialDismissed(Ad ad) {
        this.A01.A00.A04 = false;
        if (this.A01.A00.A03 != null) {
            this.A01.A00.A03.A0S(new C1862h6(this));
            this.A01.A00.A03.A0N();
            this.A01.A00.A03.A0K();
            this.A01.A00.A03 = null;
        }
        this.A01.A00.A07.onInterstitialDismissed(this.A01.A00.A08.A6c());
    }

    @Override
    public final void onInterstitialDisplayed(Ad ad) {
    }

    @Override
    public final void onLoggingImpression(Ad ad) {
    }
}
