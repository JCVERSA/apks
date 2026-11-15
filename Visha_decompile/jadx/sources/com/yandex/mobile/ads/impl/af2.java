package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import defpackage.y45;

@SuppressLint({"ViewConstructor"})
public final class af2 extends FrameLayout {
    private final ProgressBar a;
    private final ImageView b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public af2(Context context, ProgressBar progressBar, ImageView imageView) {
        super(context);
        y45.j(context, "context");
        y45.j(progressBar, "progressBar");
        this.a = progressBar;
        this.b = imageView;
    }

    public final ImageView a() {
        return this.b;
    }

    public final ProgressBar b() {
        return this.a;
    }
}
