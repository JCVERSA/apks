package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import defpackage.y45;

public final class pq1 implements b10<ExtendedNativeAdView> {
    private final j1 a;
    private final int b;

    public pq1(j1 j1Var, int i) {
        y45.j(j1Var, "adActivityListener");
        this.a = j1Var;
        this.b = i;
    }

    @Override
    public final void a(ViewGroup viewGroup) {
        y45.j((ExtendedNativeAdView) viewGroup, TtmlNode.RUBY_CONTAINER);
        if (this.b == 1) {
            this.a.a(7);
        } else {
            this.a.a(6);
        }
    }

    @Override
    public final void c() {
    }
}
