package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.monetization.ads.nativeads.CustomizableMediaView;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class k41 implements j41 {
    @Override
    public final View a(View view, String str) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        y45.j(str, "assetName");
        return null;
    }

    @Override
    public final CheckBox b(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return null;
    }

    @Override
    public final CustomizableMediaView c(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (CustomizableMediaView) view.findViewById(R.id.media);
    }

    @Override
    public final TextView d(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (TextView) view.findViewById(R.id.price);
    }

    @Override
    public final TextView e(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (TextView) view.findViewById(R.id.call_to_action);
    }

    @Override
    public final TextView f(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (TextView) view.findViewById(R.id.warning);
    }

    @Override
    public final ImageView g(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (ImageView) view.findViewById(R.id.favicon);
    }

    @Override
    public final TextView h(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (TextView) view.findViewById(R.id.age);
    }

    @Override
    public final View i(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return view.findViewById(R.id.rating);
    }

    @Override
    public final TextView j(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (TextView) view.findViewById(R.id.title);
    }

    @Override
    public final ProgressBar k(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return null;
    }

    @Override
    public final ImageView l(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (ImageView) view.findViewById(R.id.feedback);
    }

    @Override
    public final TextView m(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (TextView) view.findViewById(R.id.sponsored);
    }

    @Override
    public final TextView n(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (TextView) view.findViewById(R.id.domain);
    }

    @Override
    public final ImageView o(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (ImageView) view.findViewById(R.id.icon);
    }

    @Override
    public final TextView p(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (TextView) view.findViewById(R.id.review_count);
    }

    @Override
    public final TextView a(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (TextView) view.findViewById(R.id.body);
    }
}
