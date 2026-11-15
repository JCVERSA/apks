package com.yandex.mobile.ads.impl;

import android.view.View;
import androidx.core.content.ContextCompat;
import defpackage.y45;

public final class bj2 {
    private final int a;
    private final int b;

    public bj2(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final void a(View view, boolean z) {
        y45.j(view, "volumeControl");
        view.setBackground(ContextCompat.getDrawable(view.getContext(), z ? this.a : this.b));
    }
}
