package com.yandex.mobile.ads.impl;

import android.view.View;
import android.view.ViewTreeObserver;
import defpackage.y45;

public final class nh implements View.OnAttachStateChangeListener {
    private final ViewTreeObserver.OnGlobalLayoutListener a;

    public nh(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        y45.j(onGlobalLayoutListener, "listener");
        this.a = onGlobalLayoutListener;
    }

    @Override
    public final void onViewAttachedToWindow(View view) {
        y45.j(view, "v");
        view.getViewTreeObserver().addOnGlobalLayoutListener(this.a);
    }

    @Override
    public final void onViewDetachedFromWindow(View view) {
        y45.j(view, "v");
        view.getViewTreeObserver().removeOnGlobalLayoutListener(this.a);
    }
}
