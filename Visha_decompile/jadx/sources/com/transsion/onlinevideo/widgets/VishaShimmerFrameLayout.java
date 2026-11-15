package com.transsion.onlinevideo.widgets;

import android.content.Context;
import android.util.AttributeSet;
import com.facebook.shimmer.ShimmerFrameLayout;

public class VishaShimmerFrameLayout extends ShimmerFrameLayout {
    public VishaShimmerFrameLayout(Context context) {
        super(context);
    }

    private void a(boolean z) {
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

    public VishaShimmerFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VishaShimmerFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public VishaShimmerFrameLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
