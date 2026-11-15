package com.hunantv.media.utils;

import android.view.View;
import android.view.ViewGroup;

public class ViewUtil {
    public static void addView(ViewGroup viewGroup, View view) {
        if (viewGroup == null || view == null) {
            return;
        }
        if (isViewExsit(viewGroup, view)) {
            removeView(viewGroup, view);
        }
        viewGroup.addView(view);
    }

    public static boolean hasChild(ViewGroup viewGroup) {
        return viewGroup != null && viewGroup.getChildCount() > 0;
    }

    public static boolean isViewExsit(ViewGroup viewGroup, View view) {
        return (viewGroup == null || view == null || viewGroup.indexOfChild(view) < 0) ? false : true;
    }

    public static void removeView(ViewGroup viewGroup, View view) {
        if (viewGroup == null || view == null) {
            return;
        }
        viewGroup.removeView(view);
    }

    public static void addView(ViewGroup viewGroup, View view, ViewGroup.LayoutParams layoutParams) {
        if (viewGroup == null || view == null) {
            return;
        }
        if (isViewExsit(viewGroup, view)) {
            removeView(viewGroup, view);
        }
        viewGroup.addView(view, layoutParams);
    }
}
