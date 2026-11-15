package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class nh1<V extends ViewGroup> implements b10<V> {
    private final rt a;
    private final h41 b;
    private final k41 c;

    public nh1(rt rtVar, h41 h41Var, k41 k41Var) {
        y45.j(rtVar, "nativeAdAssets");
        y45.j(h41Var, "nativeAdAdditionalViewProvider");
        y45.j(k41Var, "nativeAdAssetViewProvider");
        this.a = rtVar;
        this.b = h41Var;
        this.c = k41Var;
    }

    @Override
    public final void a(V v) {
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        this.b.getClass();
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        ImageView imageView = (ImageView) v.findViewById(R.id.icon_placeholder);
        tt ttVarG = this.a.g();
        tt ttVarE = this.a.e();
        if (imageView != null && ttVarG == null && ttVarE == null) {
            this.c.getClass();
            y45.j(v, TtmlNode.RUBY_CONTAINER);
            kh2 kh2Var = new kh2((TextView) v.findViewById(R.id.title));
            imageView.setVisibility(0);
            imageView.setOnClickListener(kh2Var);
        }
    }

    @Override
    public final void c() {
    }
}
