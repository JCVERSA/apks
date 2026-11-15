package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.monetization.ads.fullscreen.template.view.ExtendedViewContainer;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class xv0<V extends ViewGroup> implements b10<V> {
    private final rt a;
    private final a51 b;

    public xv0(rt rtVar, a51 a51Var) {
        y45.j(rtVar, "nativeAdAssets");
        y45.j(a51Var, "nativeAdContainerViewProvider");
        this.a = rtVar;
        this.b = a51Var;
    }

    @Override
    public final void a(V v) {
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        this.b.getClass();
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        ExtendedViewContainer extendedViewContainer = (ExtendedViewContainer) v.findViewById(R.id.media_container);
        if (extendedViewContainer != null && this.a.h() == null && this.a.i() == null) {
            extendedViewContainer.setVisibility(8);
        }
    }

    @Override
    public final void c() {
    }
}
