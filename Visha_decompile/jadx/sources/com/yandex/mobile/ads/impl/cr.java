package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import android.widget.ImageView;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class cr implements b10<ExtendedNativeAdView> {
    private final rt a;
    private final int b;

    public cr(rt rtVar, int i) {
        y45.j(rtVar, "nativeAdAssets");
        this.a = rtVar;
        this.b = i;
    }

    @Override
    public final void a(ViewGroup viewGroup) {
        ExtendedNativeAdView extendedNativeAdView = (ExtendedNativeAdView) viewGroup;
        y45.j(extendedNativeAdView, "adView");
        dr drVar = new dr(this.a, this.b, new h41());
        ImageView imageViewA = drVar.a(extendedNativeAdView);
        ImageView imageViewB = drVar.b(extendedNativeAdView);
        if (imageViewA != null) {
            imageViewA.setId(R.id.favicon);
        }
        if (imageViewB != null) {
            imageViewB.setId(R.id.icon);
        }
    }

    @Override
    public final void c() {
    }
}
