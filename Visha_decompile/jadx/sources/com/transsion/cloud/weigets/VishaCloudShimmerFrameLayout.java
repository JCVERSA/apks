package com.transsion.cloud.weigets;

import android.content.Context;
import android.util.AttributeSet;
import com.facebook.shimmer.ShimmerFrameLayout;

public class VishaCloudShimmerFrameLayout extends ShimmerFrameLayout {
    public VishaCloudShimmerFrameLayout(Context context) {
        super(context);
    }

    public final void a(boolean z) {
        if (z) {
            startShimmer();
        } else {
            stopShimmer();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        stopShimmer();
        super.onDetachedFromWindow();
    }

    @Override
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        a(z && getVisibility() == 0);
    }

    @Override
    public void setVisibility(int i) {
        super.setVisibility(i);
        a(i == 0);
    }

    public VishaCloudShimmerFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VishaCloudShimmerFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public VishaCloudShimmerFrameLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
