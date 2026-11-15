package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.ProgressBar;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class c51 implements b51 {
    @Override
    public final ProgressBar a(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return null;
    }

    @Override
    public final View b(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return null;
    }

    @Override
    public final View c(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return view.findViewById(R.id.close);
    }
}
