package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewTreeObserver;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;

public final class nj {
    private final ij a;

    public nj(o3 o3Var) {
        this(o3Var, new ij(o3Var));
    }

    public final mj a(Context context, o8 o8Var, q61 q61Var, np0 np0Var, b81 b81Var, ViewTreeObserver.OnPreDrawListener onPreDrawListener, qe2 qe2Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(np0Var, TtmlNode.RUBY_CONTAINER);
        y45.j(b81Var, "nativeAdEventListener");
        y45.j(onPreDrawListener, "preDrawListener");
        y45.j(qe2Var, "videoEventController");
        hj hjVarA = this.a.a(context, q61Var);
        return new mj(new lj(context, np0Var, defpackage.y71.o(hjVarA != null ? hjVarA.a(context, o8Var, q61Var, b81Var, qe2Var) : null), onPreDrawListener));
    }

    public nj(o3 o3Var, ij ijVar) {
        y45.j(o3Var, "adConfiguration");
        y45.j(ijVar, "designProvider");
        this.a = ijVar;
    }
}
