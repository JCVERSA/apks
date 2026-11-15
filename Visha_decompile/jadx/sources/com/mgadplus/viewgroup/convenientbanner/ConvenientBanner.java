package com.mgadplus.viewgroup.convenientbanner;

import android.view.MotionEvent;
import android.widget.LinearLayout;
import androidx.viewpager.widget.ViewPager;
import com.mgadplus.viewgroup.convenientbanner.view.CBLoopViewPager;
import defpackage.j2d;
import java.lang.ref.WeakReference;
import java.util.List;

public class ConvenientBanner<T> extends LinearLayout {
    public boolean a;
    public List b;
    public ViewPager.OnPageChangeListener c;
    public com.mgadplus.viewgroup.convenientbanner.a.a d;
    public CBLoopViewPager e;
    public j2d f;
    public long g;
    public boolean h;
    public boolean i;
    public boolean j;
    public a k;
    public b l;

    public static class a implements Runnable {
        private final WeakReference<ConvenientBanner> a;

        @Override
        public void run() {
            ConvenientBanner convenientBanner = this.a.get();
            if (convenientBanner != null) {
                convenientBanner.b();
            }
        }
    }

    public static class b implements Runnable {
        private final WeakReference<ConvenientBanner> a;

        @Override
        public void run() {
            ConvenientBanner convenientBanner = this.a.get();
            if (convenientBanner != null) {
                convenientBanner.d();
            }
        }
    }

    public boolean a() {
        return this.a;
    }

    public void b() {
        CBLoopViewPager cBLoopViewPager = this.e;
        if (cBLoopViewPager == null || !this.h) {
            return;
        }
        this.e.setCurrentItem(cBLoopViewPager.getCurrentItem() + 1);
        if (a()) {
            return;
        }
        postDelayed(this.k, this.g);
    }

    public void c() {
        this.h = false;
        removeCallbacks(this.k);
        removeCallbacks(this.l);
    }

    public void d() {
        if (!this.i || this.d.c()) {
            return;
        }
        a(this.g);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3 || action == 4) {
            if (this.i && !this.d.c()) {
                postDelayed(this.l, 200L);
            }
        } else if (action == 0 && this.i) {
            removeCallbacks(this.l);
            c();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public int getCount() {
        List list = this.b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public int getCurrentItem() {
        CBLoopViewPager cBLoopViewPager = this.e;
        if (cBLoopViewPager != null) {
            return cBLoopViewPager.getRealItem();
        }
        return -1;
    }

    public ViewPager.OnPageChangeListener getOnPageChangeListener() {
        return this.c;
    }

    public int getScrollDuration() {
        return this.f.a();
    }

    public CBLoopViewPager getViewPager() {
        return this.e;
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setCanLoop(boolean z) {
        this.j = z;
        this.e.setCanLoop(z);
    }

    public void setManualPageable(boolean z) {
        this.e.setCanScroll(z);
    }

    public void setScrollDuration(int i) {
        this.f.b(i);
    }

    public void setcurrentitem(int i) {
        CBLoopViewPager cBLoopViewPager = this.e;
        if (cBLoopViewPager != null) {
            cBLoopViewPager.setCurrentItem(i);
        }
    }

    public ConvenientBanner a(long j) {
        if (this.h) {
            c();
        }
        this.i = true;
        if (j != -1) {
            this.g = j;
        }
        this.h = true;
        postDelayed(this.k, this.g);
        return this;
    }
}
