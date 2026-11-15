package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;

class c0 implements d0 {

    private final ViewOverlay f28369a;

    c0(View view) {
        this.f28369a = view.getOverlay();
    }

    @Override
    public void a(Drawable drawable) {
        this.f28369a.add(drawable);
    }

    @Override
    public void b(Drawable drawable) {
        this.f28369a.remove(drawable);
    }
}
