package com.to.aboomy.pager2banner;

import android.content.Context;
import android.graphics.Outline;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.h;
import androidx.viewpager2.widget.CompositePageTransformer;
import androidx.viewpager2.widget.MarginPageTransformer;
import androidx.viewpager2.widget.ViewPager2;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class Banner extends RelativeLayout {

    private ViewPager2.OnPageChangeCallback f40700a;

    private CompositePageTransformer f40701b;

    private c f40702c;

    private ViewPager2 f40703d;

    private com.to.aboomy.pager2banner.a f40704e;

    private boolean f40705f;

    private boolean f40706g;

    private boolean f40707h;

    private long f40708i;

    private long f40709j;

    private int f40710k;

    private int f40711l;

    private int f40712m;

    private float f40713n;

    private float f40714o;

    private float f40715p;

    private float f40716q;

    private final int f40717r;

    private final Runnable f40718s;

    private final RecyclerView.g f40719t;

    class a extends RecyclerView.g {
        a() {
        }

        @Override
        public void onChanged() {
            Banner banner = Banner.this;
            banner.t(banner.getCurrentPager());
        }

        @Override
        public final void onItemRangeChanged(int i10, int i11, Object obj) {
            onChanged();
        }

        @Override
        public final void onItemRangeInserted(int i10, int i11) {
            if (i10 > 1) {
                onChanged();
            }
        }

        @Override
        public final void onItemRangeMoved(int i10, int i11, int i12) {
            onChanged();
        }
    }

    class b extends ViewOutlineProvider {

        final float f40721a;

        b(float f10) {
            this.f40721a = f10;
        }

        @Override
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.f40721a);
        }
    }

    private class c extends RecyclerView.Adapter {

        private RecyclerView.Adapter f40723a;

        private c() {
        }

        @Override
        public int getItemCount() {
            return h() > 1 ? h() + Banner.this.f40710k : h();
        }

        @Override
        public long getItemId(int i10) {
            return this.f40723a.getItemId(Banner.this.u(i10));
        }

        @Override
        public int getItemViewType(int i10) {
            return this.f40723a.getItemViewType(Banner.this.u(i10));
        }

        int h() {
            RecyclerView.Adapter adapter = this.f40723a;
            if (adapter == null) {
                return 0;
            }
            return adapter.getItemCount();
        }

        void i(RecyclerView.Adapter adapter) {
            RecyclerView.Adapter adapter2 = this.f40723a;
            if (adapter2 != null) {
                adapter2.unregisterAdapterDataObserver(Banner.this.f40719t);
            }
            this.f40723a = adapter;
            if (adapter != null) {
                adapter.registerAdapterDataObserver(Banner.this.f40719t);
            }
        }

        @Override
        public void onBindViewHolder(RecyclerView.a0 a0Var, int i10) {
            this.f40723a.onBindViewHolder(a0Var, Banner.this.u(i10));
        }

        @Override
        public RecyclerView.a0 onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return this.f40723a.onCreateViewHolder(viewGroup, i10);
        }
    }

    private class d extends ViewPager2.OnPageChangeCallback {
        private d() {
        }

        @Override
        public void onPageScrollStateChanged(int i10) {
            if (i10 == 1) {
                if (Banner.this.f40712m == Banner.this.f40711l - 1) {
                    Banner.this.f40706g = false;
                    Banner.this.f40703d.setCurrentItem(Banner.this.getRealCount() + Banner.this.f40712m, false);
                } else if (Banner.this.f40712m == Banner.this.getRealCount() + Banner.this.f40711l) {
                    Banner.this.f40706g = false;
                    Banner.this.f40703d.setCurrentItem(Banner.this.f40711l, false);
                } else {
                    Banner.this.f40706g = true;
                }
            }
            if (Banner.this.f40700a != null) {
                Banner.this.f40700a.onPageScrollStateChanged(i10);
            }
            if (Banner.this.f40704e != null) {
                Banner.this.f40704e.onPageScrollStateChanged(i10);
            }
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            int iU = Banner.this.u(i10);
            if (Banner.this.f40700a != null) {
                Banner.this.f40700a.onPageScrolled(iU, f10, i11);
            }
            if (Banner.this.f40704e != null) {
                Banner.this.f40704e.onPageScrolled(iU, f10, i11);
            }
        }

        @Override
        public void onPageSelected(int i10) {
            if (Banner.this.getRealCount() > 1) {
                Banner.this.f40712m = i10;
            }
            if (Banner.this.f40706g) {
                int iU = Banner.this.u(i10);
                if (Banner.this.f40700a != null) {
                    Banner.this.f40700a.onPageSelected(iU);
                }
                if (Banner.this.f40704e != null) {
                    Banner.this.f40704e.onPageSelected(iU);
                }
            }
        }
    }

    private class e extends LinearLayoutManager {

        private final RecyclerView.m f40726a;

        class a extends h {
            a(Context context) {
                super(context);
            }

            @Override
            protected int w(int i10) {
                return (int) (Banner.this.f40709j * 0.6644d);
            }
        }

        e(Context context, LinearLayoutManager linearLayoutManager) {
            super(context, linearLayoutManager.getOrientation(), false);
            this.f40726a = linearLayoutManager;
        }

        @Override
        protected void calculateExtraLayoutSpace(RecyclerView.x xVar, int[] iArr) {
            try {
                Method declaredMethod = this.f40726a.getClass().getDeclaredMethod("calculateExtraLayoutSpace", xVar.getClass(), iArr.getClass());
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(this.f40726a, xVar, iArr);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
            }
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(RecyclerView.t tVar, RecyclerView.x xVar, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            this.f40726a.onInitializeAccessibilityNodeInfo(tVar, xVar, accessibilityNodeInfoCompat);
        }

        @Override
        public boolean performAccessibilityAction(RecyclerView.t tVar, RecyclerView.x xVar, int i10, Bundle bundle) {
            return this.f40726a.performAccessibilityAction(tVar, xVar, i10, bundle);
        }

        @Override
        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z10, boolean z11) {
            return this.f40726a.requestChildRectangleOnScreen(recyclerView, view, rect, z10, z11);
        }

        @Override
        public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.x xVar, int i10) {
            a aVar = new a(recyclerView.getContext());
            aVar.p(i10);
            startSmoothScroll(aVar);
        }
    }

    public Banner(Context context) {
        this(context, null);
    }

    public int getRealCount() {
        return this.f40702c.h();
    }

    static int i(Banner banner) {
        int i10 = banner.f40712m;
        banner.f40712m = i10 + 1;
        return i10;
    }

    private void r() {
        try {
            RecyclerView recyclerView = (RecyclerView) this.f40703d.getChildAt(0);
            recyclerView.setOverScrollMode(2);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            e eVar = new e(getContext(), linearLayoutManager);
            recyclerView.setLayoutManager(eVar);
            Field declaredField = RecyclerView.m.class.getDeclaredField("mRecyclerView");
            declaredField.setAccessible(true);
            declaredField.set(linearLayoutManager, recyclerView);
            Field declaredField2 = ViewPager2.class.getDeclaredField("mLayoutManager");
            declaredField2.setAccessible(true);
            declaredField2.set(this.f40703d, eVar);
            Field declaredField3 = ViewPager2.class.getDeclaredField("mPageTransformerAdapter");
            declaredField3.setAccessible(true);
            Object obj = declaredField3.get(this.f40703d);
            if (obj != null) {
                Field declaredField4 = obj.getClass().getDeclaredField("mLayoutManager");
                declaredField4.setAccessible(true);
                declaredField4.set(obj, eVar);
            }
            Field declaredField5 = ViewPager2.class.getDeclaredField("mScrollEventAdapter");
            declaredField5.setAccessible(true);
            Object obj2 = declaredField5.get(this.f40703d);
            if (obj2 != null) {
                Field declaredField6 = obj2.getClass().getDeclaredField("mLayoutManager");
                declaredField6.setAccessible(true);
                declaredField6.set(obj2, eVar);
            }
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
        } catch (NoSuchFieldException e11) {
            e11.printStackTrace();
        }
    }

    private void s(Context context) {
        ViewPager2 viewPager2 = new ViewPager2(context);
        this.f40703d = viewPager2;
        viewPager2.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ViewPager2 viewPager3 = this.f40703d;
        CompositePageTransformer compositePageTransformer = new CompositePageTransformer();
        this.f40701b = compositePageTransformer;
        viewPager3.setPageTransformer(compositePageTransformer);
        this.f40703d.registerOnPageChangeCallback(new d());
        ViewPager2 viewPager4 = this.f40703d;
        c cVar = new c();
        this.f40702c = cVar;
        viewPager4.setAdapter(cVar);
        setOffscreenPageLimit(1);
        r();
        addView(this.f40703d);
    }

    public void t(int i10) {
        if (this.f40711l == 2) {
            this.f40703d.setAdapter(this.f40702c);
        } else {
            this.f40702c.notifyDataSetChanged();
        }
        setCurrentItem(i10, false);
        com.to.aboomy.pager2banner.a aVar = this.f40704e;
        if (aVar != null) {
            aVar.initIndicatorCount(getRealCount(), getCurrentPager());
        }
        if (isAutoPlay()) {
            startTurning();
        }
    }

    public int u(int i10) {
        int realCount = getRealCount() > 1 ? (i10 - this.f40711l) % getRealCount() : 0;
        return realCount < 0 ? realCount + getRealCount() : realCount;
    }

    public Banner addItemDecoration(@NonNull RecyclerView.l lVar) {
        this.f40703d.addItemDecoration(lVar);
        return this;
    }

    public Banner addPageTransformer(ViewPager2.PageTransformer pageTransformer) {
        this.f40701b.addTransformer(pageTransformer);
        return this;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (isAutoPlay() && this.f40703d.isUserInputEnabled()) {
            int action = motionEvent.getAction();
            if (action == 1 || action == 3 || action == 4) {
                startTurning();
            } else if (action == 0) {
                stopTurning();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public RecyclerView.Adapter getAdapter() {
        return this.f40702c.f40723a;
    }

    public int getCurrentPager() {
        return Math.max(u(this.f40712m), 0);
    }

    public ViewPager2 getViewPager2() {
        return this.f40703d;
    }

    public boolean isAutoPlay() {
        return this.f40705f && getRealCount() > 1;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isAutoPlay()) {
            startTurning();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (isAutoPlay()) {
            stopTurning();
        }
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            float rawX = motionEvent.getRawX();
            this.f40715p = rawX;
            this.f40713n = rawX;
            float rawY = motionEvent.getRawY();
            this.f40716q = rawY;
            this.f40714o = rawY;
        } else {
            boolean z10 = false;
            if (action == 2) {
                this.f40715p = motionEvent.getRawX();
                this.f40716q = motionEvent.getRawY();
                if (this.f40703d.isUserInputEnabled()) {
                    float fAbs = Math.abs(this.f40715p - this.f40713n);
                    float fAbs2 = Math.abs(this.f40716q - this.f40714o);
                    if (this.f40703d.getOrientation() != 0 ? !(fAbs2 <= this.f40717r || fAbs2 <= fAbs) : !(fAbs <= this.f40717r || fAbs <= fAbs2)) {
                        z10 = true;
                    }
                    getParent().requestDisallowInterceptTouchEvent(z10);
                }
            } else if (action == 3 || action == 1) {
                return Math.abs(this.f40715p - this.f40713n) > ((float) this.f40717r) || Math.abs(this.f40716q - this.f40714o) > ((float) this.f40717r);
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setAdapter(@Nullable RecyclerView.Adapter adapter) {
        setAdapter(adapter, 0);
    }

    public Banner setAutoPlay(boolean z10) {
        this.f40705f = z10;
        if (z10 && getRealCount() > 1) {
            startTurning();
        }
        return this;
    }

    public Banner setAutoTurningTime(long j10) {
        this.f40708i = j10;
        return this;
    }

    public void setCurrentItem(int i10) {
        setCurrentItem(i10, true);
    }

    public Banner setIndicator(com.to.aboomy.pager2banner.a aVar) {
        return setIndicator(aVar, true);
    }

    public Banner setOffscreenPageLimit(int i10) {
        this.f40703d.setOffscreenPageLimit(i10);
        return this;
    }

    public Banner setOrientation(int i10) {
        this.f40703d.setOrientation(i10);
        return this;
    }

    public Banner setOuterPageChangeListener(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.f40700a = onPageChangeCallback;
        return this;
    }

    public Banner setPageMargin(int i10, int i11) {
        return setPageMargin(i10, i10, i11);
    }

    public Banner setPagerScrollDuration(long j10) {
        this.f40709j = j10;
        return this;
    }

    public Banner setRoundCorners(float f10) {
        setOutlineProvider(new b(f10));
        setClipToOutline(true);
        return this;
    }

    public void startTurning() {
        stopTurning();
        postDelayed(this.f40718s, this.f40708i);
        this.f40707h = true;
    }

    public void stopTurning() {
        if (this.f40707h) {
            removeCallbacks(this.f40718s);
            this.f40707h = false;
        }
    }

    public Banner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Banner addItemDecoration(@NonNull RecyclerView.l lVar, int i10) {
        this.f40703d.addItemDecoration(lVar, i10);
        return this;
    }

    public void setAdapter(@Nullable RecyclerView.Adapter adapter, int i10) {
        this.f40702c.i(adapter);
        t(i10);
    }

    public void setCurrentItem(int i10, boolean z10) {
        int i11 = i10 + this.f40711l;
        this.f40712m = i11;
        this.f40703d.setCurrentItem(i11, z10);
    }

    public Banner setIndicator(com.to.aboomy.pager2banner.a aVar, boolean z10) {
        com.to.aboomy.pager2banner.a aVar2 = this.f40704e;
        if (aVar2 != null) {
            removeView(aVar2.getView());
        }
        if (aVar != null) {
            this.f40704e = aVar;
            if (z10) {
                addView(aVar.getView(), this.f40704e.getParams());
            }
        }
        return this;
    }

    public Banner setPageMargin(int i10, int i11, int i12) {
        if (i12 < 0) {
            i12 = 0;
        }
        addPageTransformer(new MarginPageTransformer(i12));
        RecyclerView recyclerView = (RecyclerView) this.f40703d.getChildAt(0);
        if (this.f40703d.getOrientation() == 1) {
            recyclerView.setPadding(this.f40703d.getPaddingLeft(), i10 + Math.abs(i12), this.f40703d.getPaddingRight(), i11 + Math.abs(i12));
        } else {
            recyclerView.setPadding(i10 + Math.abs(i12), this.f40703d.getPaddingTop(), i11 + Math.abs(i12), this.f40703d.getPaddingBottom());
        }
        recyclerView.setClipToPadding(false);
        this.f40710k = 4;
        this.f40711l = 2;
        return this;
    }

    public Banner(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f40705f = true;
        this.f40706g = true;
        this.f40708i = 2500L;
        this.f40709j = 800L;
        this.f40710k = 2;
        this.f40711l = 2 / 2;
        this.f40718s = new Runnable() {
            @Override
            public void run() {
                if (Banner.this.isAutoPlay()) {
                    Banner.i(Banner.this);
                    if (Banner.this.f40712m == Banner.this.getRealCount() + Banner.this.f40711l + 1) {
                        Banner.this.f40706g = false;
                        Banner.this.f40703d.setCurrentItem(Banner.this.f40711l, false);
                        Banner banner = Banner.this;
                        banner.post(banner.f40718s);
                        return;
                    }
                    Banner.this.f40706g = true;
                    Banner.this.f40703d.setCurrentItem(Banner.this.f40712m);
                    Banner banner2 = Banner.this;
                    banner2.postDelayed(banner2.f40718s, Banner.this.f40708i);
                }
            }
        };
        this.f40719t = new a();
        this.f40717r = ViewConfiguration.get(context).getScaledTouchSlop() >> 1;
        s(context);
    }
}
