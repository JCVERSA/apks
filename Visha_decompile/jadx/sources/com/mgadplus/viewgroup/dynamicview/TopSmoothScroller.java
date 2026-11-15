package com.mgadplus.viewgroup.dynamicview;

import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearSmoothScroller;

public class TopSmoothScroller extends LinearSmoothScroller {
    @Override
    public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return 150.0f / displayMetrics.densityDpi;
    }

    @Override
    public int getHorizontalSnapPreference() {
        return -1;
    }

    @Override
    public int getVerticalSnapPreference() {
        return -1;
    }

    @Override
    public void onStart() {
        super.onStart();
    }

    @Override
    public void onStop() {
        super.stop();
    }
}
