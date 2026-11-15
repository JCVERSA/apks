package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import com.yandex.div.core.view2.Div2View;
import defpackage.y45;

public final class ga0 implements b10<ExtendedNativeAdView> {
    private final vk1 a;
    private final k20 b;
    private final sp1 c;

    public ga0(vk1 vk1Var, k20 k20Var, sp1 sp1Var) {
        y45.j(vk1Var, "preloadedDivKitDesign");
        y45.j(k20Var, "divKitActionAdapter");
        y45.j(sp1Var, "reporter");
        this.a = vk1Var;
        this.b = k20Var;
        this.c = sp1Var;
    }

    @Override
    public final void a(ViewGroup viewGroup) {
        ExtendedNativeAdView extendedNativeAdView = (ExtendedNativeAdView) viewGroup;
        y45.j(extendedNativeAdView, TtmlNode.RUBY_CONTAINER);
        try {
            extendedNativeAdView.removeAllViews();
            Div2View div2ViewD = this.a.d();
            ah2.a(div2ViewD);
            u10.a(div2ViewD).a(this.b);
            extendedNativeAdView.addView(div2ViewD);
        } catch (Throwable th) {
            sp0.b(new Object[0]);
            this.c.reportError("Failed to bind DivKit Feed Preloaded Ad", th);
        }
    }

    @Override
    public final void c() {
        Div2View div2ViewD = this.a.d();
        u10.a(div2ViewD).a((k20) null);
        ah2.a(div2ViewD);
    }
}
