package com.mgmi.platform.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.customview.widget.ViewDragHelper;
import defpackage.w3d;

public class DragContainerLayout extends RelativeLayout {
    private ViewDragHelper a;
    private View b;
    private Context c;
    private boolean d;

    @Override
    public RelativeLayout.LayoutParams generateDefaultLayoutParams() {
        return new RelativeLayout.LayoutParams(-1, -1);
    }

    @Override
    public void computeScroll() {
        if (this.a.continueSettling(true)) {
            invalidate();
        }
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.a.shouldInterceptTouchEvent(motionEvent);
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            int iA = w3d.a(this.c, 170.0f);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.b.getLayoutParams();
            View view = this.b;
            int measuredWidth = i3 - view.getMeasuredWidth();
            int i5 = layoutParams.rightMargin;
            view.layout(measuredWidth - i5, i2 + iA, i3 - i5, iA + this.b.getMeasuredHeight());
        }
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.b = getChildAt(0);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.a.processTouchEvent(motionEvent);
        return this.d;
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.generateLayoutParams(layoutParams);
    }

    @Override
    public RelativeLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new RelativeLayout.LayoutParams(this.c, attributeSet);
    }
}
