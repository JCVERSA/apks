package com.mgadplus.viewgroup.dynamicview;

import android.widget.LinearLayout;

public class ExpandView extends LinearLayout {
    public boolean b;
    public int c;
    public int d;
    public float e;
    public boolean f;

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f) {
            this.d = 0;
            if (getChildCount() > 0) {
                int measuredHeight = getMeasuredHeight();
                this.d = measuredHeight;
                if (!this.b) {
                    setMeasuredDimension(i, measuredHeight - ((int) ((measuredHeight - this.c) * this.e)));
                } else {
                    int i3 = this.c;
                    setMeasuredDimension(i, i3 + ((int) ((measuredHeight - i3) * this.e)));
                }
            }
        }
    }

    public void setItemHeight(int i) {
        this.c = i;
    }
}
