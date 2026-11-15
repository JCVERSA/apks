package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.LifecycleOwner;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivData;
import defpackage.y45;
import java.util.UUID;

public final class u20 implements b10<ExtendedNativeAdView> {
    private final DivData a;
    private final k20 b;
    private final defpackage.jh2 c;
    private final sp1 d;
    private final LifecycleOwner e;
    private final n30 f;
    private final h20 g;

    public u20(DivData divData, k20 k20Var, defpackage.jh2 jh2Var, sp1 sp1Var, LifecycleOwner lifecycleOwner) {
        this(divData, k20Var, jh2Var, sp1Var, lifecycleOwner, new n30(), new h20());
    }

    @Override
    public final void a(ViewGroup viewGroup) {
        ExtendedNativeAdView extendedNativeAdView = (ExtendedNativeAdView) viewGroup;
        y45.j(extendedNativeAdView, TtmlNode.RUBY_CONTAINER);
        try {
            Context context = extendedNativeAdView.getContext();
            n30 n30Var = this.f;
            y45.g(context);
            defpackage.jh2 jh2Var = this.c;
            LifecycleOwner lifecycleOwner = this.e;
            n30Var.getClass();
            Div2View div2ViewA = n30.a(context, jh2Var, lifecycleOwner);
            extendedNativeAdView.addView(div2ViewA);
            this.g.getClass();
            String string = UUID.randomUUID().toString();
            y45.i(string, "toString(...)");
            div2ViewA.setData(this.a, new defpackage.ei2(string));
            u10.a(div2ViewA).a(this.b);
        } catch (Throwable th) {
            sp0.b(new Object[0]);
            this.d.reportError("Failed to bind DivKit", th);
        }
    }

    @Override
    public final void c() {
    }

    public u20(DivData divData, k20 k20Var, defpackage.jh2 jh2Var, sp1 sp1Var, LifecycleOwner lifecycleOwner, n30 n30Var, h20 h20Var) {
        y45.j(divData, "divData");
        y45.j(k20Var, "divKitActionAdapter");
        y45.j(jh2Var, "divConfiguration");
        y45.j(sp1Var, "reporter");
        y45.j(n30Var, "divViewCreator");
        y45.j(h20Var, "divDataTagCreator");
        this.a = divData;
        this.b = k20Var;
        this.c = jh2Var;
        this.d = sp1Var;
        this.e = lifecycleOwner;
        this.f = n30Var;
        this.g = h20Var;
    }
}
