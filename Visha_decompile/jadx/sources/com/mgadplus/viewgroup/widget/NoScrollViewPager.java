package com.mgadplus.viewgroup.widget;

import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;

public class NoScrollViewPager extends ViewPager {
    public boolean h;

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.h) {
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.h) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void scrollTo(int i, int i2) {
        super.scrollTo(i, i2);
    }

    @Override
    public void setCurrentItem(int i, boolean z) {
        super.setCurrentItem(i, z);
    }

    public void setNoScroll(boolean z) {
        this.h = z;
    }

    @Override
    public void setCurrentItem(int i) {
        super.setCurrentItem(i);
    }
}
