package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.widget.ImageView;
import android.widget.ProgressBar;
import defpackage.y45;

public final class bf2 {
    private final pl1 a;
    private final pf2 b;

    public bf2() {
        this(new pl1(), new pf2());
    }

    public final af2 a(Context context, lb2 lb2Var) {
        y45.j(context, "context");
        this.b.getClass();
        y45.j(context, "context");
        ImageView imageView = null;
        if ((lb2Var != null ? lb2Var.a() : null) != null) {
            imageView = new ImageView(context);
            imageView.setAdjustViewBounds(true);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        ProgressBar progressBarA = this.a.a(context);
        progressBarA.setVisibility(8);
        af2 af2Var = new af2(context, progressBarA, imageView);
        af2Var.addView(progressBarA);
        if (imageView != null) {
            af2Var.addView(imageView);
        }
        af2Var.setBackgroundColor(-16777216);
        return af2Var;
    }

    public bf2(pl1 pl1Var, pf2 pf2Var) {
        y45.j(pl1Var, "progressBarCreator");
        y45.j(pf2Var, "videoPreviewCreator");
        this.a = pl1Var;
        this.b = pf2Var;
    }
}
