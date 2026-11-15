package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class ji2 implements lz1 {
    @Override
    public final void a(View view) {
        y45.j(view, "skipView");
        view.setVisibility(0);
        view.setAlpha(0.4f);
        view.setEnabled(false);
    }

    @Override
    public final void b(View view) {
        y45.j(view, "skipView");
        view.setVisibility(0);
        view.animate().alpha(1.0f).setDuration(200L);
        view.setEnabled(true);
    }
}
