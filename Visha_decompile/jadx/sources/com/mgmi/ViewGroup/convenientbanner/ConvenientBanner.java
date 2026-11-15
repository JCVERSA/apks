package com.mgmi.ViewGroup.convenientbanner;

import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.viewpager.widget.ViewPager;
import com.mgmi.ViewGroup.convenientbanner.view.CBLoopViewPager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class ConvenientBanner<T> extends LinearLayout {
    private List<T> a;
    private int[] b;
    private ArrayList<ImageView> c;
    private com.mgmi.ViewGroup.convenientbanner.c.a d;
    private ViewPager.OnPageChangeListener e;
    private com.mgmi.ViewGroup.convenientbanner.a.a f;
    private CBLoopViewPager g;
    private com.mgmi.ViewGroup.convenientbanner.a h;
    private ViewGroup i;
    private long j;
    private boolean k;
    private boolean l;
    private boolean m;
    private a n;

    public static class a implements Runnable {
        private final WeakReference<ConvenientBanner> a;

        @Override
        public void run() {
            ConvenientBanner convenientBanner = this.a.get();
            if (convenientBanner == null || convenientBanner.g == null || !convenientBanner.k) {
                return;
            }
            convenientBanner.g.setCurrentItem(convenientBanner.g.getCurrentItem() + 1);
            convenientBanner.postDelayed(convenientBanner.n, convenientBanner.j);
        }
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3 || action == 4) {
            if (this.l) {
                a(this.j);
            }
        } else if (action == 0 && this.l) {
            b();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public int getCurrentItem() {
        CBLoopViewPager cBLoopViewPager = this.g;
        if (cBLoopViewPager != null) {
            return cBLoopViewPager.getRealItem();
        }
        return -1;
    }

    public ViewPager.OnPageChangeListener getOnPageChangeListener() {
        return this.e;
    }

    public int getScrollDuration() {
        return this.h.a();
    }

    public CBLoopViewPager getViewPager() {
        return this.g;
    }

    public void setCanLoop(boolean z) {
        this.m = z;
        this.g.setCanLoop(z);
    }

    public void setManualPageable(boolean z) {
        this.g.setCanScroll(z);
    }

    public void setScrollDuration(int i) {
        this.h.a(i);
    }

    public void setcurrentitem(int i) {
        CBLoopViewPager cBLoopViewPager = this.g;
        if (cBLoopViewPager != null) {
            cBLoopViewPager.setCurrentItem(i);
        }
    }

    public ConvenientBanner a(com.mgmi.ViewGroup.convenientbanner.b.a aVar, List<T> list) {
        this.a = list;
        com.mgmi.ViewGroup.convenientbanner.a.a aVar2 = new com.mgmi.ViewGroup.convenientbanner.a.a(aVar, list);
        this.f = aVar2;
        this.g.a(aVar2, this.m);
        int[] iArr = this.b;
        if (iArr != null) {
            a(iArr);
        }
        return this;
    }

    public void b() {
        this.k = false;
        removeCallbacks(this.n);
    }

    public ConvenientBanner a(int[] iArr) {
        this.i.removeAllViews();
        this.c.clear();
        this.b = iArr;
        if (this.a == null) {
            return this;
        }
        for (int i = 0; i < this.a.size(); i++) {
            ImageView imageView = new ImageView(getContext());
            imageView.setPadding(10, 0, 10, 0);
            if (this.c.isEmpty()) {
                imageView.setImageResource(iArr[1]);
            } else {
                imageView.setImageResource(iArr[0]);
            }
            this.c.add(imageView);
            this.i.addView(imageView);
        }
        com.mgmi.ViewGroup.convenientbanner.c.a aVar = new com.mgmi.ViewGroup.convenientbanner.c.a(this.c, iArr);
        this.d = aVar;
        this.g.setOnPageChangeListener(aVar);
        this.d.onPageSelected(this.g.getRealItem());
        ViewPager.OnPageChangeListener onPageChangeListener = this.e;
        if (onPageChangeListener != null) {
            this.d.a(onPageChangeListener);
        }
        return this;
    }

    public boolean a() {
        return this.k;
    }

    public ConvenientBanner a(long j) {
        if (this.k) {
            b();
        }
        this.l = true;
        if (j != -1) {
            this.j = j;
        }
        this.k = true;
        postDelayed(this.n, j);
        return this;
    }

    public ConvenientBanner a(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.e = onPageChangeListener;
        com.mgmi.ViewGroup.convenientbanner.c.a aVar = this.d;
        if (aVar != null) {
            aVar.a(onPageChangeListener);
        } else {
            this.g.setOnPageChangeListener(onPageChangeListener);
        }
        return this;
    }
}
