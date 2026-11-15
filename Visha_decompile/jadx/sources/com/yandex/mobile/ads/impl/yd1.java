package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;

public final class yd1 implements j41 {
    private final int a;

    public yd1(int i) {
        this.a = i;
    }

    @Override
    public final View a(View view, String str) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        y45.j(str, "assetName");
        View viewFindViewWithTag = view.findViewWithTag(str + "_" + this.a);
        if (viewFindViewWithTag != null) {
            return viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final CheckBox b(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("mute_button_" + this.a);
        if (viewFindViewWithTag instanceof CheckBox) {
            return (CheckBox) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final CustomizableMediaView c(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("media_" + this.a);
        if (viewFindViewWithTag instanceof CustomizableMediaView) {
            return (CustomizableMediaView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView d(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("price_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView e(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("call_to_action_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView f(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("warning_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final ImageView g(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("favicon_" + this.a);
        if (viewFindViewWithTag instanceof ImageView) {
            return (ImageView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView h(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("age_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final View i(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("rating_" + this.a);
        if (viewFindViewWithTag != null) {
            return viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView j(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("title_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final ProgressBar k(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (ProgressBar) view.findViewWithTag("video_progress_" + this.a);
    }

    @Override
    public final ImageView l(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("feedback_" + this.a);
        if (viewFindViewWithTag instanceof ImageView) {
            return (ImageView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView m(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("sponsored_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView n(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("domain_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final ImageView o(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("icon_" + this.a);
        if (viewFindViewWithTag instanceof ImageView) {
            return (ImageView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView p(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("review_count_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }

    @Override
    public final TextView a(View view) {
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        View viewFindViewWithTag = view.findViewWithTag("body_" + this.a);
        if (viewFindViewWithTag instanceof TextView) {
            return (TextView) viewFindViewWithTag;
        }
        return null;
    }
}
