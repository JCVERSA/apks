package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;

public final class o52 implements n52 {
    @Override
    public final TextView a(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("timer_value");
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final View b(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("timer_container");
        if (viewFindViewWithTag != null) {
            return viewFindViewWithTag;
        }
        return null;
    }
}
