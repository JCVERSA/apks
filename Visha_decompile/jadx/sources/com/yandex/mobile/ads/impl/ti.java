package com.yandex.mobile.ads.impl;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.View;
import defpackage.y45;

public final class ti<T extends View> implements zd<T> {
    @Override
    public final void a(T t) {
        y45.j(t, "view");
        Drawable background = t.getBackground();
        if (background instanceof TransitionDrawable) {
            ((TransitionDrawable) background).startTransition(500);
        }
    }

    @Override
    public final void cancel() {
    }
}
