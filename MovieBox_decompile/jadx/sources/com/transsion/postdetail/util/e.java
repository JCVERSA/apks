package com.transsion.postdetail.util;

import android.view.View;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final e f48072a = new e();

    private e() {
    }

    public static final void c(Function0 function0, View view) {
        function0.invoke();
    }

    public final void b(View[] view, final Function0 click) {
        Intrinsics.h(view, "view");
        Intrinsics.h(click, "click");
        for (View view2 : view) {
            view2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    e.c(click, view3);
                }
            });
        }
    }
}
