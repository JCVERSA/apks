package com.mgtv.ssp.feed.viewcard;

import android.content.Context;
import androidx.recyclerview.widget.LinearSmoothScroller;

public class MyRecycleScrollTopScroller extends LinearSmoothScroller {
    public MyRecycleScrollTopScroller(Context context) {
        super(context);
    }

    @Override
    public int getHorizontalSnapPreference() {
        return -1;
    }

    @Override
    public int getVerticalSnapPreference() {
        return -1;
    }
}
