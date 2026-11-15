package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.ViewGroup;

public final class C1596ch {
    public final int[] A00(View view, int i, int i2) {
        QP qp = (QP) view.getLayoutParams();
        int childHeightSpec = ViewGroup.getChildMeasureSpec(i, view.getPaddingLeft() + view.getPaddingRight(), qp.width);
        int childWidthSpec = view.getPaddingTop();
        view.measure(childHeightSpec, ViewGroup.getChildMeasureSpec(i2, childWidthSpec + view.getPaddingBottom(), qp.height));
        int childWidthSpec2 = view.getMeasuredWidth();
        int childWidthSpec3 = view.getMeasuredHeight();
        return new int[]{childWidthSpec2 + qp.leftMargin + qp.rightMargin, childWidthSpec3 + qp.bottomMargin + qp.topMargin};
    }
}
