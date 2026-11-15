package com.yandex.mobile.ads.impl;

import android.view.View;
import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class yc<V extends ViewGroup> implements b10<V> {
    private final rt a;
    private final n51 b;

    public yc(rt rtVar, n51 n51Var) {
        y45.j(rtVar, "nativeAdAssets");
        y45.j(n51Var, "nativeAdDividerViewProvider");
        this.a = rtVar;
        this.b = n51Var;
    }

    @Override
    public final void a(V v) {
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        this.b.getClass();
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        View viewFindViewById = v.findViewById(R.id.age_divider);
        if (viewFindViewById == null || this.a.a() != null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    @Override
    public final void c() {
    }
}
