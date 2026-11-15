package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.cookie.SerializableCookie;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;

public final class l41 implements j41 {
    @Override
    public final View a(View view, String str) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        y45.j(str, "assetName");
        View viewFindViewWithTag = view.findViewWithTag(str);
        if (viewFindViewWithTag != null) {
            return viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final CheckBox b(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("mute_button");
        if (viewFindViewWithTag instanceof CheckBox) {
            return (CheckBox) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final CustomizableMediaView c(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("media");
        if (viewFindViewWithTag instanceof CustomizableMediaView) {
            return (CustomizableMediaView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView d(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("price");
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView e(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("call_to_action");
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView f(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("warning");
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final ImageView g(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("favicon");
        if (viewFindViewWithTag instanceof ImageView) {
            return (ImageView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView h(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("age");
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final View i(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("rating");
        if (viewFindViewWithTag != null) {
            return viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView j(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("title");
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final ProgressBar k(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("video_progress");
        if (viewFindViewWithTag instanceof ProgressBar) {
            return (ProgressBar) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final ImageView l(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("feedback");
        if (viewFindViewWithTag instanceof ImageView) {
            return (ImageView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView m(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("sponsored");
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView n(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag(SerializableCookie.DOMAIN);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final ImageView o(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("icon");
        if (viewFindViewWithTag instanceof ImageView) {
            return (ImageView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView p(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("review_count");
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView a(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag(TtmlNode.TAG_BODY);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }
}
