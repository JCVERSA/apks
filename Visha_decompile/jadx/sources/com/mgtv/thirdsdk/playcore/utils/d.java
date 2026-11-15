package com.mgtv.thirdsdk.playcore.utils;

import android.view.View;
import android.view.ViewGroup;

public class d {
    public static void a(ViewGroup viewGroup, View view, ViewGroup.LayoutParams layoutParams) {
        if (viewGroup == null || view == null) {
            return;
        }
        if (b(viewGroup, view)) {
            a(viewGroup, view);
        }
        viewGroup.addView(view, layoutParams);
    }

    public static boolean b(ViewGroup viewGroup, View view) {
        return (viewGroup == null || view == null || viewGroup.indexOfChild(view) < 0) ? false : true;
    }

    public static void a(ViewGroup viewGroup, View view) {
        if (viewGroup == null || view == null || !b(viewGroup, view)) {
            return;
        }
        viewGroup.removeView(view);
    }
}
