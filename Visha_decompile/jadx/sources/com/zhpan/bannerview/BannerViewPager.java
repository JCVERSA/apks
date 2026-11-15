package com.zhpan.bannerview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleObserver;
import androidx.p004lifecycle.OnLifecycleEvent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.zhpan.indicator.IndicatorView;
import com.zhpan.indicator.base.IIndicator;
import defpackage.fdc;
import defpackage.r70;
import defpackage.rz4;
import defpackage.u70;
import defpackage.uq8;
import defpackage.v70;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@SuppressLint({"NotifyDataSetChanged"})
public class BannerViewPager<T> extends RelativeLayout implements LifecycleObserver {
    public int b;
    public boolean c;
    public boolean d;
    public IIndicator e;
    public RelativeLayout f;
    public ViewPager2 g;
    public r70 h;
    public final Handler i;
    public BaseBannerAdapter j;
    public ViewPager2.OnPageChangeCallback k;
    public final Runnable l;
    public RectF m;
    public Path n;
    public int o;
    public int p;
    public Lifecycle q;
    public final ViewPager2.OnPageChangeCallback r;

    public class a extends ViewPager2.OnPageChangeCallback {
        public a() {
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            super.onPageScrollStateChanged(i);
            BannerViewPager.this.x(i);
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
            super.onPageScrolled(i, f, i2);
            BannerViewPager.this.y(i, f, i2);
        }

        @Override
        public void onPageSelected(int i) {
            super.onPageSelected(i);
            BannerViewPager.this.z(i);
        }
    }

    public interface b {
        void a(View view, int i);
    }

    public BannerViewPager(Context context) {
        this(context, null);
    }

    private void B(int i) {
        if (r()) {
            this.g.setCurrentItem(v70.b(this.j.g()) + i, false);
        } else {
            this.g.setCurrentItem(i, false);
        }
    }

    public void g() {
        BaseBannerAdapter baseBannerAdapter = this.j;
        if (baseBannerAdapter == null || baseBannerAdapter.g() <= 1 || !q()) {
            return;
        }
        ViewPager2 viewPager2 = this.g;
        viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1, this.h.c().q());
        this.i.postDelayed(this.l, getInterval());
    }

    private int getInterval() {
        return this.h.c().e();
    }

    private void i() {
        List data = this.j.getData();
        if (data != null) {
            setIndicatorValues(data);
            setupViewPager(data);
            o();
        }
    }

    private void o() {
        int iM = this.h.c().m();
        if (iM > 0) {
            fdc.a(this, iM);
        }
    }

    private void p() {
        View.inflate(getContext(), R.layout.bvp_layout, this);
        this.g = (ViewPager2) findViewById(R.id.vp_main);
        this.f = (RelativeLayout) findViewById(R.id.bvp_layout_indicator);
        this.g.setPageTransformer(this.h.d());
    }

    private boolean q() {
        return this.h.c().p();
    }

    private boolean r() {
        BaseBannerAdapter baseBannerAdapter;
        r70 r70Var = this.h;
        return (r70Var == null || r70Var.c() == null || !this.h.c().r() || (baseBannerAdapter = this.j) == null || baseBannerAdapter.g() <= 1) ? false : true;
    }

    private boolean s() {
        return this.h.c().t();
    }

    private void setIndicatorValues(List<? extends T> list) {
        u70 u70VarC = this.h.c();
        this.f.setVisibility(u70VarC.d());
        u70VarC.u();
        if (this.c) {
            this.f.removeAllViews();
        } else if (this.e == null) {
            this.e = new IndicatorView(getContext());
        }
        j(u70VarC.c(), list);
    }

    private void setupViewPager(List<T> list) {
        if (this.j == null) {
            throw new NullPointerException("You must set adapter for BannerViewPager");
        }
        u70 u70VarC = this.h.c();
        if (u70VarC.o() != 0) {
            uq8.a(this.g, u70VarC.o());
        }
        this.b = 0;
        this.j.v(u70VarC.r());
        this.g.setAdapter(this.j);
        if (r()) {
            this.g.setCurrentItem(v70.b(list.size()), false);
        }
        this.g.unregisterOnPageChangeCallback(this.r);
        this.g.registerOnPageChangeCallback(this.r);
        this.g.setOrientation(u70VarC.h());
        this.g.setOffscreenPageLimit(u70VarC.g());
        n(u70VarC);
        m(u70VarC.k());
        startLoop();
    }

    private void v(int i, int i2, int i3) {
        if (i2 <= i3) {
            if (i3 > i2) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        } else if (this.h.c().r()) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (this.b != 0 || i - this.o <= 0) {
            getParent().requestDisallowInterceptTouchEvent(this.b != getData().size() - 1 || i - this.o >= 0);
        } else {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
    }

    private void w(int i, int i2, int i3) {
        if (i3 <= i2) {
            if (i2 > i3) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        } else if (this.h.c().r()) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (this.b != 0 || i - this.p <= 0) {
            getParent().requestDisallowInterceptTouchEvent(this.b != getData().size() - 1 || i - this.p >= 0);
        } else {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
    }

    public void x(int i) {
        IIndicator iIndicator = this.e;
        if (iIndicator != null) {
            iIndicator.onPageScrollStateChanged(i);
        }
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.k;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrollStateChanged(i);
        }
    }

    public void y(int i, float f, int i2) {
        int iG = this.j.g();
        this.h.c().r();
        int iC = v70.c(i, iG);
        if (iG > 0) {
            ViewPager2.OnPageChangeCallback onPageChangeCallback = this.k;
            if (onPageChangeCallback != null) {
                onPageChangeCallback.onPageScrolled(iC, f, i2);
            }
            IIndicator iIndicator = this.e;
            if (iIndicator != null) {
                iIndicator.onPageScrolled(iC, f, i2);
            }
        }
    }

    public void z(int i) {
        int iG = this.j.g();
        boolean zR = this.h.c().r();
        int iC = v70.c(i, iG);
        this.b = iC;
        if (iG > 0 && zR && (i == 0 || i == 999)) {
            B(iC);
        }
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.k;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageSelected(this.b);
        }
        IIndicator iIndicator = this.e;
        if (iIndicator != null) {
            iIndicator.onPageSelected(this.b);
        }
    }

    public final void A(List list) {
        setIndicatorValues(list);
        this.h.c().c().q(v70.c(this.g.getCurrentItem(), list.size()));
        this.e.notifyDataChanged();
    }

    public void addData(List<? extends T> list) {
        BaseBannerAdapter baseBannerAdapter;
        if (!isAttachedToWindow() || list == null || (baseBannerAdapter = this.j) == null) {
            return;
        }
        List data = baseBannerAdapter.getData();
        data.addAll(list);
        this.j.notifyDataSetChanged();
        B(getCurrentItem());
        A(data);
    }

    public void addItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration, int i) {
        if (!r()) {
            this.g.addItemDecoration(itemDecoration, i);
            return;
        }
        int iG = this.j.g();
        int currentItem = this.g.getCurrentItem();
        this.h.c().r();
        int iC = v70.c(currentItem, iG);
        if (currentItem != i) {
            if (i == 0 && iC == iG - 1) {
                this.g.addItemDecoration(itemDecoration, currentItem + 1);
            } else if (iC == 0 && i == iG - 1) {
                this.g.addItemDecoration(itemDecoration, currentItem - 1);
            } else {
                this.g.addItemDecoration(itemDecoration, currentItem + (i - iC));
            }
        }
    }

    public BannerViewPager<T> addPageTransformer(@Nullable ViewPager2.PageTransformer pageTransformer) {
        if (pageTransformer != null) {
            this.h.a(pageTransformer);
        }
        return this;
    }

    public void create(List<T> list) {
        BaseBannerAdapter baseBannerAdapter = this.j;
        if (baseBannerAdapter == null) {
            throw new NullPointerException("You must set adapter for BannerViewPager");
        }
        baseBannerAdapter.w(list);
        i();
    }

    @Deprecated
    public BannerViewPager<T> disallowInterceptTouchEvent(boolean z) {
        this.h.c().y(z);
        return this;
    }

    public BannerViewPager<T> disallowParentInterceptDownEvent(boolean z) {
        this.h.c().y(z);
        return this;
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        float[] fArrN = this.h.c().n();
        RectF rectF = this.m;
        if (rectF != null && this.n != null && fArrN != null) {
            rectF.right = getWidth();
            this.m.bottom = getHeight();
            this.n.addRoundRect(this.m, fArrN, Path.Direction.CW);
            canvas.clipPath(this.n);
        }
        super.dispatchDraw(canvas);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.d = true;
            stopLoop();
        } else if (action == 1 || action == 3 || action == 4) {
            this.d = false;
            startLoop();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public BaseBannerAdapter<T> getAdapter() {
        return this.j;
    }

    public int getCurrentItem() {
        return this.b;
    }

    public List<T> getData() {
        BaseBannerAdapter baseBannerAdapter = this.j;
        return baseBannerAdapter != null ? baseBannerAdapter.getData() : Collections.emptyList();
    }

    public final void h(Context context, AttributeSet attributeSet) {
        r70 r70Var = new r70();
        this.h = r70Var;
        r70Var.e(context, attributeSet);
        p();
    }

    public void insertItem(int i, T t) {
        List data = this.j.getData();
        if (!isAttachedToWindow() || i < 0 || i > data.size()) {
            return;
        }
        data.add(i, t);
        this.j.notifyDataSetChanged();
        B(getCurrentItem());
        A(data);
    }

    public final void j(rz4 rz4Var, List list) {
        if (((View) this.e).getParent() == null) {
            this.f.removeAllViews();
            this.f.addView((View) this.e);
            l();
            k();
        }
        this.e.setIndicatorOptions(rz4Var);
        rz4Var.v(list.size());
        this.e.notifyDataChanged();
    }

    public final void k() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) ((View) this.e).getLayoutParams();
        int iA = this.h.c().a();
        if (iA == 0) {
            layoutParams.addRule(14);
        } else if (iA == 2) {
            layoutParams.addRule(9);
        } else {
            if (iA != 4) {
                return;
            }
            layoutParams.addRule(11);
        }
    }

    public final void l() {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) ((View) this.e).getLayoutParams();
        u70.a aVarB = this.h.c().b();
        if (aVarB != null) {
            marginLayoutParams.setMargins(aVarB.b(), aVarB.d(), aVarB.c(), aVarB.a());
        } else {
            int iA = v70.a(10.0f);
            marginLayoutParams.setMargins(iA, iA, iA, iA);
        }
    }

    public final void m(int i) {
        float fJ = this.h.c().j();
        if (i == 4) {
            this.h.i(true, fJ);
        } else if (i == 8) {
            this.h.i(false, fJ);
        }
    }

    public final void n(u70 u70Var) {
        int iL = u70Var.l();
        int iF = u70Var.f();
        if (iF != -1000 || iL != -1000) {
            RecyclerView recyclerView = (RecyclerView) this.g.getChildAt(0);
            int iH = u70Var.h();
            int i = u70Var.i() + iL;
            int i2 = u70Var.i() + iF;
            if (i2 < 0) {
                i2 = 0;
            }
            if (i < 0) {
                i = 0;
            }
            if (iH == 0) {
                recyclerView.setPadding(i2, 0, i, 0);
            } else if (iH == 1) {
                recyclerView.setPadding(0, i2, 0, i);
            }
            recyclerView.setClipToPadding(false);
        }
        this.h.b();
    }

    public void nextPage() {
        setCurrentItem(getCurrentItem() + 1);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.h == null || !s()) {
            return;
        }
        startLoop();
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy() {
        stopLoop();
    }

    @Override
    public void onDetachedFromWindow() {
        if (this.h != null && s()) {
            stopLoop();
        }
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0057  */
    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        BaseBannerAdapter baseBannerAdapter;
        if (!this.g.isUserInputEnabled() || ((baseBannerAdapter = this.j) != null && baseBannerAdapter.getData().size() <= 1)) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.o = (int) motionEvent.getX();
            this.p = (int) motionEvent.getY();
            getParent().requestDisallowInterceptTouchEvent(true ^ this.h.c().s());
        } else if (action == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
        } else if (action == 2) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int iAbs = Math.abs(x - this.o);
            int iAbs2 = Math.abs(y - this.p);
            int iH = this.h.c().h();
            if (iH == 1) {
                w(y, iAbs, iAbs2);
            } else if (iH == 0) {
                v(x, iAbs, iAbs2);
            }
        } else if (action == 3) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void onPause() {
        stopLoop();
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("SUPER_STATE"));
        this.b = bundle.getInt("CURRENT_POSITION");
        this.c = bundle.getBoolean("IS_CUSTOM_INDICATOR");
        setCurrentItem(this.b, false);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void onResume() {
        startLoop();
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("SUPER_STATE", parcelableOnSaveInstanceState);
        bundle.putInt("CURRENT_POSITION", this.b);
        bundle.putBoolean("IS_CUSTOM_INDICATOR", this.c);
        return bundle;
    }

    public void previousPage() {
        setCurrentItem(getCurrentItem() - 1);
    }

    public void refreshData(final List<? extends T> list) {
        post(new Runnable() {
            @Override
            public final void run() {
                this.b.t(list);
            }
        });
    }

    public BannerViewPager<T> registerLifecycleObserver(Lifecycle lifecycle) {
        lifecycle.addObserver(this);
        this.q = lifecycle;
        return this;
    }

    public BannerViewPager<T> registerOnPageChangeCallback(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.k = onPageChangeCallback;
        return this;
    }

    public void removeDefaultPageTransformer() {
        this.h.f();
    }

    public void removeItem(int i) {
        List data = this.j.getData();
        if (!isAttachedToWindow() || i < 0 || i >= data.size()) {
            return;
        }
        data.remove(i);
        this.j.notifyDataSetChanged();
        B(getCurrentItem());
        A(data);
    }

    public BannerViewPager<T> removeLifecycleObserver(Lifecycle lifecycle) {
        lifecycle.removeObserver(this);
        return this;
    }

    public void removeMarginPageTransformer() {
        this.h.g();
    }

    public void removeTransformer(@Nullable ViewPager2.PageTransformer pageTransformer) {
        if (pageTransformer != null) {
            this.h.h(pageTransformer);
        }
    }

    public BannerViewPager<T> setAdapter(BaseBannerAdapter<T> baseBannerAdapter) {
        this.j = baseBannerAdapter;
        return this;
    }

    public BannerViewPager<T> setAutoPlay(boolean z) {
        this.h.c().v(z);
        if (q()) {
            this.h.c().x(true);
        }
        return this;
    }

    public BannerViewPager<T> setAutoPlaySmoothly(boolean z) {
        this.h.c().w(z);
        return this;
    }

    public BannerViewPager<T> setCanLoop(boolean z) {
        this.h.c().x(z);
        if (!z) {
            this.h.c().v(false);
        }
        return this;
    }

    public void setCurrentItem(int i) {
        setCurrentItem(i, true);
    }

    public BannerViewPager<T> setIndicatorGravity(int i) {
        this.h.c().A(i);
        return this;
    }

    public BannerViewPager<T> setIndicatorHeight(@Px int i) {
        this.h.c().B(i);
        return this;
    }

    public BannerViewPager<T> setIndicatorMargin(@Px int i, @Px int i2, @Px int i3, @Px int i4) {
        this.h.c().C(i, i2, i3, i4);
        return this;
    }

    public BannerViewPager<T> setIndicatorSlideMode(int i) {
        this.h.c().D(i);
        return this;
    }

    public BannerViewPager<T> setIndicatorSliderColor(@ColorInt int i, @ColorInt int i2) {
        this.h.c().E(i, i2);
        return this;
    }

    public BannerViewPager<T> setIndicatorSliderGap(@Px int i) {
        this.h.c().z(i);
        return this;
    }

    public BannerViewPager<T> setIndicatorSliderRadius(@Px int i) {
        setIndicatorSliderRadius(i, i);
        return this;
    }

    public BannerViewPager<T> setIndicatorSliderWidth(@Px int i) {
        setIndicatorSliderWidth(i, i);
        return this;
    }

    public BannerViewPager<T> setIndicatorStyle(int i) {
        this.h.c().G(i);
        return this;
    }

    public BannerViewPager<T> setIndicatorView(IIndicator iIndicator) {
        if (iIndicator instanceof View) {
            this.c = true;
            this.e = iIndicator;
        }
        return this;
    }

    public BannerViewPager<T> setIndicatorVisibility(int i) {
        this.h.c().H(i);
        return this;
    }

    public BannerViewPager<T> setInterval(int i) {
        this.h.c().I(i);
        return this;
    }

    @Deprecated
    public BannerViewPager<T> setLifecycleRegistry(Lifecycle lifecycle) {
        registerLifecycleObserver(lifecycle);
        return this;
    }

    public BannerViewPager<T> setOffScreenPageLimit(int i) {
        this.h.c().K(i);
        return this;
    }

    public BannerViewPager<T> setOnPageClickListener(b bVar) {
        setOnPageClickListener(bVar, false);
        return this;
    }

    public BannerViewPager<T> setOrientation(int i) {
        this.h.c().L(i);
        return this;
    }

    public BannerViewPager<T> setPageMargin(@Px int i) {
        this.h.j(i);
        return this;
    }

    public BannerViewPager<T> setPageStyle(int i) {
        return setPageStyle(i, 0.85f);
    }

    public BannerViewPager<T> setPageTransformer(@Nullable ViewPager2.PageTransformer pageTransformer) {
        if (pageTransformer != null) {
            this.g.setPageTransformer(pageTransformer);
        }
        return this;
    }

    public BannerViewPager<T> setRTLMode(boolean z) {
        this.g.setLayoutDirection(z ? 1 : 0);
        this.h.c().S(z);
        return this;
    }

    public BannerViewPager<T> setRevealWidth(@Px int i) {
        setRevealWidth(i, i);
        return this;
    }

    public BannerViewPager<T> setRoundCorner(@Px int i) {
        this.h.c().Q(i);
        return this;
    }

    @Deprecated
    public BannerViewPager<T> setRoundRect(@Px int i) {
        return setRoundCorner(i);
    }

    public BannerViewPager<T> setScrollDuration(int i) {
        this.h.c().T(i);
        return this;
    }

    public BannerViewPager<T> setUserInputEnabled(boolean z) {
        this.h.c().V(z);
        this.g.setUserInputEnabled(z);
        return this;
    }

    public BannerViewPager<T> showIndicatorWhenOneItem(boolean z) {
        this.h.c().W(z);
        return this;
    }

    public void startLoop() {
        BaseBannerAdapter baseBannerAdapter;
        if (this.d || !q() || (baseBannerAdapter = this.j) == null || baseBannerAdapter.g() <= 1 || !isAttachedToWindow()) {
            return;
        }
        Lifecycle lifecycle = this.q;
        if (lifecycle == null || lifecycle.getState() == Lifecycle.State.RESUMED || this.q.getState() == Lifecycle.State.CREATED) {
            this.i.postDelayed(this.l, getInterval());
            this.d = true;
        }
    }

    public void startLoopNow() {
        BaseBannerAdapter baseBannerAdapter;
        if (this.d || !q() || (baseBannerAdapter = this.j) == null || baseBannerAdapter.g() <= 1) {
            return;
        }
        this.i.post(this.l);
        this.d = true;
    }

    public void stopLoop() {
        if (this.d) {
            this.i.removeCallbacks(this.l);
            this.d = false;
        }
    }

    public BannerViewPager<T> stopLoopWhenDetachedFromWindow(boolean z) {
        this.h.c().U(z);
        return this;
    }

    public final void t(List list) {
        if (!isAttachedToWindow() || list == null || this.j == null) {
            return;
        }
        stopLoop();
        this.j.w(list);
        this.j.notifyDataSetChanged();
        B(getCurrentItem());
        A(list);
        startLoop();
    }

    public final void u(b bVar, boolean z, View view, int i, int i2) {
        bVar.a(view, i);
        if (z) {
            this.g.setCurrentItem(i2);
        }
    }

    public BannerViewPager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setCurrentItem(int i, boolean z) {
        if (!r()) {
            this.g.setCurrentItem(i, z);
            return;
        }
        stopLoop();
        int currentItem = this.g.getCurrentItem();
        this.g.setCurrentItem(currentItem + (i - v70.c(currentItem, this.j.g())), z);
        startLoop();
    }

    public BannerViewPager<T> setIndicatorSliderRadius(@Px int i, @Px int i2) {
        this.h.c().F(i * 2, i2 * 2);
        return this;
    }

    public BannerViewPager<T> setIndicatorSliderWidth(@Px int i, @Px int i2) {
        this.h.c().F(i, i2);
        return this;
    }

    public BannerViewPager<T> setOnPageClickListener(final b bVar, final boolean z) {
        BaseBannerAdapter baseBannerAdapter = this.j;
        if (baseBannerAdapter != null) {
            baseBannerAdapter.x(new BaseBannerAdapter.a() {
                @Override
                public final void a(View view, int i, int i2) {
                    this.a.u(bVar, z, view, i, i2);
                }
            });
        }
        return this;
    }

    public BannerViewPager<T> setPageStyle(int i, float f) {
        this.h.c().O(i);
        this.h.c().N(f);
        return this;
    }

    public BannerViewPager<T> setRevealWidth(@Px int i, @Px int i2) {
        this.h.c().P(i2);
        this.h.c().J(i);
        return this;
    }

    public BannerViewPager<T> setRoundCorner(@Px int i, @Px int i2, int i3, int i4) {
        this.m = new RectF();
        this.n = new Path();
        this.h.c().R(i, i2, i3, i4);
        return this;
    }

    @Deprecated
    public BannerViewPager<T> setRoundRect(@Px int i, @Px int i2, int i3, int i4) {
        return setRoundCorner(i, i2, i3, i4);
    }

    public BannerViewPager(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.i = new Handler(Looper.getMainLooper());
        this.l = new Runnable() {
            @Override
            public final void run() {
                this.b.g();
            }
        };
        this.r = new a();
        h(context, attributeSet);
    }

    public void create() {
        create(new ArrayList());
    }

    public void addItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration) {
        this.g.addItemDecoration(itemDecoration);
    }
}
