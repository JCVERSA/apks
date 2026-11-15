package com.transsion.playercommon.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.HorizontalScrollView;
import android.widget.Scroller;

public class SlowHorizontalScrollView extends HorizontalScrollView {
    public final Scroller b;

    public SlowHorizontalScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new Scroller(getContext().getApplicationContext());
    }

    @Override
    public void computeScroll() {
        if (this.b.computeScrollOffset()) {
            scrollTo(this.b.getCurrX(), 0);
            postInvalidate();
        }
        super.computeScroll();
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        performClick();
        this.b.abortAnimation();
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public boolean performClick() {
        return super.performClick();
    }

    public void startHorizontalScroll(int i, int i2) {
        this.b.startScroll(i, 0, i2, 0, 2000);
        invalidate();
    }

    public SlowHorizontalScrollView(Context context) {
        super(context);
        this.b = new Scroller(getContext().getApplicationContext());
    }

    public SlowHorizontalScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new Scroller(getContext().getApplicationContext());
    }
}
