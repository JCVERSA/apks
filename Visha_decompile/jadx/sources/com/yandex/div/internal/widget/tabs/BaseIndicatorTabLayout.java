package com.yandex.div.internal.widget.tabs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.yandex.div.R;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.internal.widget.tabs.TabView;
import defpackage.a15;
import defpackage.bu2;
import defpackage.bz6;
import defpackage.pdc;
import defpackage.pp5;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

public class BaseIndicatorTabLayout extends HorizontalScrollView {
    public static final TimeInterpolator H = new FastOutSlowInInterpolator();
    public static final Pools.Pool I = new Pools.SynchronizedPool(16);
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLLABLE = 0;
    public static final int UNDEFINED_COLOR = -1;
    public static final float UNDEFINED_RADIUS = -1.0f;
    public ViewPager A;
    public PagerAdapter B;
    public DataSetObserver C;
    public TabLayoutOnPageChangeListener D;
    public final g E;
    public a15 F;
    public final Pools.Pool G;
    public final ArrayList b;
    public e c;
    public final c d;
    public int e;
    public int f;
    public int g;
    public int h;
    public long i;
    public int j;
    public bu2 k;
    public ColorStateList l;
    public boolean m;
    public int n;
    public final int o;
    public final int p;
    public final int q;
    public final boolean r;
    public final boolean s;
    public final int t;
    public final bz6 u;
    public int v;
    public int w;
    public int x;
    public b y;
    public ValueAnimator z;

    public enum AnimationType {
        SLIDE,
        FADE,
        NONE
    }

    public static class TabLayoutOnPageChangeListener implements ViewPager.OnPageChangeListener {
        public final WeakReference b;
        public int c;
        public int d;

        public TabLayoutOnPageChangeListener(BaseIndicatorTabLayout baseIndicatorTabLayout) {
            this.b = new WeakReference(baseIndicatorTabLayout);
        }

        public void a() {
            this.d = 0;
            this.c = 0;
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            this.c = this.d;
            this.d = i;
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
            BaseIndicatorTabLayout baseIndicatorTabLayout = (BaseIndicatorTabLayout) this.b.get();
            if (baseIndicatorTabLayout != null) {
                if (this.d != 2 || this.c == 1) {
                    baseIndicatorTabLayout.A(i, f, true, true);
                }
            }
        }

        @Override
        public void onPageSelected(int i) {
            BaseIndicatorTabLayout baseIndicatorTabLayout = (BaseIndicatorTabLayout) this.b.get();
            if (baseIndicatorTabLayout == null || baseIndicatorTabLayout.getSelectedTabPosition() == i) {
                return;
            }
            int i2 = this.d;
            baseIndicatorTabLayout.y(baseIndicatorTabLayout.getTabAt(i), i2 == 0 || (i2 == 2 && this.c == 0));
        }
    }

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[AnimationType.values().length];
            a = iArr;
            try {
                iArr[AnimationType.FADE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[AnimationType.SLIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public interface b {
        void a(e eVar);

        void b(e eVar);

        void c(e eVar);
    }

    public static class c extends LinearLayout {
        public int b;
        public int c;
        public int d;
        public int e;
        public float f;
        public int g;
        public int[] h;
        public int[] i;
        public float[] j;
        public int k;
        public int l;
        public int m;
        public ValueAnimator n;
        public final Paint o;
        public final Path p;
        public final RectF q;
        public final int r;
        public final int s;
        public boolean t;
        public float u;
        public int v;
        public AnimationType w;

        public class a extends AnimatorListenerAdapter {
            public boolean b = false;

            public a() {
            }

            @Override
            public void onAnimationCancel(Animator animator) {
                this.b = true;
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                if (this.b) {
                    return;
                }
                c cVar = c.this;
                cVar.e = cVar.v;
                c.this.f = 0.0f;
            }
        }

        public class b extends AnimatorListenerAdapter {
            public boolean b = false;

            public b() {
            }

            @Override
            public void onAnimationCancel(Animator animator) {
                this.b = true;
                c.this.u = 1.0f;
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                if (this.b) {
                    return;
                }
                c cVar = c.this;
                cVar.e = cVar.v;
                c.this.f = 0.0f;
            }
        }

        public c(Context context, int i, int i2, a aVar) {
            this(context, i, i2);
        }

        public static float h(float f, float f2, float f3) {
            if (f3 <= 0.0f || f2 <= 0.0f) {
                return 0.0f;
            }
            float fMin = Math.min(f3, f2) / 2.0f;
            if (f == -1.0f) {
                return fMin;
            }
            if (f > fMin) {
                pp5.b("BaseIndicatorTabLayout", "Corner radius is too big");
            }
            return Math.min(f, fMin);
        }

        public static boolean n(int i) {
            return (i >> 24) == 0;
        }

        public static int q(int i, int i2, float f) {
            return i + Math.round(f * (i2 - i));
        }

        public void A(int i, float f) {
            ValueAnimator valueAnimator = this.n;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.n.cancel();
            }
            this.e = i;
            this.f = f;
            E();
            F();
        }

        public void B(int i, int i2, int i3) {
            int[] iArr = this.h;
            int i4 = iArr[i];
            int[] iArr2 = this.i;
            int i5 = iArr2[i];
            if (i2 == i4 && i3 == i5) {
                return;
            }
            iArr[i] = i2;
            iArr2[i] = i3;
            ViewCompat.postInvalidateOnAnimation(this);
        }

        public void C(int i, long j) {
            if (i != this.e) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                valueAnimatorOfFloat.setInterpolator(BaseIndicatorTabLayout.H);
                valueAnimatorOfFloat.setDuration(j);
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    @Override
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.b.o(valueAnimator);
                    }
                });
                valueAnimatorOfFloat.addListener(new b());
                this.v = i;
                this.n = valueAnimatorOfFloat;
                valueAnimatorOfFloat.start();
            }
        }

        public void D(int i, long j, final int i2, final int i3, final int i4, final int i5) {
            if (i2 == i4 && i3 == i5) {
                return;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setInterpolator(BaseIndicatorTabLayout.H);
            valueAnimatorOfFloat.setDuration(j);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.b.p(i2, i4, i3, i5, valueAnimator);
                }
            });
            valueAnimatorOfFloat.addListener(new a());
            this.v = i;
            this.n = valueAnimatorOfFloat;
            valueAnimatorOfFloat.start();
        }

        public void E() {
            int i;
            int right;
            int i2;
            int i3;
            int childCount = getChildCount();
            if (childCount != this.m) {
                m(childCount);
            }
            int iK = k(this.e);
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                if (childAt instanceof TabView) {
                    if (childAt.getWidth() > 0) {
                        int left = childAt.getLeft();
                        right = childAt.getRight();
                        if (this.w != AnimationType.SLIDE || i4 != iK || this.f <= 0.0f || i4 >= childCount - 1) {
                            i2 = left;
                            i3 = i2;
                            i = right;
                        } else {
                            View childAt2 = getChildAt(this.t ? i4 + 2 : i4 + 1);
                            float left2 = this.f * childAt2.getLeft();
                            float f = this.f;
                            i3 = (int) (left2 + ((1.0f - f) * left));
                            int right2 = (int) ((f * childAt2.getRight()) + ((1.0f - this.f) * right));
                            i2 = left;
                            i = right2;
                        }
                    } else {
                        i = -1;
                        right = -1;
                        i2 = -1;
                        i3 = -1;
                    }
                    B(i4, i2, right);
                    if (i4 == iK) {
                        z(i3, i);
                    }
                }
            }
        }

        public void F() {
            float f = 1.0f - this.f;
            if (f != this.u) {
                this.u = f;
                int i = this.e + 1;
                if (i >= this.m) {
                    i = -1;
                }
                this.v = i;
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        @Override
        public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
            int childCount = getChildCount();
            if (i < 0) {
                i = childCount;
            }
            if (i != 0) {
                super.addView(view, i, x(layoutParams, this.g));
                return;
            }
            if (childCount != 0) {
                View childAt = getChildAt(0);
                updateViewLayout(childAt, x(childAt.getLayoutParams(), this.g));
            }
            super.addView(view, i, x(layoutParams, 0));
        }

        @Override
        public void draw(Canvas canvas) {
            float height = getHeight();
            if (this.d != -1) {
                int i = this.m;
                for (int i2 = 0; i2 < i; i2++) {
                    i(canvas, this.h[i2], this.i[i2], height, this.d, 1.0f);
                }
            }
            if (this.c != -1) {
                int iK = k(this.e);
                int iK2 = k(this.v);
                int i3 = a.a[this.w.ordinal()];
                if (i3 == 1) {
                    i(canvas, this.h[iK], this.i[iK], height, this.c, this.u);
                    if (this.v != -1) {
                        i(canvas, this.h[iK2], this.i[iK2], height, this.c, 1.0f - this.u);
                    }
                } else if (i3 != 2) {
                    i(canvas, this.h[iK], this.i[iK], height, this.c, 1.0f);
                } else {
                    i(canvas, this.k, this.l, height, this.c, 1.0f);
                }
            }
            super.draw(canvas);
        }

        public void f(int i, long j) {
            ValueAnimator valueAnimator = this.n;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.n.cancel();
                j = Math.round((1.0f - this.n.getAnimatedFraction()) * this.n.getDuration());
            }
            long j2 = j;
            View viewJ = j(i);
            if (viewJ == null) {
                E();
                return;
            }
            int i2 = a.a[this.w.ordinal()];
            if (i2 == 1) {
                C(i, j2);
            } else if (i2 != 2) {
                A(i, 0.0f);
            } else {
                D(i, j2, this.k, this.l, viewJ.getLeft(), viewJ.getRight());
            }
        }

        public boolean g() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        public final void i(Canvas canvas, int i, int i2, float f, int i3, float f2) {
            if (i < 0 || i2 <= i) {
                return;
            }
            this.q.set(i, this.r, i2, f - this.s);
            float fWidth = this.q.width();
            float fHeight = this.q.height();
            float[] fArr = new float[8];
            for (int i4 = 0; i4 < 8; i4++) {
                fArr[i4] = h(this.j[i4], fWidth, fHeight);
            }
            this.p.reset();
            this.p.addRoundRect(this.q, fArr, Path.Direction.CW);
            this.p.close();
            this.o.setColor(i3);
            this.o.setAlpha(Math.round(this.o.getAlpha() * f2));
            canvas.drawPath(this.p, this.o);
        }

        public View j(int i) {
            return getChildAt(k(i));
        }

        public final int k(int i) {
            return (!this.t || i == -1) ? i : i * 2;
        }

        public boolean l() {
            return this.t;
        }

        public final void m(int i) {
            this.m = i;
            this.h = new int[i];
            this.i = new int[i];
            for (int i2 = 0; i2 < this.m; i2++) {
                this.h[i2] = -1;
                this.i[i2] = -1;
            }
        }

        public final void o(ValueAnimator valueAnimator) {
            this.u = 1.0f - valueAnimator.getAnimatedFraction();
            ViewCompat.postInvalidateOnAnimation(this);
        }

        @Override
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            E();
            ValueAnimator valueAnimator = this.n;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                return;
            }
            this.n.cancel();
            f(this.v, Math.round((1.0f - this.n.getAnimatedFraction()) * this.n.getDuration()));
        }

        public final void p(int i, int i2, int i3, int i4, ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            z(q(i, i2, animatedFraction), q(i3, i4, animatedFraction));
            ViewCompat.postInvalidateOnAnimation(this);
        }

        public void r(AnimationType animationType) {
            if (this.w != animationType) {
                this.w = animationType;
                ValueAnimator valueAnimator = this.n;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.n.cancel();
            }
        }

        public void s(boolean z) {
            if (this.t != z) {
                this.t = z;
                F();
                E();
            }
        }

        public void t(int i) {
            if (this.d != i) {
                if (n(i)) {
                    this.d = -1;
                } else {
                    this.d = i;
                }
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        public void u(float[] fArr) {
            if (Arrays.equals(this.j, fArr)) {
                return;
            }
            this.j = fArr;
            ViewCompat.postInvalidateOnAnimation(this);
        }

        public void v(int i) {
            if (this.b != i) {
                this.b = i;
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        public void w(int i) {
            if (i != this.g) {
                this.g = i;
                int childCount = getChildCount();
                for (int i2 = 1; i2 < childCount; i2++) {
                    View childAt = getChildAt(i2);
                    updateViewLayout(childAt, x(childAt.getLayoutParams(), this.g));
                }
            }
        }

        public final ViewGroup.MarginLayoutParams x(ViewGroup.LayoutParams layoutParams, int i) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.leftMargin = i;
            return marginLayoutParams;
        }

        public void y(int i) {
            if (this.c != i) {
                if (n(i)) {
                    this.c = -1;
                } else {
                    this.c = i;
                }
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        public void z(int i, int i2) {
            if (i == this.k && i2 == this.l) {
                return;
            }
            this.k = i;
            this.l = i2;
            ViewCompat.postInvalidateOnAnimation(this);
        }

        public c(Context context, int i, int i2) {
            super(context);
            this.c = -1;
            this.d = -1;
            this.e = -1;
            this.g = 0;
            this.k = -1;
            this.l = -1;
            this.u = 1.0f;
            this.v = -1;
            this.w = AnimationType.SLIDE;
            setId(R.id.tab_sliding_oval_indicator);
            setWillNotDraw(false);
            int childCount = getChildCount();
            this.m = childCount;
            if (this.t) {
                this.m = (childCount + 1) / 2;
            }
            m(this.m);
            Paint paint = new Paint();
            this.o = paint;
            paint.setAntiAlias(true);
            this.q = new RectF();
            this.r = i;
            this.s = i2;
            this.p = new Path();
            this.j = new float[8];
        }
    }

    public class d extends DataSetObserver {
        public d() {
        }

        @Override
        public void onChanged() {
            BaseIndicatorTabLayout.this.v();
        }

        @Override
        public void onInvalidated() {
            BaseIndicatorTabLayout.this.v();
        }

        public d(BaseIndicatorTabLayout baseIndicatorTabLayout, a aVar) {
            this();
        }
    }

    public static final class e {
        public CharSequence a;
        public int b;
        public BaseIndicatorTabLayout c;
        public TabView d;

        public e(a aVar) {
            this();
        }

        public int f() {
            return this.b;
        }

        public TabView g() {
            return this.d;
        }

        public CharSequence h() {
            return this.a;
        }

        public final void i() {
            this.c = null;
            this.d = null;
            this.a = null;
            this.b = -1;
        }

        public void j() {
            BaseIndicatorTabLayout baseIndicatorTabLayout = this.c;
            if (baseIndicatorTabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            baseIndicatorTabLayout.x(this);
        }

        public void k(int i) {
            this.b = i;
        }

        public e l(CharSequence charSequence) {
            this.a = charSequence;
            m();
            return this;
        }

        public final void m() {
            TabView tabView = this.d;
            if (tabView != null) {
                tabView.i();
            }
        }

        public e() {
            this.b = -1;
        }
    }

    public static class f implements b {
        public final ViewPager a;

        public f(ViewPager viewPager) {
            this.a = viewPager;
        }

        @Override
        public void a(e eVar) {
        }

        @Override
        public void b(e eVar) {
        }

        @Override
        public void c(e eVar) {
            this.a.setCurrentItem(eVar.f());
        }
    }

    public BaseIndicatorTabLayout(Context context) {
        this(context, null);
    }

    public int getTabMaxWidth() {
        return this.n;
    }

    private int getTabMinWidth() {
        int i = this.o;
        if (i != -1) {
            return i;
        }
        if (this.x == 0) {
            return this.q;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.d.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    public static ColorStateList o(int i, int i2) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i2, i});
    }

    private void setSelectedTabView(int i) {
        int childCount = this.d.getChildCount();
        int iK = this.d.k(i);
        if (iK >= childCount || this.d.getChildAt(iK).isSelected()) {
            return;
        }
        int i2 = 0;
        while (i2 < childCount) {
            this.d.getChildAt(i2).setSelected(i2 == iK);
            i2++;
        }
    }

    public final void A(int i, float f2, boolean z, boolean z2) {
        int iRound = Math.round(i + f2);
        if (iRound < 0 || iRound >= this.d.getChildCount()) {
            return;
        }
        if (z2) {
            this.d.A(i, f2);
        }
        ValueAnimator valueAnimator = this.z;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.z.cancel();
        }
        scrollTo(l(i, f2), 0);
        if (z) {
            setSelectedTabView(iRound);
        }
    }

    public final void B() {
        int iF;
        e eVar = this.c;
        if (eVar == null || (iF = eVar.f()) == -1) {
            return;
        }
        setScrollPosition(iF, 0.0f, true);
    }

    public final void C(LinearLayout.LayoutParams layoutParams) {
        layoutParams.width = -2;
        layoutParams.weight = 0.0f;
    }

    public final void D(boolean z) {
        for (int i = 0; i < this.d.getChildCount(); i++) {
            View childAt = this.d.getChildAt(i);
            if (childAt instanceof TabView) {
                childAt.setMinimumWidth(getTabMinWidth());
                C((LinearLayout.LayoutParams) childAt.getLayoutParams());
                if (z) {
                    childAt.requestLayout();
                }
            }
        }
    }

    public void addTab(@NonNull e eVar) {
        addTab(eVar, this.b.isEmpty());
    }

    @Override
    public void addView(View view) {
        i(view);
    }

    @NonNull
    @MainThread
    public void bindTypefaceProvider(@NonNull bu2 bu2Var) {
        this.k = bu2Var;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        this.u.c(motionEvent);
        return zDispatchTouchEvent;
    }

    public final void f(TabItem tabItem) {
        e eVarNewTab = newTab();
        CharSequence charSequence = tabItem.b;
        if (charSequence != null) {
            eVarNewTab.l(charSequence);
        }
        addTab(eVarNewTab);
    }

    public final void g(e eVar, int i, boolean z) {
        TabView tabView = eVar.d;
        int iK = this.d.k(i);
        this.d.addView(tabView, iK, p());
        this.E.e(iK);
        if (z) {
            tabView.setSelected(true);
        }
    }

    @NonNull
    public TabLayoutOnPageChangeListener getPageChangeListener() {
        if (this.D == null) {
            this.D = new TabLayoutOnPageChangeListener(this);
        }
        return this.D;
    }

    public int getSelectedTabPosition() {
        e eVar = this.c;
        if (eVar != null) {
            return eVar.f();
        }
        return -1;
    }

    @ColorInt
    public int getSelectedTabTextColor() {
        return this.l.getColorForState(HorizontalScrollView.SELECTED_STATE_SET, -1);
    }

    @Nullable
    public e getTabAt(int i) {
        return (e) this.b.get(i);
    }

    public int getTabCount() {
        return this.b.size();
    }

    public int getTabMode() {
        return this.x;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.l;
    }

    public final void h(e eVar, boolean z) {
        TabView tabView = eVar.d;
        this.d.addView(tabView, p());
        this.E.e(this.d.getChildCount() - 1);
        if (z) {
            tabView.setSelected(true);
        }
    }

    public final void i(View view) {
        if (!(view instanceof TabItem)) {
            throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
        }
        f((TabItem) view);
    }

    public final void j(int i) {
        if (i == -1) {
            return;
        }
        if (getWindowToken() == null || !pdc.d(this) || this.d.g()) {
            setScrollPosition(i, 0.0f, true);
            return;
        }
        int scrollX = getScrollX();
        int iL = l(i, 0.0f);
        if (scrollX != iL) {
            if (this.z == null) {
                ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(new int[0]);
                this.z = valueAnimatorOfInt;
                valueAnimatorOfInt.setInterpolator(H);
                this.z.setDuration(this.i);
                this.z.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    @Override
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.b.s(valueAnimator);
                    }
                });
            }
            this.z.setIntValues(scrollX, iL);
            this.z.start();
        }
        this.d.f(i, this.i);
    }

    public final void k() {
        int iMax;
        int iMax2;
        if (this.x == 0) {
            iMax = Math.max(0, this.v - this.e);
            iMax2 = Math.max(0, this.w - this.g);
        } else {
            iMax = 0;
            iMax2 = 0;
        }
        ViewCompat.setPaddingRelative(this.d, iMax, 0, iMax2, 0);
        if (this.x != 1) {
            this.d.setGravity(GravityCompat.START);
        } else {
            this.d.setGravity(1);
        }
        D(true);
    }

    public final int l(int i, float f2) {
        View viewJ;
        int left;
        int width;
        if (this.x != 0 || (viewJ = this.d.j(i)) == null) {
            return 0;
        }
        int width2 = viewJ.getWidth();
        if (this.s) {
            left = viewJ.getLeft();
            width = this.t;
        } else {
            int i2 = i + 1;
            View childAt = i2 < this.d.getChildCount() ? this.d.getChildAt(i2) : null;
            left = viewJ.getLeft() + ((int) ((width2 + (childAt != null ? childAt.getWidth() : 0)) * f2 * 0.5f)) + (viewJ.getWidth() / 2);
            width = getWidth() / 2;
        }
        return left - width;
    }

    public final void m(e eVar, int i) {
        eVar.k(i);
        this.b.add(i, eVar);
        int size = this.b.size();
        while (true) {
            i++;
            if (i >= size) {
                return;
            } else {
                ((e) this.b.get(i)).k(i);
            }
        }
    }

    public final void n(TabView tabView) {
        tabView.setTabPadding(this.e, this.f, this.g, this.h);
        tabView.g(this.k, this.j);
        tabView.setInputFocusTracker(this.F);
        tabView.setTextColorList(this.l);
        tabView.setBoldTextOnSelection(this.m);
        tabView.setEllipsizeEnabled(this.r);
        tabView.setMaxWidthProvider(new TabView.a() {
            @Override
            public final int getMaxWidth() {
                return this.a.getTabMaxWidth();
            }
        });
        tabView.setOnUpdateListener(new TabView.b() {
            @Override
            public final void a(TabView tabView2) {
                this.a.u(tabView2);
            }
        });
    }

    @NonNull
    public e newTab() {
        e eVar = (e) I.acquire();
        if (eVar == null) {
            eVar = new e(null);
        }
        eVar.c = this;
        eVar.d = r(eVar);
        return eVar;
    }

    @Override
    public void onMeasure(int i, int i2) {
        int iL = BaseDivViewExtensionsKt.L(44, getResources().getDisplayMetrics()) + getPaddingTop() + getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(iL, View.MeasureSpec.getSize(i2)), 1073741824);
        } else if (mode == 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(iL, 1073741824);
        }
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) != 0) {
            int iL2 = this.p;
            if (iL2 <= 0) {
                iL2 = size - BaseDivViewExtensionsKt.L(56, getResources().getDisplayMetrics());
            }
            this.n = iL2;
        }
        super.onMeasure(i, i2);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            if (this.x != 1) {
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
        }
    }

    @Override
    public void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.onOverScrolled(i, i2, z, z2);
        this.u.a(z);
    }

    @Override
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        this.u.b();
    }

    @Override
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i3 == 0 || i3 == i) {
            return;
        }
        B();
    }

    public final LinearLayout.LayoutParams p() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        C(layoutParams);
        return layoutParams;
    }

    public TabView q(Context context) {
        return new TabView(context);
    }

    public final TabView r(e eVar) {
        TabView tabViewQ = (TabView) this.G.acquire();
        if (tabViewQ == null) {
            tabViewQ = q(getContext());
            n(tabViewQ);
            t(tabViewQ);
        }
        tabViewQ.setTab(eVar);
        tabViewQ.setFocusable(true);
        tabViewQ.setMinimumWidth(getTabMinWidth());
        return tabViewQ;
    }

    public void removeAllTabs() {
        for (int size = this.b.size() - 1; size >= 0; size--) {
            w(size);
        }
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            e eVar = (e) it.next();
            it.remove();
            eVar.i();
            I.release(eVar);
        }
        this.c = null;
    }

    public void removeTab(e eVar) {
        if (eVar.c != this) {
            throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
        }
        removeTabAt(eVar.f());
    }

    public void removeTabAt(int i) {
        e eVar = this.c;
        int iF = eVar != null ? eVar.f() : 0;
        w(i);
        e eVar2 = (e) this.b.remove(i);
        if (eVar2 != null) {
            eVar2.i();
            I.release(eVar2);
        }
        int size = this.b.size();
        for (int i2 = i; i2 < size; i2++) {
            ((e) this.b.get(i2)).k(i2);
        }
        if (iF == i) {
            x(this.b.isEmpty() ? null : (e) this.b.get(Math.max(0, i - 1)));
        }
    }

    public final void s(ValueAnimator valueAnimator) {
        scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
    }

    public void selectTab(int i) {
        e tabAt;
        if (getSelectedTabPosition() == i || (tabAt = getTabAt(i)) == null) {
            return;
        }
        tabAt.j();
    }

    public void setAnimationDuration(long j) {
        this.i = j;
    }

    public void setAnimationType(AnimationType animationType) {
        this.d.r(animationType);
    }

    public void setFocusTracker(a15 a15Var) {
        this.F = a15Var;
    }

    public void setOnTabSelectedListener(b bVar) {
        this.y = bVar;
    }

    public void setScrollPosition(int i, float f2, boolean z) {
        A(i, f2, z, true);
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i) {
        this.d.y(i);
    }

    public void setTabBackgroundColor(@ColorInt int i) {
        this.d.t(i);
    }

    public void setTabDelimiter(Bitmap bitmap, int i, int i2) {
        this.E.g(bitmap, i, i2);
    }

    public void setTabIndicatorCornersRadii(@NonNull float[] fArr) {
        this.d.u(fArr);
    }

    public void setTabIndicatorHeight(int i) {
        this.d.v(i);
    }

    public void setTabItemSpacing(int i) {
        this.d.w(i);
    }

    public void setTabMode(int i) {
        if (i != this.x) {
            this.x = i;
            k();
        }
    }

    public void setTabPaddings(int i, int i2, int i3, int i4) {
        this.e = i;
        this.f = i2;
        this.g = i3;
        this.h = i4;
        requestLayout();
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.l != colorStateList) {
            this.l = colorStateList;
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                TabView tabViewG = ((e) this.b.get(i)).g();
                if (tabViewG != null) {
                    tabViewG.setTextColorList(this.l);
                }
            }
        }
    }

    public void setTabsEnabled(boolean z) {
        for (int i = 0; i < this.b.size(); i++) {
            ((e) this.b.get(i)).d.setEnabled(z);
        }
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener;
        ViewPager viewPager2 = this.A;
        if (viewPager2 != null && (tabLayoutOnPageChangeListener = this.D) != null) {
            viewPager2.removeOnPageChangeListener(tabLayoutOnPageChangeListener);
        }
        if (viewPager == null) {
            this.A = null;
            setOnTabSelectedListener(null);
            z(null, true);
            return;
        }
        PagerAdapter adapter = viewPager.getAdapter();
        if (adapter == null) {
            throw new IllegalArgumentException("ViewPager does not have a PagerAdapter set");
        }
        this.A = viewPager;
        if (this.D == null) {
            this.D = new TabLayoutOnPageChangeListener(this);
        }
        this.D.a();
        viewPager.addOnPageChangeListener(this.D);
        setOnTabSelectedListener(new f(viewPager));
        z(adapter, true);
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    public void t(TextView textView) {
    }

    public void u(TextView textView) {
    }

    public final void v() {
        int currentItem;
        removeAllTabs();
        PagerAdapter pagerAdapter = this.B;
        if (pagerAdapter == null) {
            removeAllTabs();
            return;
        }
        int count = pagerAdapter.getCount();
        for (int i = 0; i < count; i++) {
            addTab(newTab().l(this.B.getPageTitle(i)), false);
        }
        ViewPager viewPager = this.A;
        if (viewPager == null || count <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
            return;
        }
        x(getTabAt(currentItem));
    }

    public final void w(int i) {
        TabView tabView = (TabView) this.d.getChildAt(i);
        int iK = this.d.k(i);
        this.d.removeViewAt(iK);
        this.E.f(iK);
        if (tabView != null) {
            tabView.f();
            this.G.release(tabView);
        }
        requestLayout();
    }

    public void x(e eVar) {
        y(eVar, true);
    }

    public void y(e eVar, boolean z) {
        b bVar;
        b bVar2;
        e eVar2 = this.c;
        if (eVar2 == eVar) {
            if (eVar2 != null) {
                b bVar3 = this.y;
                if (bVar3 != null) {
                    bVar3.a(eVar2);
                }
                j(eVar.f());
                return;
            }
            return;
        }
        if (z) {
            int iF = eVar != null ? eVar.f() : -1;
            if (iF != -1) {
                setSelectedTabView(iF);
            }
            e eVar3 = this.c;
            if ((eVar3 == null || eVar3.f() == -1) && iF != -1) {
                setScrollPosition(iF, 0.0f, true);
            } else {
                j(iF);
            }
        }
        e eVar4 = this.c;
        if (eVar4 != null && (bVar2 = this.y) != null) {
            bVar2.b(eVar4);
        }
        this.c = eVar;
        if (eVar == null || (bVar = this.y) == null) {
            return;
        }
        bVar.c(eVar);
    }

    public final void z(PagerAdapter pagerAdapter, boolean z) {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.B;
        if (pagerAdapter2 != null && (dataSetObserver = this.C) != null) {
            pagerAdapter2.unregisterDataSetObserver(dataSetObserver);
        }
        this.B = pagerAdapter;
        if (z && pagerAdapter != null) {
            if (this.C == null) {
                this.C = new d(this, null);
            }
            pagerAdapter.registerDataSetObserver(this.C);
        }
        v();
    }

    public BaseIndicatorTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void addTab(@NonNull e eVar, int i) {
        addTab(eVar, i, this.b.isEmpty());
    }

    @Override
    public void addView(View view, int i) {
        i(view);
    }

    @Override
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @SuppressLint({"PrivateResource"})
    public BaseIndicatorTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new ArrayList();
        this.i = 300L;
        this.k = bu2.b;
        this.n = Integer.MAX_VALUE;
        this.u = new bz6(this);
        this.G = new Pools.SimplePool(12);
        setHorizontalScrollBarEnabled(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TabLayout, i, R.style.Div_Tabs_IndicatorTabLayout);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.BaseIndicatorTabLayout, 0, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R.styleable.BaseIndicatorTabLayout_tabIndicatorPaddingTop, 0);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R.styleable.BaseIndicatorTabLayout_tabIndicatorPaddingBottom, 0);
        this.m = typedArrayObtainStyledAttributes2.getBoolean(R.styleable.BaseIndicatorTabLayout_tabTextBoldOnSelection, false);
        this.w = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R.styleable.BaseIndicatorTabLayout_tabContentEnd, 0);
        this.r = typedArrayObtainStyledAttributes2.getBoolean(R.styleable.BaseIndicatorTabLayout_tabEllipsizeEnabled, true);
        this.s = typedArrayObtainStyledAttributes2.getBoolean(R.styleable.BaseIndicatorTabLayout_tabScrollPaddingEnabled, false);
        this.t = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R.styleable.BaseIndicatorTabLayout_tabScrollPadding, 0);
        typedArrayObtainStyledAttributes2.recycle();
        c cVar = new c(context, dimensionPixelSize, dimensionPixelSize2, null);
        this.d = cVar;
        super.addView(cVar, 0, new FrameLayout.LayoutParams(-2, -1));
        cVar.v(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabIndicatorHeight, 0));
        cVar.y(typedArrayObtainStyledAttributes.getColor(R.styleable.TabLayout_tabIndicatorColor, 0));
        cVar.t(typedArrayObtainStyledAttributes.getColor(R.styleable.TabLayout_tabBackground, 0));
        this.E = new g(getContext(), cVar);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
        this.h = dimensionPixelSize3;
        this.g = dimensionPixelSize3;
        this.f = dimensionPixelSize3;
        this.e = dimensionPixelSize3;
        this.e = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingStart, dimensionPixelSize3);
        this.f = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingTop, this.f);
        this.g = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingEnd, this.g);
        this.h = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingBottom, this.h);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.TabLayout_tabTextAppearance, R.style.Div_Tabs_IndicatorTabLayout_Text);
        this.j = resourceId;
        TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(resourceId, androidx.appcompat.R.styleable.TextAppearance);
        try {
            this.l = typedArrayObtainStyledAttributes3.getColorStateList(androidx.appcompat.R.styleable.TextAppearance_android_textColor);
            typedArrayObtainStyledAttributes3.recycle();
            int i2 = R.styleable.TabLayout_tabTextColor;
            if (typedArrayObtainStyledAttributes.hasValue(i2)) {
                this.l = typedArrayObtainStyledAttributes.getColorStateList(i2);
            }
            int i3 = R.styleable.TabLayout_tabSelectedTextColor;
            if (typedArrayObtainStyledAttributes.hasValue(i3)) {
                this.l = o(this.l.getDefaultColor(), typedArrayObtainStyledAttributes.getColor(i3, 0));
            }
            this.o = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabMinWidth, -1);
            this.p = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabMaxWidth, -1);
            this.v = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabContentStart, 0);
            this.x = typedArrayObtainStyledAttributes.getInt(R.styleable.TabLayout_tabMode, 1);
            typedArrayObtainStyledAttributes.recycle();
            this.q = getResources().getDimensionPixelSize(R.dimen.tab_scrollable_min_width);
            k();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes3.recycle();
            throw th;
        }
    }

    public void addTab(@NonNull e eVar, boolean z) {
        if (eVar.c == this) {
            h(eVar, z);
            m(eVar, this.b.size());
            if (z) {
                eVar.j();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    @Override
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        i(view);
    }

    @Override
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        i(view);
    }

    public void setTabTextColors(int i, int i2) {
        setTabTextColors(o(i, i2));
    }

    public void addTab(@NonNull e eVar, int i, boolean z) {
        if (eVar.c == this) {
            g(eVar, i, z);
            m(eVar, i);
            if (z) {
                eVar.j();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }
}
