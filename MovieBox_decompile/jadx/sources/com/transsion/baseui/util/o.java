package com.transsion.baseui.util;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;

public final class o {

    public static final o f42360a = new o();

    private o() {
    }

    public final void a(View[] view, View.OnClickListener click) {
        Intrinsics.h(view, "view");
        Intrinsics.h(click, "click");
        for (View view2 : view) {
            if (view2 != null) {
                view2.setOnClickListener(click);
            }
        }
    }
}
