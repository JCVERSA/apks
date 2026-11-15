package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.util.List;

public final class i90 {
    private final r90 a;

    public i90(o3 o3Var) {
        this(o3Var, new r90(o3Var));
    }

    public final mj a(Context context, o8 o8Var, b02 b02Var, List list, ViewGroup viewGroup, st stVar, ViewTreeObserver.OnPreDrawListener onPreDrawListener, qe2 qe2Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(b02Var, "nativeAdPrivate");
        y45.j(list, "preloadedDivKitDesigns");
        y45.j(viewGroup, TtmlNode.RUBY_CONTAINER);
        y45.j(stVar, "nativeAdEventListener");
        y45.j(onPreDrawListener, "preDrawListener");
        y45.j(qe2Var, "videoEventController");
        q90 q90VarA = this.a.a(context, list);
        return new mj(new lj(context, viewGroup, defpackage.y71.o(q90VarA != null ? q90VarA.a(context, o8Var, b02Var, stVar, qe2Var) : null), onPreDrawListener));
    }

    public i90(o3 o3Var, r90 r90Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(r90Var, "designProvider");
        this.a = r90Var;
    }
}
