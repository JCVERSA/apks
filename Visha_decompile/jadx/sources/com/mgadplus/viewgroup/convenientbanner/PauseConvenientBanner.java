package com.mgadplus.viewgroup.convenientbanner;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.viewpager.widget.ViewPager;
import com.mgadplus.viewgroup.convenientbanner.view.PauseCBLoopViewPager;
import com.mgmi.R;
import defpackage.a6d;
import defpackage.j2d;
import defpackage.k2d;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public class PauseConvenientBanner<T> extends FrameLayout {
    public boolean a;
    public List b;
    public int[] c;
    public ArrayList d;
    public com.mgadplus.viewgroup.convenientbanner.c.a e;
    public ViewPager.OnPageChangeListener f;
    public com.mgadplus.viewgroup.convenientbanner.a.b g;
    public PauseCBLoopViewPager h;
    public j2d i;
    public ViewGroup j;
    public long k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public a q;
    public b r;

    public static class a implements Runnable {
        private final WeakReference<PauseConvenientBanner> a;

        public a(PauseConvenientBanner pauseConvenientBanner) {
            this.a = new WeakReference<>(pauseConvenientBanner);
        }

        @Override
        public void run() {
            PauseConvenientBanner pauseConvenientBanner = this.a.get();
            if (pauseConvenientBanner != null) {
                pauseConvenientBanner.b();
            }
        }
    }

    public static class b implements Runnable {
        private final WeakReference<PauseConvenientBanner> a;

        public b(PauseConvenientBanner pauseConvenientBanner) {
            this.a = new WeakReference<>(pauseConvenientBanner);
        }

        @Override
        public void run() {
            PauseConvenientBanner pauseConvenientBanner = this.a.get();
            if (pauseConvenientBanner != null) {
                pauseConvenientBanner.h();
            }
        }
    }

    public enum c {
        ALIGN_PARENT_LEFT,
        ALIGN_PARENT_RIGHT,
        CENTER_HORIZONTAL
    }

    public PauseConvenientBanner(Context context) {
        super(context);
        this.d = new ArrayList();
        this.m = false;
        this.a = false;
        this.n = true;
        this.o = true;
        this.p = false;
        b(context);
    }

    public boolean a() {
        return this.a;
    }

    public final void b(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.pause_include_viewpager, (ViewGroup) this, true);
        this.h = (PauseCBLoopViewPager) viewInflate.findViewById(R.id.pause_cbLoopViewPager);
        this.j = (ViewGroup) viewInflate.findViewById(R.id.pause_loPageTurningPoint);
        i();
        this.q = new a(this);
        this.r = new b(this);
    }

    public PauseConvenientBanner c() {
        if (this.l) {
            d();
        }
        this.l = true;
        postDelayed(this.q, 50L);
        return this;
    }

    public void d() {
        this.l = false;
        removeCallbacks(this.q);
        removeCallbacks(this.r);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3 || action == 4) {
            if (this.m && !this.g.i()) {
                postDelayed(this.r, 200L);
            }
        } else if (action == 0 && this.m) {
            removeCallbacks(this.r);
            d();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void e() {
        d();
        com.mgadplus.viewgroup.convenientbanner.a.b bVar = this.g;
        if (bVar != null) {
            bVar.d();
        }
    }

    public void f() {
        d();
        com.mgadplus.viewgroup.convenientbanner.a.b bVar = this.g;
        if (bVar != null) {
            bVar.f(this.h);
        }
    }

    public void g() {
        com.mgadplus.viewgroup.convenientbanner.a.b bVar = this.g;
        if (bVar != null) {
            bVar.b(this.h);
        }
    }

    public int getCount() {
        List list = this.b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public int getCurrentItem() {
        PauseCBLoopViewPager pauseCBLoopViewPager = this.h;
        if (pauseCBLoopViewPager != null) {
            return pauseCBLoopViewPager.getRealItem();
        }
        return -1;
    }

    public ViewPager.OnPageChangeListener getOnPageChangeListener() {
        return this.f;
    }

    public int getScrollDuration() {
        return this.i.a();
    }

    public PauseCBLoopViewPager getViewPager() {
        return this.h;
    }

    public void h() {
        if (!this.m || this.g.i()) {
            return;
        }
        b(this.k);
    }

    public final void i() {
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            j2d j2dVar = new j2d(this.h.getContext());
            this.i = j2dVar;
            j2dVar.c(false);
            declaredField.set(this.h, this.i);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
        } catch (NoSuchFieldException e3) {
            e3.printStackTrace();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setCanLoop(boolean z) {
        this.o = z;
        this.h.setCanLoop(z);
    }

    public void setInSmallSize(boolean z) {
        this.p = z;
    }

    public void setManualPageable(boolean z) {
        this.h.setCanScroll(z);
    }

    public void setScrollDuration(int i) {
        this.i.b(i);
    }

    public void setSupportVideo(boolean z) {
        this.a = z;
    }

    public void setcurrentitem(int i) {
        PauseCBLoopViewPager pauseCBLoopViewPager = this.h;
        if (pauseCBLoopViewPager != null) {
            pauseCBLoopViewPager.setCurrentItem(i);
        }
    }

    public PauseConvenientBanner a(k2d k2dVar, List<T> list) {
        this.b = list;
        com.mgadplus.viewgroup.convenientbanner.a.b bVar = new com.mgadplus.viewgroup.convenientbanner.a.b(k2dVar, list);
        this.g = bVar;
        this.h.a(bVar, this.o);
        int[] iArr = this.c;
        if (iArr != null) {
            a(iArr);
        }
        return this;
    }

    public PauseConvenientBanner a(boolean z) {
        this.j.setVisibility(z ? 0 : 8);
        return this;
    }

    public PauseConvenientBanner a(int[] iArr) {
        this.j.removeAllViews();
        this.d.clear();
        this.c = iArr;
        if (this.b == null) {
            return this;
        }
        for (int i = 0; i < this.b.size(); i++) {
            ImageView imageView = new ImageView(getContext());
            imageView.setPadding(10, 0, 10, 0);
            if (this.d.isEmpty()) {
                imageView.setImageResource(iArr[1]);
            } else {
                imageView.setImageResource(iArr[0]);
            }
            this.d.add(imageView);
            this.j.addView(imageView);
        }
        com.mgadplus.viewgroup.convenientbanner.c.a aVar = new com.mgadplus.viewgroup.convenientbanner.c.a(this.d, iArr);
        this.e = aVar;
        this.h.setOnPageChangeListener(aVar);
        this.e.onPageSelected(this.h.getRealItem());
        ViewPager.OnPageChangeListener onPageChangeListener = this.f;
        if (onPageChangeListener != null) {
            this.e.a(onPageChangeListener);
        }
        return this;
    }

    public void b() {
        PauseCBLoopViewPager pauseCBLoopViewPager = this.h;
        if (pauseCBLoopViewPager == null || !this.l) {
            return;
        }
        int currentItem = pauseCBLoopViewPager.getCurrentItem() + 1;
        if (this.p) {
            this.h.setCurrentItem(currentItem, false);
        } else {
            this.h.setCurrentItem(currentItem);
        }
        if (a()) {
            return;
        }
        postDelayed(this.q, this.k);
    }

    public PauseConvenientBanner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new ArrayList();
        this.m = false;
        this.a = false;
        this.n = true;
        this.o = true;
        this.p = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PauseConvenientBanner);
        this.o = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PauseConvenientBanner_pausecanLoop, true);
        typedArrayObtainStyledAttributes.recycle();
        b(context);
    }

    public PauseConvenientBanner b(long j) {
        if (this.l) {
            d();
        }
        this.m = true;
        if (j != -1) {
            this.k = j;
        }
        this.l = true;
        postDelayed(this.q, this.k);
        return this;
    }

    @TargetApi(11)
    public PauseConvenientBanner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new ArrayList();
        this.m = false;
        this.a = false;
        this.n = true;
        this.o = true;
        this.p = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PauseConvenientBanner);
        this.o = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PauseConvenientBanner_pausecanLoop, true);
        typedArrayObtainStyledAttributes.recycle();
        b(context);
    }

    public PauseConvenientBanner a(c cVar) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.j.getLayoutParams();
        layoutParams.addRule(9, cVar == c.ALIGN_PARENT_LEFT ? -1 : 0);
        layoutParams.addRule(11, cVar == c.ALIGN_PARENT_RIGHT ? -1 : 0);
        layoutParams.addRule(14, cVar == c.CENTER_HORIZONTAL ? -1 : 0);
        this.j.setLayoutParams(layoutParams);
        return this;
    }

    public PauseConvenientBanner a(long j) {
        if (this.l) {
            d();
        }
        this.m = true;
        if (j != -1) {
            this.k = j;
        }
        return this;
    }

    @TargetApi(21)
    public PauseConvenientBanner(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.d = new ArrayList();
        this.m = false;
        this.a = false;
        this.n = true;
        this.o = true;
        this.p = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PauseConvenientBanner);
        this.o = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PauseConvenientBanner_pausecanLoop, true);
        typedArrayObtainStyledAttributes.recycle();
        b(context);
    }

    public PauseConvenientBanner a(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f = onPageChangeListener;
        com.mgadplus.viewgroup.convenientbanner.c.a aVar = this.e;
        if (aVar != null) {
            aVar.a(onPageChangeListener);
        } else {
            this.h.setOnPageChangeListener(onPageChangeListener);
        }
        return this;
    }

    public PauseConvenientBanner a(a6d a6dVar) {
        if (a6dVar == null) {
            this.h.setOnItemClickListener(null);
            return this;
        }
        this.h.setOnItemClickListener(a6dVar);
        return this;
    }
}
