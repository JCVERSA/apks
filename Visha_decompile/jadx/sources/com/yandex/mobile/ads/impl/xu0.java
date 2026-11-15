package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.monetization.ads.fullscreen.template.view.ExtendedViewContainer;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class xu0<V extends ViewGroup> implements b10<V> {
    private final a51 a;
    private final yu0 b;

    public xu0(rt rtVar, a51 a51Var, yu0 yu0Var) {
        y45.j(rtVar, "nativeAdAssets");
        y45.j(a51Var, "nativeAdContainerViewProvider");
        y45.j(yu0Var, "mediaAspectRatioProvider");
        this.a = a51Var;
        this.b = yu0Var;
    }

    @Override
    public final void a(V v) {
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        this.a.getClass();
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        ExtendedViewContainer extendedViewContainer = (ExtendedViewContainer) v.findViewById(R.id.media_container);
        Float fA = this.b.a();
        if (extendedViewContainer == null || fA == null) {
            return;
        }
        extendedViewContainer.setMeasureSpecProvider(new lm1(fA.floatValue(), new su0.a()));
    }

    @Override
    public final void c() {
    }
}
