package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.view.View;

public class C1776fe extends PH {
    public int A00;

    public C1776fe(Context context) {
        super(context);
        this.A00 = 0;
    }

    public void A00(int i) {
        this.A00 = i;
    }

    @Override
    public final void onMeasure(int i, int i2) {
        int h = this.A00;
        for (int i3 = 0; i3 < height; i3++) {
            View childAt = getChildAt(i3);
            int height = View.MeasureSpec.makeMeasureSpec(0, 0);
            childAt.measure(i, height);
            int height2 = childAt.getMeasuredHeight();
            if (height2 > h) {
                h = height2;
            }
        }
        int height3 = View.MeasureSpec.makeMeasureSpec(h, 1073741824);
        super.onMeasure(i, height3);
    }
}
