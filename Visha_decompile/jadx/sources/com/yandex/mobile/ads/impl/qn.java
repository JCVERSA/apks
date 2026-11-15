package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class qn<V extends ViewGroup> implements b10<V> {
    private final k41 a;
    private final pn b;

    public qn(Context context, k41 k41Var, pn pnVar) {
        y45.j(context, "context");
        y45.j(k41Var, "nativeAdAssetViewProvider");
        y45.j(pnVar, "callToActionAnimationController");
        this.a = k41Var;
        this.b = pnVar;
    }

    @Override
    public final void a(V v) {
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        this.a.getClass();
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        TextView textView = (TextView) v.findViewById(R.id.call_to_action);
        if (textView != null) {
            this.b.a(textView);
        }
    }

    @Override
    public final void c() {
        this.b.a();
    }
}
