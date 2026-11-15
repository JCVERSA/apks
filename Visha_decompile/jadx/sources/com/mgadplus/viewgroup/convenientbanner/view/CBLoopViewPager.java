package com.mgadplus.viewgroup.convenientbanner.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;
import defpackage.a6d;
import defpackage.dkd;

public class CBLoopViewPager extends ViewPager {
    public ViewPager.OnPageChangeListener h;
    public a6d i;
    public com.mgadplus.viewgroup.convenientbanner.a.a j;
    public boolean k;
    public boolean l;
    public float m;
    public float n;
    public ViewPager.OnPageChangeListener o;

    public class a implements ViewPager.OnPageChangeListener {
        public float b = -1.0f;

        public a() {
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            ViewPager.OnPageChangeListener onPageChangeListener = CBLoopViewPager.this.h;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrollStateChanged(i);
            }
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
            if (CBLoopViewPager.this.j != null) {
                CBLoopViewPager.this.j.b(CBLoopViewPager.this);
            }
            CBLoopViewPager cBLoopViewPager = CBLoopViewPager.this;
            if (cBLoopViewPager.h != null) {
                if (i != cBLoopViewPager.j.a() - 1) {
                    CBLoopViewPager.this.h.onPageScrolled(i, f, i2);
                } else if (f > 0.5d) {
                    CBLoopViewPager.this.h.onPageScrolled(0, 0.0f, 0);
                } else {
                    CBLoopViewPager.this.h.onPageScrolled(i, 0.0f, 0);
                }
            }
        }

        @Override
        public void onPageSelected(int i) {
            int iA = CBLoopViewPager.this.j.a(i);
            if (CBLoopViewPager.this.j != null) {
                CBLoopViewPager.this.j.b(CBLoopViewPager.this);
            }
            float f = iA;
            if (this.b != f) {
                this.b = f;
                ViewPager.OnPageChangeListener onPageChangeListener = CBLoopViewPager.this.h;
                if (onPageChangeListener != null) {
                    onPageChangeListener.onPageSelected(iA);
                }
            }
        }
    }

    public CBLoopViewPager(Context context) {
        super(context);
        this.k = true;
        this.l = true;
        this.m = 0.0f;
        this.n = 0.0f;
        this.o = new a();
        b();
    }

    private void b() {
        super.setOnPageChangeListener(this.o);
    }

    public int getFristItem() {
        if (this.l) {
            return this.j.a();
        }
        return 0;
    }

    public int getLastItem() {
        return this.j.a() - 1;
    }

    public int getRealItem() {
        com.mgadplus.viewgroup.convenientbanner.a.a aVar = this.j;
        if (aVar != null) {
            return aVar.a(super.getCurrentItem());
        }
        return 0;
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.k) {
            try {
                return super.onInterceptTouchEvent(motionEvent);
            } catch (Exception unused) {
            }
        }
        return false;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.k) {
            return false;
        }
        if (this.i != null) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.m = motionEvent.getX();
            } else if (action == 1) {
                float x = motionEvent.getX();
                this.n = x;
                if (Math.abs(this.m - x) < 5.0f) {
                    this.i.a(getRealItem(), new dkd());
                }
                this.m = 0.0f;
                this.n = 0.0f;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCanLoop(boolean z) {
        this.l = z;
        if (!z) {
            setCurrentItem(getRealItem(), false);
        }
        com.mgadplus.viewgroup.convenientbanner.a.a aVar = this.j;
        if (aVar == null) {
            return;
        }
        aVar.a(z);
        this.j.notifyDataSetChanged();
    }

    public void setCanScroll(boolean z) {
        this.k = z;
    }

    public void setOnItemClickListener(a6d a6dVar) {
        this.i = a6dVar;
    }

    @Override
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.h = onPageChangeListener;
    }

    @Override
    public com.mgadplus.viewgroup.convenientbanner.a.a getAdapter() {
        return this.j;
    }

    public CBLoopViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = true;
        this.l = true;
        this.m = 0.0f;
        this.n = 0.0f;
        this.o = new a();
        b();
    }
}
