package com.yandex.mobile.ads.nativeads;

import com.monetization.ads.nativeads.CustomizableMediaView;
import com.yandex.mobile.ads.impl.f81;
import com.yandex.mobile.ads.impl.k71;
import defpackage.y45;

public final class g {
    public static k71 a(NativeAdViewBinder nativeAdViewBinder) {
        y45.j(nativeAdViewBinder, "binder");
        return new k71(new k71.a(nativeAdViewBinder.getNativeAdView(), f81.c, kotlin.collections.a.l()).a(nativeAdViewBinder.getAgeView()).b(nativeAdViewBinder.getBodyView()).c(nativeAdViewBinder.getCallToActionView()).d(nativeAdViewBinder.getDomainView()).a(nativeAdViewBinder.getFaviconView()).b(nativeAdViewBinder.getFeedbackView()).c(nativeAdViewBinder.getIconView()).a((CustomizableMediaView) nativeAdViewBinder.getMediaView()).e(nativeAdViewBinder.getPriceView()).a(nativeAdViewBinder.getRatingView()).f(nativeAdViewBinder.getReviewCountView()).g(nativeAdViewBinder.getSponsoredView()).h(nativeAdViewBinder.getTitleView()).i(nativeAdViewBinder.getWarningView()), 0);
    }
}
