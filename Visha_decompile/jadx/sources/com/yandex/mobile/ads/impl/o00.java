package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class o00 implements lz1 {
    @Override
    public final void a(View view) {
        y45.j(view, "skipView");
        view.setVisibility(8);
        view.setEnabled(false);
    }

    @Override
    public final void b(View view) {
        y45.j(view, "skipView");
        view.setVisibility(0);
        view.setEnabled(true);
    }
}
