package com.yandex.mobile.ads.impl;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import defpackage.y45;

public final class zq0 {
    public static void a(View view) {
        y45.j(view, "view");
        Object systemService = view.getContext().getSystemService("input_method");
        y45.h(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }
}
