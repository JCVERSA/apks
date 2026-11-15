package com.mgadplus.viewgroup;

import android.view.View;
import android.widget.RelativeLayout;

public class ADRationalLayout extends RelativeLayout {
    public float b;
    public float c;
    public float d;
    public boolean e;
    public boolean f;

    public float getRatio() {
        return this.d;
    }

    @Override
    public void onMeasure(int i, int i2) {
        int measuredWidth;
        int measuredHeight;
        if (this.e) {
            super.onMeasure(i, i2);
            return;
        }
        setMeasuredDimension(View.getDefaultSize(0, i), View.getDefaultSize(0, i2));
        if (this.f) {
            measuredHeight = getMeasuredHeight();
            measuredWidth = (int) (measuredHeight / this.d);
        } else {
            measuredWidth = getMeasuredWidth();
            measuredHeight = (int) (measuredWidth * this.d);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }

    public void setRatio(float f) {
        this.d = f;
    }

    public void setRatioHeight(float f) {
        this.c = f;
    }

    public void setRatioWidth(float f) {
        this.b = f;
    }
}
