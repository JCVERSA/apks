package com.facebook.ads.redexgen.core;

import android.widget.FrameLayout;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;

public final class C6Q extends C1778fg {
    public InterfaceC1636dM A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A06(NativeAdLayout nativeAdLayout, C1635dL c1635dL, NativeAd nativeAd, C1295Ur c1295Ur) {
        C1449aK c1449aK = new C1449aK(c1635dL);
        MediaView mediaView = new MediaView(c1635dL);
        AdOptionsView adOptionsView = new AdOptionsView(c1635dL, nativeAd, nativeAdLayout);
        c1295Ur.A09(adOptionsView, 28);
        this.A00 = new EP(c1635dL, nativeAd, c1295Ur, C1178Qc.A0L(nativeAd.getInternalNativeAd()).A18(), c1449aK, mediaView, adOptionsView);
        XP.A0K(nativeAdLayout, c1295Ur.A00());
        nativeAd.registerViewForInteraction(nativeAdLayout, mediaView, c1449aK, this.A00.getViewsForInteraction());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        nativeAdLayout.addView(this.A00.getView(), layoutParams);
    }

    @Override
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A00.unregisterView();
    }
}
