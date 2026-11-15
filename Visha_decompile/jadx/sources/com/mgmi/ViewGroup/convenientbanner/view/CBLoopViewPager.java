package com.mgmi.ViewGroup.convenientbanner.view;

import android.view.MotionEvent;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.mgmi.ViewGroup.convenientbanner.a.a;
import com.mgmi.ViewGroup.convenientbanner.c.b;

public class CBLoopViewPager extends ViewPager {
    ViewPager.OnPageChangeListener a;
    private b b;
    private a c;
    private boolean d;
    private boolean e;
    private float f;
    private float g;

    public void a(PagerAdapter pagerAdapter, boolean z) {
        a aVar = (a) pagerAdapter;
        this.c = aVar;
        aVar.a(z);
        this.c.a(this);
        super.setAdapter(this.c);
        setCurrentItem(getFristItem(), false);
    }

    public int getFristItem() {
        if (this.e) {
            return this.c.a();
        }
        return 0;
    }

    public int getLastItem() {
        return this.c.a() - 1;
    }

    public int getRealItem() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.a(super.getCurrentItem());
        }
        return 0;
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.d) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.d) {
            return false;
        }
        if (this.b != null) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f = motionEvent.getX();
            } else if (action == 1) {
                float x = motionEvent.getX();
                this.g = x;
                if (Math.abs(this.f - x) < 5.0f) {
                    this.b.a(getRealItem());
                }
                this.f = 0.0f;
                this.g = 0.0f;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCanLoop(boolean z) {
        this.e = z;
        if (!z) {
            setCurrentItem(getRealItem(), false);
        }
        a aVar = this.c;
        if (aVar == null) {
            return;
        }
        aVar.a(z);
        this.c.notifyDataSetChanged();
    }

    public void setCanScroll(boolean z) {
        this.d = z;
    }

    public void setOnItemClickListener(b bVar) {
        this.b = bVar;
    }

    @Override
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.a = onPageChangeListener;
    }

    @Override
    public a getAdapter() {
        return this.c;
    }
}
