package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.monetization.ads.fullscreen.template.view.CallToActionView;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class sn<V extends ViewGroup> implements b10<V> {
    private final q61 a;
    private final k41 b;

    public sn(q61 q61Var, k41 k41Var) {
        y45.j(q61Var, "nativeAd");
        y45.j(k41Var, "nativeAdAssetViewProvider");
        this.a = q61Var;
        this.b = k41Var;
    }

    @Override
    public final void a(V v) {
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        this.b.getClass();
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        TextView textView = (TextView) v.findViewById(R.id.call_to_action);
        gr1 adType = this.a.getAdType();
        if (!(textView instanceof CallToActionView) || adType == gr1.d) {
            return;
        }
        ((CallToActionView) textView).a();
    }

    @Override
    public final void c() {
    }
}
