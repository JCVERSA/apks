package com.transsion.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class InterceptFrameLayout extends FrameLayout {
    public boolean isChildClickable;

    public InterceptFrameLayout(@NonNull Context context) {
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

    public InterceptFrameLayout setChildClickable(boolean z) {
        this.isChildClickable = z;
        return this;
    }

    public InterceptFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isChildClickable = true;
    }

    public InterceptFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isChildClickable = true;
    }

    public InterceptFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.isChildClickable = true;
    }
}
