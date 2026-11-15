package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class jj2<V extends ViewGroup> implements b10<V> {
    private final k41 a;

    public jj2() {
        this(new k41());
    }

    @Override
    public final void a(V v) {
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        this.a.getClass();
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        TextView textView = (TextView) v.findViewById(R.id.warning);
        if (textView != null) {
            textView.setSelected(true);
        }
    }

    @Override
    public final void c() {
    }

    public jj2(k41 k41Var) {
        y45.j(k41Var, "nativeAdAssetViewProvider");
        this.a = k41Var;
    }
}
