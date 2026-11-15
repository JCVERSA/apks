package com.doman.core.d;

import android.view.View;
import android.view.ViewGroup;

public final class o {
    public static void a(ViewGroup viewGroup, View view) {
        if (viewGroup == null || view == null) {
            return;
        }
        try {
            viewGroup.addView(view);
        } catch (Exception e) {
            g.a("ViewUtil", "excepton=" + e.getMessage());
        }
    }

    public static void b(ViewGroup viewGroup, View view) {
        if (viewGroup == null || view == null) {
            return;
        }
        try {
            viewGroup.removeView(view);
        } catch (Exception e) {
            g.a("ViewUtil", "removeView=" + e.getMessage());
        }
    }
}
