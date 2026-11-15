package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.monetization.ads.fullscreen.template.view.ExtendedViewContainer;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class rb {
    private final Context a;
    private final vb b;
    private final ac c;
    private final qb d;

    public rb(Context context, vb vbVar) {
        this(context, vbVar, new ac(), new qb(context, true, 12));
    }

    @SuppressLint({"InflateParams"})
    public final ViewGroup a() {
        View viewInflate = LayoutInflater.from(this.a).inflate(R.layout.monetization_ads_internal_adtune_container, (ViewGroup) null);
        y45.h(viewInflate, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup = (ViewGroup) viewInflate;
        this.c.getClass();
        y45.j(viewGroup, "adTuneContainer");
        ExtendedViewContainer extendedViewContainer = (ExtendedViewContainer) viewGroup.findViewById(R.id.adtune_content_container);
        if (extendedViewContainer != null) {
            extendedViewContainer.setMeasureSpecProvider(this.d);
        }
        this.c.getClass();
        y45.j(viewGroup, "adTuneContainer");
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R.id.adtune_webview_container);
        if (viewGroup2 != null) {
            viewGroup2.addView(this.b);
        }
        return viewGroup;
    }

    public rb(Context context, vb vbVar, ac acVar, qb qbVar) {
        y45.j(context, "context");
        y45.j(vbVar, "adtuneOptOutWebView");
        y45.j(acVar, "adtuneViewProvider");
        y45.j(qbVar, "adtuneMeasureSpecProvider");
        this.a = context;
        this.b = vbVar;
        this.c = acVar;
        this.d = qbVar;
    }
}
