package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.ProgressBar;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.model.HttpHeaders;
import defpackage.y45;

public final class d51 implements b51 {
    @Override
    public final ProgressBar a(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (ProgressBar) view.findViewWithTag("close_progress_view");
    }

    @Override
    public final View b(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return view.findViewWithTag("skip_button");
    }

    @Override
    public final View c(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return view.findViewWithTag(HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE);
    }
}
