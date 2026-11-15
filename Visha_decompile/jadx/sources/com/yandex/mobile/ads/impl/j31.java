package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.widget.FrameLayout;
import com.monetization.ads.nativeads.view.pager.MultiBannerControlsContainer;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class j31 {
    private final gt1<MultiBannerControlsContainer> a = new gt1<>();

    public final MultiBannerControlsContainer a(Context context) {
        y45.j(context, "context");
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        gt1<MultiBannerControlsContainer> gt1Var = this.a;
        int i = R.layout.monetization_ads_internal_multibanner_controls;
        gt1Var.getClass();
        MultiBannerControlsContainer multiBannerControlsContainer = (MultiBannerControlsContainer) gt1.a(context, MultiBannerControlsContainer.class, i, null);
        if (multiBannerControlsContainer != null) {
            multiBannerControlsContainer.setLayoutParams(layoutParams);
        }
        return multiBannerControlsContainer;
    }
}
