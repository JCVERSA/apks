package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class h50 implements op {
    @Override
    public final void a(View view) {
        y45.j(view, "closeView");
        view.setAlpha(0.4f);
        view.setEnabled(false);
    }

    @Override
    public final void b(View view) {
        y45.j(view, "closeView");
        view.animate().alpha(1.0f).setDuration(200L);
        view.setEnabled(true);
    }
}
