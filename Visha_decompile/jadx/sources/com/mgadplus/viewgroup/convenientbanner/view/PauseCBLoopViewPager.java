package com.mgadplus.viewgroup.convenientbanner.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.mgadplus.viewgroup.convenientbanner.a.b;
import defpackage.a6d;
import defpackage.dkd;

public class PauseCBLoopViewPager extends ViewPager {
    public ViewPager.OnPageChangeListener h;
    public a6d i;
    public b j;
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
            ViewPager.OnPageChangeListener onPageChangeListener = PauseCBLoopViewPager.this.h;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrollStateChanged(i);
            }
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
            if (PauseCBLoopViewPager.this.j != null) {
                PauseCBLoopViewPager.this.j.h(PauseCBLoopViewPager.this);
            }
            PauseCBLoopViewPager pauseCBLoopViewPager = PauseCBLoopViewPager.this;
            if (pauseCBLoopViewPager.h != null) {
                if (i != pauseCBLoopViewPager.j.a() - 1) {
                    PauseCBLoopViewPager.this.h.onPageScrolled(i, f, i2);
                } else if (f > 0.5d) {
                    PauseCBLoopViewPager.this.h.onPageScrolled(0, 0.0f, 0);
                } else {
                    PauseCBLoopViewPager.this.h.onPageScrolled(i, 0.0f, 0);
                }
            }
        }

        @Override
        public void onPageSelected(int i) {
            int iA = PauseCBLoopViewPager.this.j.a(i);
            if (PauseCBLoopViewPager.this.j != null) {
                PauseCBLoopViewPager.this.j.h(PauseCBLoopViewPager.this);
            }
            float f = iA;
            if (this.b != f) {
                this.b = f;
                ViewPager.OnPageChangeListener onPageChangeListener = PauseCBLoopViewPager.this.h;
                if (onPageChangeListener != null) {
                    onPageChangeListener.onPageSelected(iA);
                }
            }
            if (PauseCBLoopViewPager.this.j != null) {
                PauseCBLoopViewPager.this.j.g(i);
            }
        }
    }

    public PauseCBLoopViewPager(Context context) {
        super(context);
        this.k = true;
        this.l = true;
        this.m = 0.0f;
        this.n = 0.0f;
        this.o = new a();
        c();
    }

    private void c() {
        super.setOnPageChangeListener(this.o);
    }

    private int getStartSelectItem() {
        int iA = this.j.a();
        int i = (iA * 300) / 2;
        if (iA == 0 || i % iA == 0) {
            return i;
        }
        while (i % iA != 0) {
            i++;
        }
        return i;
    }

    public final dkd b(float f, float f2, float f3, float f4) {
        return new dkd(f, f2, f3, f4, getMeasuredWidth(), getMeasuredHeight());
    }

    public int getFristItem() {
        if (this.l) {
            return getStartSelectItem();
        }
        return 0;
    }

    public int getLastItem() {
        return this.j.a() - 1;
    }

    public int getRealItem() {
        b bVar = this.j;
        if (bVar != null) {
            return bVar.a(super.getCurrentItem());
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
        if (this.k) {
            try {
                if (this.i != null) {
                    int action = motionEvent.getAction();
                    if (action == 0) {
                        this.m = motionEvent.getX();
                    } else if (action == 1) {
                        float x = motionEvent.getX();
                        this.n = x;
                        if (Math.abs(this.m - x) < 5.0f) {
                            this.i.a(getRealItem(), b(motionEvent.getRawX(), motionEvent.getRawY(), motionEvent.getX(), motionEvent.getY()));
                        }
                        this.m = 0.0f;
                        this.n = 0.0f;
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                return super.onTouchEvent(motionEvent);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        return false;
    }

    public void setCanLoop(boolean z) {
        this.l = z;
        if (!z) {
            setCurrentItem(getRealItem(), false);
        }
        b bVar = this.j;
        if (bVar == null) {
            return;
        }
        bVar.a(z);
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

    public void a(PagerAdapter pagerAdapter, boolean z) {
        b bVar = (b) pagerAdapter;
        this.j = bVar;
        bVar.a(z);
        this.j.c(this);
        super.setAdapter(this.j);
        setCurrentItem(getFristItem(), false);
    }

    @Override
    public b getAdapter() {
        return this.j;
    }

    public PauseCBLoopViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = true;
        this.l = true;
        this.m = 0.0f;
        this.n = 0.0f;
        this.o = new a();
        c();
    }
}
