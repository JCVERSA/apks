package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class yh2 {

    public interface a {
        boolean b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(View view) {
        y45.j(view, "view");
        return ((a) view).b() && view.hasWindowFocus() && !wh2.d(view);
    }
}
