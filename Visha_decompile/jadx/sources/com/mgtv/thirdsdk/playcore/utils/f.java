package com.mgtv.thirdsdk.playcore.utils;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class f {
    public static void a(ViewGroup viewGroup, View view, ViewGroup.LayoutParams layoutParams) {
        if (viewGroup == null || view == null || layoutParams == null) {
            return;
        }
        try {
            viewGroup.addView(view, layoutParams);
        } catch (Exception unused) {
        }
    }

    public static void a(ViewGroup viewGroup, View view) {
        if (viewGroup == null || view == null) {
            return;
        }
        try {
            viewGroup.removeView(view);
        } catch (Exception unused) {
        }
    }

    public static boolean a(@Nullable View view, int i) {
        if (view == null || view.getVisibility() == i) {
            return false;
        }
        view.setVisibility(i);
        return true;
    }

    public static boolean a(@NonNull View view) {
        Rect rect = new Rect();
        boolean globalVisibleRect = view.getGlobalVisibleRect(rect);
        if (!globalVisibleRect || rect.width() < view.getMeasuredWidth() || rect.height() < view.getMeasuredHeight()) {
            return true;
        }
        return !globalVisibleRect;
    }
}
