package com.hunantv.imgo.util;

import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;

public class y {
    public static void a(View view) {
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof FrameLayout) {
            ((FrameLayout) parent).removeView(view);
        }
    }
}
