package com.transsion.widgetslib.view.swipmenu;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleObserver;
import androidx.p004lifecycle.OnLifecycleEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.transsion.widgetslib.R;
import defpackage.av4;
import defpackage.bq5;
import defpackage.elb;
import defpackage.hv8;
import defpackage.k57;
import defpackage.olb;
import defpackage.p7a;
import defpackage.s7a;
import defpackage.u7a;
import defpackage.ubc;
import defpackage.ut7;
import defpackage.vj5;
import defpackage.vt7;
import defpackage.wr4;
import java.lang.ref.WeakReference;

public class OSSwipeMenuLayout extends ViewGroup implements LifecycleObserver {
    public static final int DEFAULT_ITEM_SCROLLER_DURATION = 700;
    public static final int DEFAULT_SCROLLER_DURATION = 350;
    public static boolean EXECUTEANIMATION = false;
    public static final int OUTLINE_CORNER_SIZE = 8;
    public static OSSwipeMenuLayout k0;
    public static boolean l0;
    public static int m0;
    public vj5 A;
    public hv8 B;
    public wr4 C;
    public vt7 D;
    public int E;
    public int F;
    public int G;
    public int H;
    public AnimatorSet I;
    public boolean J;
    public boolean K;
    public int L;
    public int M;
    public boolean N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public float V;
    public boolean W;
    public int a0;
    public int b;
    public int b0;
    public int c;
    public int c0;
    public int d;
    public Rect d0;
    public int e;
    public Rect e0;
    public int f;
    public float[] f0;
    public View g;
    public SwipeMenuExploreByTouchHelper g0;
    public PointF h;
    public int h0;
    public boolean i;
    public int i0;
    public PointF j;
    public int j0;
    public PointF k;
    public boolean l;
    public Paint m;
    public boolean mIsExecuteAnimation;
    public Paint n;
    public Paint o;
    public Paint p;
    public VelocityTracker q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public p7a w;
    public int x;
    public int y;
    public Context z;

    public class a extends ViewOutlineProvider {
        public final int a;

        public a(int i) {
            this.a = i;
        }

        @Override
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.a);
        }
    }

    public class b extends ViewOutlineProvider {
        public final int a;

        public b(int i) {
            this.a = i;
        }

        @Override
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.a);
        }
    }

    public class c extends AnimatorListenerAdapter {
        public c(g gVar, h hVar) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            OSSwipeMenuLayout.EXECUTEANIMATION = false;
            OSSwipeMenuLayout oSSwipeMenuLayout = OSSwipeMenuLayout.this;
            oSSwipeMenuLayout.mIsExecuteAnimation = false;
            oSSwipeMenuLayout.setVisibility(8);
        }
    }

    public static class d implements ValueAnimator.AnimatorUpdateListener {
        public WeakReference b;
        public int c;
        public int d;

        public d(OSSwipeMenuLayout oSSwipeMenuLayout, int i) {
            this.b = new WeakReference(oSSwipeMenuLayout);
            this.c = i;
            this.d = oSSwipeMenuLayout.getScrollX();
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WeakReference weakReference = this.b;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            ((OSSwipeMenuLayout) this.b.get()).scrollTo(this.d + ((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    public static class e implements ValueAnimator.AnimatorUpdateListener {
        public WeakReference b;
        public int c;
        public int d;

        public e(OSSwipeMenuLayout oSSwipeMenuLayout, h hVar) {
            this.b = new WeakReference(oSSwipeMenuLayout);
            this.c = ((ViewGroup.MarginLayoutParams) oSSwipeMenuLayout.getLayoutParams()).topMargin;
            this.d = ((ViewGroup.MarginLayoutParams) oSSwipeMenuLayout.getLayoutParams()).bottomMargin;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WeakReference weakReference = this.b;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            OSSwipeMenuLayout oSSwipeMenuLayout = (OSSwipeMenuLayout) this.b.get();
            float animatedFraction = valueAnimator.getAnimatedFraction();
            if (this.c != 0 || this.d != 0) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) oSSwipeMenuLayout.getLayoutParams();
                float f = 1.0f - animatedFraction;
                marginLayoutParams.setMargins(marginLayoutParams.leftMargin, (int) (this.c * f), marginLayoutParams.rightMargin, (int) (this.d * f));
            }
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ViewGroup.LayoutParams layoutParams = oSSwipeMenuLayout.getLayoutParams();
            layoutParams.height = (int) fFloatValue;
            oSSwipeMenuLayout.setLayoutParams(layoutParams);
        }
    }

    public static class f implements ValueAnimator.AnimatorUpdateListener {
        public WeakReference b;

        public f(OSSwipeMenuLayout oSSwipeMenuLayout) {
            this.b = new WeakReference(oSSwipeMenuLayout);
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WeakReference weakReference = this.b;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            OSSwipeMenuLayout oSSwipeMenuLayout = (OSSwipeMenuLayout) this.b.get();
            float animatedFraction = valueAnimator.getAnimatedFraction();
            int i = (int) ((1.0f - animatedFraction) * 255.0f);
            oSSwipeMenuLayout.T = i;
            oSSwipeMenuLayout.o.setAlpha(i);
            oSSwipeMenuLayout.V = 1.0f - (animatedFraction * 0.4f);
        }
    }

    public interface g {
    }

    public interface h extends g {
    }

    public interface i {
    }

    public OSSwipeMenuLayout(Context context) {
        this(context, null);
    }

    public static void closeMenu() {
        OSSwipeMenuLayout oSSwipeMenuLayout = k0;
        if (oSSwipeMenuLayout != null) {
            oSSwipeMenuLayout.d();
            k0.smoothCloseMenu();
        }
    }

    public static OSSwipeMenuLayout getViewCache() {
        return k0;
    }

    private void o(Context context, AttributeSet attributeSet, int i2) {
        this.z = context;
        this.h0 = olb.H(context);
        this.x = olb.h(this.z, this.x);
        this.y = olb.h(this.z, this.y);
        this.b = ViewConfiguration.get(this.z).getScaledTouchSlop();
        float f2 = getResources().getDisplayMetrics().density;
        this.b0 = (int) (500.0f * f2);
        this.c0 = (int) (f2 * 250.0f);
        this.r = true;
        this.s = true;
        this.N = olb.a[0].equalsIgnoreCase(olb.getOsType());
        this.a0 = olb.h(context, 8);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.SwipeMenuLayout, i2, 0);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            if (index == R.styleable.SwipeMenuLayout_SwipeMenuLayoutSwipeEnable) {
                this.r = typedArrayObtainStyledAttributes.getBoolean(index, true);
            } else if (index == R.styleable.SwipeMenuLayout_SwipeMenuLayoutLeftSwipe) {
                this.s = typedArrayObtainStyledAttributes.getBoolean(index, true);
            } else if (index == R.styleable.SwipeMenuLayout_SwipeMenuLayoutIsHios) {
                this.N = typedArrayObtainStyledAttributes.getBoolean(index, this.N);
            } else if (index == R.styleable.SwipeMenuLayout_SwipeMenuLayoutAutoClipCorner) {
                this.W = typedArrayObtainStyledAttributes.getBoolean(index, true);
            } else if (index == R.styleable.SwipeMenuLayout_SwipeMenuLayoutCornerSize) {
                this.a0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.a0);
            }
        }
        this.s = !olb.l0();
        typedArrayObtainStyledAttributes.recycle();
        this.w = new p7a(this.z, this.N);
        s();
        this.F = ViewConfiguration.get(getContext()).getScaledMaximumFlingVelocity();
        this.D = new vt7(getContext());
        setWillNotDraw(false);
        this.m = new Paint();
        this.n = new Paint();
        this.m.setAntiAlias(true);
        this.n.setAntiAlias(true);
        this.m.setColor(SupportMenu.CATEGORY_MASK);
        this.o = new Paint();
        this.p = new Paint();
        int i4 = context.getResources().getConfiguration().uiMode & 48;
        if (m0 != i4) {
            m0 = i4;
            u7a.c(getContext());
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(new int[]{R.attr.os_platform_basic_color});
        this.S = typedArrayObtainStyledAttributes2.getColor(0, context.getColor(R.color.os_platform_basic_color_hios));
        typedArrayObtainStyledAttributes2.recycle();
        this.O = ContextCompat.getColor(this.z, R.color.os_altitude_secondary_color);
        Context context2 = this.z;
        int i5 = R.color.os_red_basic_color;
        this.P = ContextCompat.getColor(context2, i5);
        this.Q = ContextCompat.getColor(this.z, i5);
        this.R = ContextCompat.getColor(this.z, R.color.os_gray_solid_tertiary_color);
        this.d0 = new Rect();
        this.e0 = new Rect();
        if (this.N) {
            this.f0 = new float[]{0.0f, 0.0f, 0.0f, 0.0f, 255.0f, 0.0f, 0.0f, 0.0f, 0.0f, 255.0f, 0.0f, 0.0f, 0.0f, 0.0f, 255.0f, 0.0f, 0.0f, 0.0f, 255.0f / Color.alpha(context.getColor(R.color.os_fill_icon_toggle_color)), 0.0f};
        }
        this.g0 = new SwipeMenuExploreByTouchHelper(this);
    }

    public static void release() {
        u7a.b();
        if (k0 != null) {
            k0 = null;
        }
    }

    @Override
    public void computeScroll() {
        if (this.D.b()) {
            p();
        }
    }

    public final void d() {
        this.D.a();
    }

    public void decorateContentRoundCorner(int i2) {
        bq5.b("decorateContentRoundCorner size = " + i2);
        b bVar = new b(i2);
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            childAt.setOutlineProvider(bVar);
            childAt.setClipToOutline(true);
        }
    }

    public void decorateOutlineRoundCorner(int i2) {
        bq5.b("decorateOutlineRoundCorner size = " + i2);
        setOutlineProvider(new a(i2));
        setClipToOutline(true);
    }

    @Override
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.g0.dispatchHoverEvent(motionEvent) | super.dispatchHoverEvent(motionEvent);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z = true;
        boolean z2 = !this.t && this.w.getMenuItems().isEmpty();
        if (!this.r || z2 || EXECUTEANIMATION) {
            l0 = false;
            f();
            return super.dispatchTouchEvent(motionEvent);
        }
        e(motionEvent);
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 || action == 3) {
                if (!this.D.d()) {
                    d();
                }
                if (motionEvent.getAction() == 1 && this.C.j(getScrollX()) && Math.abs(motionEvent.getX() - this.k.x) < this.b) {
                    int iM = m(motionEvent);
                    this.J = iM >= 0 && iM < this.w.getMenuItems().size();
                }
                if (Math.abs(motionEvent.getRawX() - this.j.x) > this.b) {
                    this.l = true;
                }
                if (this.v && this.l) {
                    this.q.computeCurrentVelocity(1000, this.F);
                    int xVelocity = (int) this.q.getXVelocity(this.c);
                    if (this.s ? xVelocity > 0 : xVelocity < 0) {
                        z = false;
                    }
                    boolean zU = u(xVelocity);
                    int iN = n(motionEvent, xVelocity);
                    int scrollX = getScrollX();
                    int i2 = this.H;
                    if (((scrollX >= i2 && (!this.s ? z && zU : !z)) || (scrollX <= this.G && (!z || !zU))) && !this.u) {
                        k0 = this;
                        this.D.g(scrollX, this.G, i2);
                        invalidate();
                        l();
                    } else if (this.u) {
                        r(iN, xVelocity);
                    } else if (xVelocity < 0) {
                        if (this.s) {
                            if (zU) {
                                w(xVelocity);
                            } else {
                                v(iN);
                            }
                        } else if (zU) {
                            smoothCloseMenuFling(xVelocity);
                        } else if ((-getScrollX()) > this.f) {
                            smoothOpenMenu();
                        } else {
                            smoothCloseMenu(iN);
                        }
                    } else if (xVelocity <= 0) {
                        j(iN);
                    } else if (this.s) {
                        if (zU) {
                            smoothCloseMenuFling(xVelocity);
                        } else if (getScrollX() > this.f) {
                            smoothOpenMenu();
                        } else {
                            smoothCloseMenu(iN);
                        }
                    } else if (zU) {
                        w(xVelocity);
                    } else {
                        v(iN);
                    }
                } else if (this.s) {
                    if (getScrollX() > this.b) {
                        if (motionEvent.getX() < getWidth() - getScrollX()) {
                            smoothCloseMenu();
                        } else if (!this.J) {
                            j(this.E);
                        }
                    } else if ((-getScrollX()) > this.b) {
                        this.D.g(getScrollX(), this.G, this.H);
                        invalidate();
                    } else {
                        smoothCloseMenu();
                    }
                } else if ((-getScrollX()) > this.b) {
                    if (motionEvent.getX() > (-getScrollX())) {
                        smoothCloseMenu();
                    } else if (!this.J) {
                        j(this.E);
                    }
                } else if (getScrollX() > this.b) {
                    this.D.g(getScrollX(), this.G, this.H);
                    invalidate();
                } else {
                    smoothCloseMenu();
                }
                q();
                l0 = false;
                this.v = false;
                this.J = false;
            }
        } else {
            if (l0) {
                return false;
            }
            l0 = true;
            this.l = false;
            this.i = true;
            if (!this.D.d()) {
                d();
            }
            t();
            f();
            this.h.set(motionEvent.getRawX(), motionEvent.getRawY());
            this.j.set(motionEvent.getRawX(), motionEvent.getRawY());
            this.k.set(motionEvent.getX(), motionEvent.getY());
            this.c = motionEvent.getPointerId(0);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void doDeleteAnimation(RecyclerView.ViewHolder viewHolder, g gVar) {
        doDeleteAnimationCore(viewHolder, gVar, null);
    }

    public void doDeleteAnimationCore(RecyclerView.ViewHolder viewHolder, g gVar, h hVar) {
        if (viewHolder != null) {
            viewHolder.setIsRecyclable(false);
        }
        wr4 wr4Var = this.C;
        if (wr4Var == null || !wr4Var.j(getScrollX())) {
            return;
        }
        AnimatorSet animatorSet = this.I;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.I.cancel();
        }
        int measuredWidth = this.s ? getMeasuredWidth() - (this.w.getMenuTotalWidth() / this.w.getMenuItems().size()) : -(getMeasuredWidth() - (this.w.getMenuTotalWidth() / this.w.getMenuItems().size()));
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, measuredWidth);
        valueAnimatorOfInt.setInterpolator(new k57());
        valueAnimatorOfInt.addUpdateListener(new d(this, measuredWidth));
        valueAnimatorOfInt.setDuration(300L);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(getHeight(), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(new e(this, hVar));
        valueAnimatorOfFloat.setInterpolator(new k57());
        valueAnimatorOfFloat.setDuration(300L);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.I = animatorSet2;
        animatorSet2.addListener(new c(gVar, hVar));
        this.I.playTogether(valueAnimatorOfInt, valueAnimatorOfFloat);
        if (this.N) {
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat2.addUpdateListener(new f(this));
            valueAnimatorOfFloat2.setDuration(100L);
            this.I.playTogether(valueAnimatorOfFloat2);
        }
        this.I.start();
        EXECUTEANIMATION = true;
        this.mIsExecuteAnimation = true;
        this.r = false;
        k0 = null;
    }

    public final void e(MotionEvent motionEvent) {
        if (this.q == null) {
            this.q = VelocityTracker.obtain();
        }
        this.q.addMovement(motionEvent);
    }

    public final void f() {
        OSSwipeMenuLayout oSSwipeMenuLayout = k0;
        if (oSSwipeMenuLayout == null || oSSwipeMenuLayout == this || !oSSwipeMenuLayout.r) {
            return;
        }
        oSSwipeMenuLayout.K = true;
        oSSwipeMenuLayout.d();
        k0.smoothCloseMenu();
    }

    public int g() {
        if (getChildCount() > 0) {
            return this.i0;
        }
        return 0;
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public i getOnMenuItemClickListener() {
        return null;
    }

    public wr4 getSwipeCurrentHorizontal() {
        return this.C;
    }

    public int h() {
        return 0;
    }

    public void i(int i2) {
        this.j0 = (int) (this.j0 + (ut7.a(i2, this.L, getMeasuredWidth()) * this.L));
        super.scrollTo(elb.a(getScrollX(), this.G, this.H) + this.j0, 0);
    }

    public boolean isCompleteOpen() {
        return isLeftCompleteOpen() || isRightMenuOpen();
    }

    public boolean isLeftCompleteOpen() {
        vj5 vj5Var = this.A;
        return (vj5Var == null || vj5Var.i(getScrollX())) ? false : true;
    }

    public boolean isLeftMenuOpen() {
        vj5 vj5Var = this.A;
        return vj5Var != null && vj5Var.j(getScrollX());
    }

    public boolean isLeftMenuOpenNotEqual() {
        vj5 vj5Var = this.A;
        return vj5Var != null && vj5Var.k(getScrollX());
    }

    public boolean isMenuOpen() {
        return this.s ? isLeftMenuOpen() : isRightMenuOpen();
    }

    public boolean isMenuOpenNotEqual() {
        return isLeftMenuOpenNotEqual() || isRightMenuOpenNotEqual();
    }

    public boolean isRightCompleteOpen() {
        hv8 hv8Var = this.B;
        return (hv8Var == null || hv8Var.i(getScrollX())) ? false : true;
    }

    public boolean isRightMenuOpen() {
        hv8 hv8Var = this.B;
        return hv8Var != null && hv8Var.j(getScrollX());
    }

    public boolean isRightMenuOpenNotEqual() {
        hv8 hv8Var = this.B;
        return hv8Var != null && hv8Var.k(getScrollX());
    }

    public boolean isRtlSwipe() {
        return this.s;
    }

    public boolean isSwipeEnable() {
        return this.r;
    }

    public final void j(int i2) {
        if (Math.abs(getScrollX()) > this.f) {
            v(i2);
        } else {
            smoothCloseMenu(i2);
        }
    }

    public float k(float f2) {
        return (float) Math.sin((float) (((double) (f2 - 0.5f)) * 0.4712389167638204d));
    }

    public final void l() {
        ViewCompat.setAccessibilityDelegate(this, this.g0);
        this.g0.a();
    }

    public int m(MotionEvent motionEvent) {
        return this.C.h(getMeasuredWidth(), getMeasuredHeight(), motionEvent, this.N);
    }

    public final int n(MotionEvent motionEvent, int i2) {
        int x = (int) (motionEvent.getX() - getScrollX());
        int menuWidth = this.t ? this.h0 * 2 : this.C.getMenuWidth();
        int i3 = menuWidth / 2;
        float f2 = menuWidth;
        float f3 = i3;
        return Math.min(i2 > 0 ? Math.round(Math.abs((f3 + (k(Math.min(1.0f, (Math.abs(x) * 1.0f) / f2)) * f3)) / i2) * 1000.0f) * 4 : (int) (((Math.abs(x) / f2) + 1.0f) * 100.0f), this.t ? 700 : 350);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy() {
        resetAnimation();
        release();
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        p7a p7aVar = this.w;
        if (p7aVar == null || p7aVar.getMenuItems().size() <= 0) {
            return;
        }
        canvas.save();
        int scrollX = getScrollX();
        if (!this.s ? scrollX < 0 : scrollX > 0) {
            if (!this.mIsExecuteAnimation) {
                int size = this.w.getMenuItems().size();
                Math.abs(scrollX / size);
                if (size > 0) {
                    if (this.s) {
                        getMeasuredWidth();
                    }
                    ubc.a(this.w.getMenuItems().get(0));
                    throw null;
                }
            }
        }
        if (this.mIsExecuteAnimation) {
            int size2 = this.w.getMenuItems().size();
            this.w.getMenuTotalWidth();
            this.w.getMenuItems().size();
            if (size2 > 0) {
                if (this.s) {
                    getMeasuredWidth();
                }
                ubc.a(this.w.getMenuItems().get(0));
                throw null;
            }
        }
        canvas.restore();
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        if (this.N && this.W) {
            decorateOutlineRoundCorner(this.a0);
            decorateContentRoundCorner(this.a0);
        }
    }

    @Override
    public void onFocusChanged(boolean z, int i2, Rect rect) {
        super.onFocusChanged(z, i2, rect);
        this.g0.onFocusChanged(z, i2, rect);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.r) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 2) {
                    int rawX = (int) (motionEvent.getRawX() - this.j.x);
                    int rawY = (int) (motionEvent.getRawY() - this.j.y);
                    if (Math.abs(motionEvent.getRawX() - this.j.x) > this.b && Math.abs(rawX) > Math.abs(rawY)) {
                        this.h.set(motionEvent.getRawX(), motionEvent.getRawY());
                        getParent().requestDisallowInterceptTouchEvent(true);
                        return true;
                    }
                }
            } else if (this.s) {
                if (getScrollX() > this.b && motionEvent.getX() < getWidth() - getScrollX()) {
                    return true;
                }
            } else if ((-getScrollX()) > this.b && motionEvent.getX() > (-getScrollX())) {
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8 && i6 == 0) {
                childAt.layout(paddingLeft, getPaddingTop(), childAt.getMeasuredWidth() + paddingLeft, getPaddingTop() + childAt.getMeasuredHeight());
                paddingLeft += childAt.getMeasuredWidth();
            }
        }
        z();
    }

    @Override
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        setClickable(true);
        int measuredWidth = 0;
        this.d = 0;
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            childAt.setClickable(true);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i2, i3);
                int iMax = Math.max(this.d, childAt.getMeasuredHeight());
                this.d = iMax;
                if (this.mIsExecuteAnimation) {
                    iMax = Math.max(iMax, this.e);
                }
                this.e = iMax;
                this.g = childAt;
                measuredWidth = childAt.getMeasuredWidth();
            }
        }
        if (this.mIsExecuteAnimation) {
            setMeasuredDimension(measuredWidth, getLayoutParams().height);
        } else {
            setMeasuredDimension(getPaddingLeft() + getPaddingRight() + measuredWidth, this.d + getPaddingTop() + getPaddingBottom());
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.r || EXECUTEANIMATION) {
            return super.onTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() == 2) {
            if (motionEvent.getPointerId(motionEvent.getActionIndex()) != this.M) {
                this.M = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.h.set(motionEvent.getRawX(), motionEvent.getRawY());
            }
            this.v = true;
            float rawX = this.h.x - motionEvent.getRawX();
            if (Math.abs(rawX) > 10.0f || Math.abs(getScrollX()) > 10) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (Math.abs(rawX) > this.b) {
                this.i = false;
            }
            scrollBy((int) rawX, 0);
            this.h.set(motionEvent.getRawX(), motionEvent.getRawY());
        }
        return true;
    }

    public final void p() {
        this.L = this.D.getCurrPos() - getScrollX();
        scrollTo(this.D.getCurrPos(), 0);
        invalidate();
    }

    @Override
    public boolean performLongClick() {
        if (Math.abs(getScrollX()) > this.b) {
            return false;
        }
        return super.performLongClick();
    }

    public final void q() {
        VelocityTracker velocityTracker = this.q;
        if (velocityTracker != null) {
            velocityTracker.clear();
            this.q.recycle();
            this.q = null;
        }
    }

    public final void r(int i2, int i3) {
        boolean z = !this.s ? i3 > -10 : i3 < 10;
        boolean z2 = Math.abs(getScrollX()) > getResources().getDimensionPixelSize(R.dimen.os_flash_call_distance_limit);
        Log.i("removeOrRestoreItem", "velocityX:" + i3 + " ;getScrollX:" + getScrollX() + " duration:" + i2);
        if (z2 && z) {
            smoothRemoveItem(i2, i3);
        } else {
            smoothRestoreItem(i2);
        }
    }

    public void resetAnimation() {
        AnimatorSet animatorSet = this.I;
        if (animatorSet == null || !animatorSet.isRunning()) {
            return;
        }
        this.I.cancel();
    }

    public void reuseItem(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder == null) {
            return;
        }
        setVisibility(0);
        viewHolder.setIsRecyclable(true);
        viewHolder.itemView.scrollTo(0, 0);
        this.r = true;
        this.p.setAlpha(255);
        this.o.setAlpha(255);
        this.U = 255;
        this.T = 255;
        this.V = 1.0f;
    }

    public final void s() {
        if (this.s && this.A == null) {
            vj5 vj5Var = new vj5(this.w);
            this.A = vj5Var;
            vj5Var.setScreenWidth(this.h0);
            this.C = this.A;
            bq5.p("OSSwipeMenuLayout", "resetCurrentSwipeController: mSwipeLeftHorizontal");
        }
        if (this.s || this.B != null) {
            return;
        }
        hv8 hv8Var = new hv8(this.w);
        this.B = hv8Var;
        hv8Var.setScreenWidth(this.h0);
        this.C = this.B;
        bq5.p("OSSwipeMenuLayout", "resetCurrentSwipeController: mSwipeRightHorizontal");
    }

    @Override
    public void scrollBy(int i2, int i3) {
        this.L = i2;
        scrollTo(getScrollX() + i2, i3);
    }

    @Override
    public void scrollTo(int i2, int i3) {
        if (this.t || !this.w.getMenuItems().isEmpty()) {
            if (this.mIsExecuteAnimation) {
                super.scrollTo(i2, i3);
                return;
            }
            if (this.K) {
                super.scrollTo(i2, i3);
                return;
            }
            int scrollX = getScrollX() + this.L;
            boolean z = this.s;
            boolean z2 = true;
            boolean z3 = !z ? scrollX >= this.G : scrollX <= this.H;
            boolean z4 = !z ? scrollX <= this.H : scrollX >= this.G;
            if (this.t) {
                z2 = z ? false : false;
                this.u = z2;
            }
            if (this.u || this.D.e()) {
                super.scrollTo(i2, i3);
            } else if (z4) {
                i(scrollX - (this.s ? this.G : this.H));
            } else if (z3) {
                i(scrollX - (!this.s ? this.G : this.H));
            } else {
                super.scrollTo(i2, i3);
            }
            this.L = 0;
        }
    }

    public OSSwipeMenuLayout setFlashCall(boolean z) {
        this.t = z;
        return this;
    }

    public void setFlashCallCallBack(av4 av4Var) {
    }

    public void setHandHoldAnim(LottieAnimationView lottieAnimationView, float f2) {
        float fAbs;
        if (lottieAnimationView == null) {
            Log.i("OSSwipeMenuLayout", "setHandHoldAnim animationView is null");
            return;
        }
        float dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.os_flash_call_distance_limit);
        float dimensionPixelSize2 = this.z.getResources().getDimensionPixelSize(R.dimen.os_flash_call_lottie_text_padding_start);
        float fAbs2 = Math.abs(f2) / dimensionPixelSize;
        float f3 = 0.7f;
        float f4 = (this.h0 * 0.7f) - dimensionPixelSize;
        float fAbs3 = (Math.abs(f2) + f4) / this.h0;
        if (fAbs3 > 1.0f) {
            f3 = 1.0f;
        } else if (fAbs3 >= 0.7f) {
            f3 = fAbs3;
        }
        float fAbs4 = 0.0f;
        if (fAbs2 < 0.0f) {
            fAbs2 = 0.0f;
        } else if (fAbs2 > 1.0f) {
            fAbs2 = 1.0f;
        }
        Matrix matrix = new Matrix();
        PointF pointF = olb.l0() ? new PointF(this.h0 + (dimensionPixelSize2 * 2.0f), lottieAnimationView.getHeight() / 2) : new PointF(dimensionPixelSize2 * (-2.0f), lottieAnimationView.getHeight() / 2);
        matrix.postScale(f3, f3, pointF.x, pointF.y);
        lottieAnimationView.setAnimationMatrix(matrix);
        lottieAnimationView.setAlpha(fAbs2);
        if (olb.l0()) {
            fAbs4 = (this.h0 - Math.abs(f2)) - ((f4 + dimensionPixelSize) * (1.0f - f3));
            fAbs = this.h0;
        } else {
            fAbs = Math.abs(f2) + ((f4 + dimensionPixelSize) * (1.0f - f3));
        }
        lottieAnimationView.setClipBounds(new Rect((int) fAbs4, 0, (int) fAbs, getHeight()));
    }

    public void setMenuCreator(s7a s7aVar) {
        this.w.getMenuItems().clear();
        throw null;
    }

    public void setOnMenuItemClickListener(i iVar) {
    }

    public OSSwipeMenuLayout setRtl(boolean z) {
        this.s = !z;
        s();
        return this;
    }

    public void setSwipeEnable(boolean z) {
        this.r = z;
    }

    public void smoothCloseLeftMenu() {
        vj5 vj5Var = this.A;
        if (vj5Var != null) {
            this.C = vj5Var;
            smoothCloseMenu();
        }
    }

    public void smoothCloseMenu() {
        smoothCloseMenu(this.E);
    }

    public void smoothCloseMenuFling(int i2) {
        View view = this.g;
        if (view != null) {
            view.setLongClickable(true);
        }
        wr4 wr4Var = this.C;
        if (wr4Var != null) {
            wr4Var.b(this.D, getScrollX(), -i2, this.G, this.H, Math.round(getWidth() * 0.5f * 0.3f));
            if (!this.s ? this.D.getFinalPos() < this.H : this.D.getFinalPos() > this.G) {
                smoothCloseMenu();
            }
            invalidate();
        }
        k0 = null;
        y();
    }

    public void smoothCloseRightMenu() {
        hv8 hv8Var = this.B;
        if (hv8Var != null) {
            this.C = hv8Var;
            smoothCloseMenu();
        }
    }

    public void smoothOpenLeftMenu() {
        smoothOpenLeftMenu(this.E);
    }

    public void smoothOpenMenu() {
        v(this.E);
    }

    public void smoothOpenRightMenu() {
        smoothOpenRightMenu(this.E);
    }

    public void smoothRemoveItem(int i2, int i3) {
        View view = this.g;
        if (view != null) {
            view.setLongClickable(false);
        }
        if (this.C != null) {
            if (this.D == null) {
                this.D = new vt7(getContext());
            }
            this.C.e(this.D, i3, getScrollX(), i2);
            invalidate();
        }
        k0 = null;
    }

    public void smoothRestoreItem(int i2) {
        View view = this.g;
        if (view != null) {
            view.setLongClickable(false);
        }
        if (this.C != null) {
            if (this.D == null) {
                this.D = new vt7(getContext());
            }
            this.C.f(this.D, getScrollX(), i2);
            invalidate();
        }
        k0 = null;
    }

    public void switchMotionEventType(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 3) {
            motionEvent.setAction(3);
            return;
        }
        if (action == 7) {
            motionEvent.setAction(2);
        } else if (action == 9) {
            motionEvent.setAction(0);
        } else {
            if (action != 10) {
                return;
            }
            motionEvent.setAction(1);
        }
    }

    public final void t() {
        this.j0 = 0;
        this.K = false;
    }

    public boolean u(int i2) {
        return Math.abs(i2) > this.b0;
    }

    public final void v(int i2) {
        k0 = this;
        View view = this.g;
        if (view != null) {
            view.setLongClickable(false);
        }
        wr4 wr4Var = this.C;
        if (wr4Var != null) {
            wr4Var.c(this.D, getScrollX(), i2);
            invalidate();
        }
        l();
    }

    public final void w(int i2) {
        k0 = this;
        View view = this.g;
        if (view != null) {
            view.setLongClickable(false);
        }
        wr4 wr4Var = this.C;
        if (wr4Var != null) {
            wr4Var.d(this.D, getScrollX(), -i2, this.G, this.H, Math.round(getWidth() * 0.5f * 0.3f));
            if (!this.s ? this.D.getFinalPos() > this.G : this.D.getFinalPos() < this.H) {
                x();
                smoothOpenMenu();
            }
            invalidate();
            l();
        }
    }

    public final void x() {
        this.D.f();
    }

    public final void y() {
        this.g0.g();
        ViewCompat.setAccessibilityDelegate(this, null);
    }

    public void z() {
        if (this.s) {
            this.G = h();
        } else {
            this.G = -g();
        }
        if (this.s) {
            this.H = g();
        } else {
            this.H = h();
        }
    }

    public OSSwipeMenuLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void doDeleteAnimation(RecyclerView.ViewHolder viewHolder, h hVar) {
        doDeleteAnimationCore(viewHolder, null, hVar);
    }

    public void smoothCloseMenu(int i2) {
        View view = this.g;
        if (view != null) {
            view.setLongClickable(true);
        }
        wr4 wr4Var = this.C;
        if (wr4Var != null) {
            wr4Var.a(this.D, getScrollX(), i2);
            invalidate();
        }
        k0 = null;
        y();
    }

    public void smoothOpenLeftMenu(int i2) {
        vj5 vj5Var = this.A;
        if (vj5Var != null) {
            this.C = vj5Var;
            v(i2);
        }
    }

    public void smoothOpenRightMenu(int i2) {
        hv8 hv8Var = this.B;
        if (hv8Var != null) {
            this.C = hv8Var;
            v(i2);
        }
    }

    public OSSwipeMenuLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.h = new PointF();
        this.i = true;
        this.j = new PointF();
        this.k = new PointF();
        this.t = false;
        this.u = false;
        this.x = 82;
        this.y = 64;
        this.E = 350;
        this.T = 255;
        this.U = 255;
        this.V = 1.0f;
        this.W = true;
        o(context, attributeSet, i2);
    }
}
