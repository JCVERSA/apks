package com.transsion.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

public class InterceptLinearLayout extends LinearLayout {
    public boolean isChildClickable;

    public InterceptLinearLayout(Context context) {
        super(context);
        this.isChildClickable = true;
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.isChildClickable) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return true;
    }

    public void setChildClickable(boolean z) {
        this.isChildClickable = z;
    }

    public InterceptLinearLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isChildClickable = true;
    }

    public InterceptLinearLayout(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isChildClickable = true;
    }

    public InterceptLinearLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.isChildClickable = true;
    }
}
