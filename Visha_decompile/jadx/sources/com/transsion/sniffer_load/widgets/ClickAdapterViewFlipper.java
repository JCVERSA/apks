package com.transsion.sniffer_load.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.AdapterViewFlipper;

public class ClickAdapterViewFlipper extends AdapterViewFlipper {
    public ClickAdapterViewFlipper(Context context) {
        super(context);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public ClickAdapterViewFlipper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ClickAdapterViewFlipper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public ClickAdapterViewFlipper(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
