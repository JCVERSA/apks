package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.cookie.SerializableCookie;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdViewProvider;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;

public final class uy0 implements MediatedNativeAdViewProvider {
    private final View a;
    private final q71 b;

    public uy0(View view, q71 q71Var) {
        y45.j(view, "nativeAdView");
        y45.j(q71Var, "nativeAdWeakViewProvider");
        this.a = view;
        this.b = q71Var;
    }

    @Override
    public final TextView getAgeView() {
        View viewA = this.b.a("age");
        if (viewA instanceof TextView) {
            return (TextView) viewA;
        }
        return null;
    }

    @Override
    public final TextView getBodyView() {
        View viewA = this.b.a(TtmlNode.TAG_BODY);
        if (viewA instanceof TextView) {
            return (TextView) viewA;
        }
        return null;
    }

    @Override
    public final TextView getCallToActionView() {
        View viewA = this.b.a("call_to_action");
        if (viewA instanceof TextView) {
            return (TextView) viewA;
        }
        return null;
    }

    @Override
    public final TextView getDomainView() {
        View viewA = this.b.a(SerializableCookie.DOMAIN);
        if (viewA instanceof TextView) {
            return (TextView) viewA;
        }
        return null;
    }

    @Override
    public final ImageView getFeedbackView() {
        View viewA = this.b.a("feedback");
        if (viewA instanceof ImageView) {
            return (ImageView) viewA;
        }
        return null;
    }

    @Override
    public final ImageView getIconView() {
        View viewA = this.b.a("icon");
        if (viewA instanceof ImageView) {
            return (ImageView) viewA;
        }
        return null;
    }

    @Override
    public final FrameLayout getMediaView() {
        View viewA = this.b.a("media");
        if (viewA instanceof CustomizableMediaView) {
            return (CustomizableMediaView) viewA;
        }
        return null;
    }

    @Override
    public final View getNativeAdView() {
        return this.a;
    }

    @Override
    public final TextView getPriceView() {
        View viewA = this.b.a("price");
        if (viewA instanceof TextView) {
            return (TextView) viewA;
        }
        return null;
    }

    @Override
    public final View getRatingView() {
        return this.b.a("rating");
    }

    @Override
    public final TextView getReviewCountView() {
        View viewA = this.b.a("review_count");
        if (viewA instanceof TextView) {
            return (TextView) viewA;
        }
        return null;
    }

    @Override
    public final TextView getSponsoredView() {
        View viewA = this.b.a("sponsored");
        if (viewA instanceof TextView) {
            return (TextView) viewA;
        }
        return null;
    }

    @Override
    public final TextView getTitleView() {
        View viewA = this.b.a("title");
        if (viewA instanceof TextView) {
            return (TextView) viewA;
        }
        return null;
    }

    @Override
    public final TextView getWarningView() {
        View viewA = this.b.a("warning");
        if (viewA instanceof TextView) {
            return (TextView) viewA;
        }
        return null;
    }
}
