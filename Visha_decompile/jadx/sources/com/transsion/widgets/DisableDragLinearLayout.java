package com.transsion.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

public class DisableDragLinearLayout extends LinearLayout {
    public boolean canDrag;

    public DisableDragLinearLayout(Context context) {
        super(context);
        this.canDrag = true;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.canDrag) {
            return super.dispatchTouchEvent(motionEvent);
        }
        requestDisallowInterceptTouchEvent(true);
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    public void setCanDrag(boolean z) {
        this.canDrag = z;
    }

    public DisableDragLinearLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.canDrag = true;
    }

    public DisableDragLinearLayout(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.canDrag = true;
    }

    public DisableDragLinearLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.canDrag = true;
    }
}
