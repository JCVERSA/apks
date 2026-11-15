package com.transsion.widgetslib.view.damping;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ListView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.effectengine.bounceeffect.BounceEdgeEffect;
import com.transsion.effectengine.bounceeffect.dynamicanimation.DynamicAnimation;
import com.transsion.effectengine.bounceeffect.dynamicanimation.SpringAnimation;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.widgetthemes.util.Utils;
import defpackage.bq5;
import defpackage.olb;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class OSScrollbarLayout extends FrameLayout {
    public static final int STYLE_MODE_PAGE = 1;
    public static final int STYLE_MODE_WIDGET = 2;
    public static final String l0 = "OSScrollbarLayout";
    public static Method m0;
    public static Method n0;
    public static Method o0;
    public SpringAnimation A;
    public SpringAnimation B;
    public DynamicAnimation.z1OoOconst C;
    public DynamicAnimation.z1OoOconst D;
    public int E;
    public boolean F;
    public int G;
    public int H;
    public float I;
    public int J;
    public int K;
    public Interpolator L;
    public Interpolator M;
    public Interpolator N;
    public int O;
    public boolean P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public float U;
    public float V;
    public float W;
    public float a0;
    public int b;
    public int b0;
    public int c;
    public float c0;
    public int d;
    public ValueAnimator d0;
    public int e;
    public int e0;
    public int f;
    public int f0;
    public int g;
    public int g0;
    public int h;
    public int h0;
    public int i;
    public boolean i0;
    public int j;
    public float j0;
    public int k;
    public final Runnable k0;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public boolean t;
    public boolean u;
    public View v;
    public ValueAnimator w;
    public ValueAnimator x;
    public ValueAnimator y;
    public View z;

    public class a implements DynamicAnimation.z1OoOconst {
        public a() {
        }

        @Override
        public void z1OoOdo(DynamicAnimation dynamicAnimation, float f, float f2) {
            if (OSScrollbarLayout.this.v == null) {
                return;
            }
            OSScrollbarLayout.this.m0(f);
            OSScrollbarLayout.this.J();
        }
    }

    public class b implements DynamicAnimation.z1OoOconst {
        public b() {
        }

        @Override
        public void z1OoOdo(DynamicAnimation dynamicAnimation, float f, float f2) {
            if (OSScrollbarLayout.this.v == null) {
                return;
            }
            OSScrollbarLayout.this.n0((int) Math.abs(f));
            OSScrollbarLayout.this.J();
        }
    }

    public class c implements ValueAnimator.AnimatorUpdateListener {
        public c() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Object animatedValue = valueAnimator.getAnimatedValue();
            if (!(animatedValue instanceof Float) || OSScrollbarLayout.this.v == null) {
                return;
            }
            OSScrollbarLayout.this.v.setAlpha(((Float) animatedValue).floatValue());
        }
    }

    public class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Object animatedValue = valueAnimator.getAnimatedValue();
            if (!(animatedValue instanceof Float) || OSScrollbarLayout.this.v == null) {
                return;
            }
            OSScrollbarLayout.this.v.setAlpha(((Float) animatedValue).floatValue());
        }
    }

    public class e implements ValueAnimator.AnimatorUpdateListener {
        public e() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            OSScrollbarLayout oSScrollbarLayout = OSScrollbarLayout.this;
            oSScrollbarLayout.e = (int) (oSScrollbarLayout.Q + ((OSScrollbarLayout.this.R - OSScrollbarLayout.this.Q) * animatedFraction));
            OSScrollbarLayout oSScrollbarLayout2 = OSScrollbarLayout.this;
            oSScrollbarLayout2.c = (int) (oSScrollbarLayout2.S + ((OSScrollbarLayout.this.T - OSScrollbarLayout.this.S) * animatedFraction));
            if (OSScrollbarLayout.this.v instanceof ScrollBarView) {
                ((ScrollBarView) OSScrollbarLayout.this.v).d(OSScrollbarLayout.this.k, OSScrollbarLayout.this.U + ((OSScrollbarLayout.this.V - OSScrollbarLayout.this.U) * animatedFraction), OSScrollbarLayout.this.e, OSScrollbarLayout.this.c);
            }
        }
    }

    public class f extends RecyclerView.OnScrollListener {
        public final RecyclerView c;

        public f(RecyclerView recyclerView) {
            this.c = recyclerView;
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
            OSScrollbarLayout.this.F = i2 > 0;
            OSScrollbarLayout.this.l0(this.c, this.c.computeVerticalScrollRange(), this.c.computeVerticalScrollOffset());
            OSScrollbarLayout.this.g0();
        }
    }

    public class g implements View.OnScrollChangeListener {
        public final OverBoundNestedScrollView b;

        public g(OverBoundNestedScrollView overBoundNestedScrollView) {
            this.b = overBoundNestedScrollView;
        }

        @Override
        public void onScrollChange(View view, int i, int i2, int i3, int i4) {
            OSScrollbarLayout oSScrollbarLayout = OSScrollbarLayout.this;
            OverBoundNestedScrollView overBoundNestedScrollView = this.b;
            oSScrollbarLayout.l0(overBoundNestedScrollView, overBoundNestedScrollView.computeVerticalScrollRange(), this.b.computeVerticalScrollOffset());
            OSScrollbarLayout.this.g0();
        }
    }

    public class h implements AbsListView.OnScrollListener {
        public final ListView a;

        public h(ListView listView) {
            this.a = listView;
        }

        @Override
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            OSScrollbarLayout.this.k0(this.a);
            int i4 = OSScrollbarLayout.this.g0;
            int i5 = OSScrollbarLayout.this.h0;
            OSScrollbarLayout oSScrollbarLayout = OSScrollbarLayout.this;
            oSScrollbarLayout.F = i5 > oSScrollbarLayout.f0;
            OSScrollbarLayout.this.f0 = i5;
            OSScrollbarLayout.this.l0(this.a, i4, i5);
            OSScrollbarLayout.this.g0();
        }

        @Override
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    public class i implements ValueAnimator.AnimatorUpdateListener {
        public i() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            OSScrollbarLayout oSScrollbarLayout = OSScrollbarLayout.this;
            oSScrollbarLayout.W = oSScrollbarLayout.c0 * (1.0f - animatedFraction);
            OSScrollbarLayout.this.I();
        }
    }

    public class j extends AnimatorListenerAdapter {
        public j() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            OSScrollbarLayout.this.W = 0.0f;
            OSScrollbarLayout.this.a0 = 0.0f;
            OSScrollbarLayout.this.b0 = 0;
            OSScrollbarLayout.this.I();
        }
    }

    public OSScrollbarLayout(Context context) {
        super(context);
        this.l = 1;
        this.E = 0;
        this.I = 0.0f;
        this.J = -1;
        this.K = -1;
        this.e0 = Integer.MIN_VALUE;
        this.i0 = false;
        this.k0 = new Runnable() {
            @Override
            public void run() {
                if (OSScrollbarLayout.this.isAttachedToWindow() && OSScrollbarLayout.this.getVisibility() == 0) {
                    OSScrollbarLayout oSScrollbarLayout = OSScrollbarLayout.this;
                    oSScrollbarLayout.M(oSScrollbarLayout.w);
                    OSScrollbarLayout.this.d0();
                }
            }
        };
        Z(null, context);
    }

    private void setScrollbarPressed(boolean z) {
        View view;
        if (this.u == z) {
            return;
        }
        this.u = z;
        if (z && (view = this.v) != null && view.getVisibility() != 0) {
            this.v.setVisibility(0);
        }
        int i2 = z ? this.i : this.g;
        int i3 = z ? this.h : this.f;
        float f2 = this.j;
        float f3 = this.i / 2.0f;
        float f4 = z ? f2 : f3;
        if (z) {
            f2 = f3;
        }
        if (this.e == i2 && this.c == i3 && f4 == f2) {
            return;
        }
        b0();
        M(this.y);
        this.Q = this.e;
        this.R = i2;
        this.S = this.c;
        this.T = i3;
        this.U = f4;
        this.V = f2;
        this.y.start();
        if (this.z == null || this.v == null) {
            return;
        }
        if (!z) {
            g0();
            return;
        }
        M(this.w);
        M(this.x);
        View view2 = this.v;
        if (view2 != null) {
            view2.setAlpha(1.0f);
        }
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.k0);
        }
    }

    public final void I() {
        View view = this.z;
        if (view != null) {
            view.setTranslationY(-this.W);
        }
        if (this.v == null || !this.t) {
            return;
        }
        float fAbs = Math.abs(this.W);
        float f2 = this.W;
        if (f2 > 0.0f) {
            n0((int) fAbs);
            J();
        } else if (f2 < 0.0f) {
            m0(fAbs);
            J();
        } else {
            this.r = this.p;
            this.s = this.q;
            this.v.setTranslationY(this.I);
            J();
        }
    }

    public final void J() {
        View view = this.v;
        if (view != null && (view instanceof ScrollBarView)) {
            int i2 = this.s - this.r;
            if (i2 < 0) {
                i2 = 0;
            }
            ((ScrollBarView) view).c(0, i2);
        }
    }

    public final void K(int i2) {
        this.l = i2 != 2 ? 1 : 2;
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(this.l == 1 ? R.dimen.os_scrollbar_page_margin_right : R.dimen.os_scrollbar_widget_margin_right);
        this.f = dimensionPixelOffset;
        this.h = dimensionPixelOffset;
        this.g = getResources().getDimensionPixelOffset(R.dimen.os_scrollbar_width);
        this.i = getResources().getDimensionPixelOffset(this.l == 1 ? R.dimen.os_scrollbar_page_pressed_width : R.dimen.os_scrollbar_widget_pressed_width);
        this.b = getResources().getDimensionPixelOffset(R.dimen.os_scrollbar_min_height);
        this.j = (int) ((this.g / 2.0f) + 0.5f);
    }

    public final int L(int i2, int i3, float f2) {
        if (i2 <= 0) {
            return 0;
        }
        if (i3 <= 0) {
            return Math.max(i2, 0);
        }
        float f3 = i2 * (1.0f - (f2 / i3));
        int iMin = Math.min(i2, this.b);
        float fO = O(i3, i2);
        if (fO > 0.0f && f2 >= fO) {
            return iMin;
        }
        int iRound = Math.round(f3);
        if (iRound >= iMin) {
            iMin = iRound;
        }
        return iMin > i2 ? i2 : iMin;
    }

    public final void M(Animator animator) {
        if (animator != null) {
            animator.cancel();
        }
    }

    public final void N() {
        ValueAnimator valueAnimator = this.d0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public final float O(int i2, int i3) {
        int iMin;
        if (i2 <= 0 || i3 <= 0 || (iMin = Math.min(i3, this.b)) >= i3) {
            return 0.0f;
        }
        return Math.max(0.0f, i2 * (1.0f - (iMin / i3)));
    }

    public final float P(int i2) {
        if (i2 <= 0) {
            return 0.0f;
        }
        return Math.max(0.0f, Math.min(i2 * 0.5f, olb.h(getContext(), 240)));
    }

    public final void Q() {
        View view = this.z;
        if (view instanceof RecyclerView) {
            final RecyclerView recyclerView = (RecyclerView) view;
            postDelayed(new Runnable() {
                @Override
                public void run() {
                    int iComputeVerticalScrollRange = recyclerView.computeVerticalScrollRange();
                    if (OSScrollbarLayout.this.n == iComputeVerticalScrollRange) {
                        return;
                    }
                    OSScrollbarLayout.this.n = iComputeVerticalScrollRange;
                    int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
                    OSScrollbarLayout.this.G = 0;
                    OSScrollbarLayout oSScrollbarLayout = OSScrollbarLayout.this;
                    oSScrollbarLayout.l0(recyclerView, oSScrollbarLayout.n, iComputeVerticalScrollOffset);
                    OSScrollbarLayout.this.d0();
                }
            }, 100L);
        }
        if (this.z instanceof OverBoundNestedScrollView) {
            c0();
            final OverBoundNestedScrollView overBoundNestedScrollView = (OverBoundNestedScrollView) this.z;
            postDelayed(new Runnable() {
                @Override
                public void run() {
                    int iComputeVerticalScrollRange = overBoundNestedScrollView.computeVerticalScrollRange();
                    if (OSScrollbarLayout.this.n == iComputeVerticalScrollRange) {
                        return;
                    }
                    OSScrollbarLayout.this.n = iComputeVerticalScrollRange;
                    OSScrollbarLayout.this.G = 0;
                    OSScrollbarLayout oSScrollbarLayout = OSScrollbarLayout.this;
                    oSScrollbarLayout.l0(overBoundNestedScrollView, oSScrollbarLayout.n, overBoundNestedScrollView.computeVerticalScrollOffset());
                    OSScrollbarLayout.this.d0();
                }
            }, 100L);
        }
        if (this.z instanceof ListView) {
            c0();
            final ListView listView = (ListView) this.z;
            postDelayed(new Runnable() {
                @Override
                public void run() {
                    OSScrollbarLayout.this.k0(listView);
                    int i2 = OSScrollbarLayout.this.g0;
                    if (OSScrollbarLayout.this.n == i2) {
                        return;
                    }
                    OSScrollbarLayout.this.n = i2;
                    OSScrollbarLayout.this.G = 0;
                    OSScrollbarLayout oSScrollbarLayout = OSScrollbarLayout.this;
                    oSScrollbarLayout.l0(listView, oSScrollbarLayout.n, OSScrollbarLayout.this.h0);
                    OSScrollbarLayout.this.d0();
                }
            }, 100L);
        }
    }

    public final Object R(Object obj, String str) {
        try {
            Field declaredField = obj.getClass().getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.get(obj);
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException | SecurityException e2) {
            Log.e(l0, "getFieldValue error", e2);
            return null;
        }
    }

    public final void S(Context context) {
        if (this.L == null) {
            this.L = AnimationUtils.loadInterpolator(context, com.transsion.widgetsmotionlibrary.R.interpolator.os_motion_l1_easing_easein);
        }
        if (this.M == null) {
            this.M = AnimationUtils.loadInterpolator(context, com.transsion.widgetsmotionlibrary.R.interpolator.os_motion_l1_easing_easeout);
        }
        if (this.N == null) {
            this.N = AnimationUtils.loadInterpolator(context, com.transsion.widgetsmotionlibrary.R.interpolator.os_motion_l1_easing_standard);
        }
    }

    public final int T(ListView listView) {
        try {
            if (o0 == null) {
                Method declaredMethod = View.class.getDeclaredMethod("computeVerticalScrollExtent", null);
                o0 = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            return ((Integer) o0.invoke(listView, null)).intValue();
        } catch (Exception unused) {
            return listView.getHeight();
        }
    }

    public final int U(ListView listView) {
        try {
            if (m0 == null) {
                Method declaredMethod = View.class.getDeclaredMethod("computeVerticalScrollOffset", null);
                m0 = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            return ((Integer) m0.invoke(listView, null)).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public final int V(ListView listView) {
        try {
            if (n0 == null) {
                Method declaredMethod = View.class.getDeclaredMethod("computeVerticalScrollRange", null);
                n0 = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            return ((Integer) n0.invoke(listView, null)).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public final int W(View view) {
        if (view instanceof RecyclerView) {
            return ((RecyclerView) view).computeVerticalScrollOffset();
        }
        if (view instanceof OverBoundNestedScrollView) {
            return ((OverBoundNestedScrollView) view).computeVerticalScrollOffset();
        }
        if (view instanceof ListView) {
            return this.h0;
        }
        return 0;
    }

    public final int X(View view) {
        if (view instanceof RecyclerView) {
            return ((RecyclerView) view).computeVerticalScrollRange();
        }
        if (view instanceof OverBoundNestedScrollView) {
            return ((OverBoundNestedScrollView) view).computeVerticalScrollRange();
        }
        if (view instanceof ListView) {
            return this.g0;
        }
        return 0;
    }

    public final void Y(float f2) {
        View view = this.z;
        if (view == null) {
            return;
        }
        boolean z = false;
        boolean z2 = f2 > 0.0f && !view.canScrollVertically(1);
        if (f2 < 0.0f && !this.z.canScrollVertically(-1)) {
            z = true;
        }
        if (z2 || z) {
            if (z2) {
                if (this.b0 != 1) {
                    this.b0 = 1;
                    this.a0 = 0.0f;
                }
                float f3 = this.a0 + f2;
                this.a0 = f3;
                if (f3 < 0.0f) {
                    this.a0 = 0.0f;
                }
            } else {
                if (this.b0 != -1) {
                    this.b0 = -1;
                    this.a0 = 0.0f;
                }
                float f4 = this.a0 + (-f2);
                this.a0 = f4;
                if (f4 < 0.0f) {
                    this.a0 = 0.0f;
                }
            }
            j0();
            I();
        }
    }

    public final void Z(TypedArray typedArray, Context context) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.os_scrollbar_inset);
        this.O = context.getResources().getDimensionPixelSize(R.dimen.os_space200);
        this.k = olb.m(context, R.attr.os_fill_strong, R.color.os_fill_strong_hios);
        this.P = Utils.isGestureNavigationBarOn(context);
        if (typedArray == null) {
            K(1);
            this.d = dimensionPixelSize;
        } else {
            this.d = typedArray.getDimensionPixelOffset(R.styleable.OSScrollbarLayout_os_scrollbar_margin_top, dimensionPixelSize);
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(R.styleable.OSScrollbarLayout_os_scrollbar_margin_right, this.f);
            this.f = dimensionPixelOffset;
            this.h = dimensionPixelOffset;
            this.g = typedArray.getDimensionPixelOffset(R.styleable.OSScrollbarLayout_os_scrollbar_width, this.g);
            K(typedArray.getInt(R.styleable.OSScrollbarLayout_os_scrollbar_style_mode, 1));
            typedArray.recycle();
        }
        this.c = this.f;
        this.e = this.g;
        S(context);
        b0();
    }

    public final void a0() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.w = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(this.M);
        this.w.setDuration(300L);
        this.w.addUpdateListener(new c());
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.x = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setInterpolator(this.L);
        this.x.setDuration(100L);
        this.x.addUpdateListener(new d());
    }

    public final void b0() {
        if (this.y != null) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.y = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(this.N);
        this.y.setDuration(100L);
        this.y.addUpdateListener(new e());
    }

    public final void c0() {
        View view = this.z;
        if (view == null) {
            return;
        }
        if (this.A == null || this.B == null) {
            if (view instanceof RecyclerView) {
                RecyclerView recyclerView = (RecyclerView) view;
                Object objR = R(recyclerView, "mTopGlow");
                if ((objR instanceof BounceEdgeEffect) && this.A == null) {
                    this.A = ((BounceEdgeEffect) objR).z1OoOif;
                }
                Object objR2 = R(recyclerView, "mBottomGlow");
                if ((objR2 instanceof BounceEdgeEffect) && this.B == null) {
                    this.B = ((BounceEdgeEffect) objR2).z1OoOif;
                }
            }
            View view2 = this.z;
            if (view2 instanceof OverBoundNestedScrollView) {
                OverBoundNestedScrollView overBoundNestedScrollView = (OverBoundNestedScrollView) view2;
                if (overBoundNestedScrollView.getEdgeGlowTop() instanceof BounceEdgeEffect) {
                    this.A = ((BounceEdgeEffect) overBoundNestedScrollView.getEdgeGlowTop()).z1OoOif;
                }
                if (overBoundNestedScrollView.getEdgeGlowBottom() instanceof BounceEdgeEffect) {
                    this.B = ((BounceEdgeEffect) overBoundNestedScrollView.getEdgeGlowBottom()).z1OoOif;
                }
            }
            View view3 = this.z;
            if (view3 instanceof ListView) {
                ListView listView = (ListView) view3;
                Object objR3 = R(listView, "mEdgeGlowTop");
                if ((objR3 instanceof BounceEdgeEffect) && this.A == null) {
                    this.A = ((BounceEdgeEffect) objR3).z1OoOif;
                }
                Object objR4 = R(listView, "mEdgeGlowBottom");
                if ((objR4 instanceof BounceEdgeEffect) && this.B == null) {
                    this.B = ((BounceEdgeEffect) objR4).z1OoOif;
                }
            }
        }
        try {
            if (this.A != null && this.C == null) {
                a aVar = new a();
                this.C = aVar;
                this.A.addUpdateListener(aVar);
            }
            if (this.B == null || this.D != null) {
                return;
            }
            b bVar = new b();
            this.D = bVar;
            this.B.addUpdateListener(bVar);
        } catch (Exception e2) {
            this.D = null;
            this.C = null;
            Log.e(l0, "onEdgeEffect error", e2);
        }
    }

    public final void d0() {
        View view = this.v;
        if (view == null || this.z == null || view.getAlpha() <= 0.0f) {
            return;
        }
        if (this.v.getVisibility() != 0) {
            this.v.setVisibility(0);
        }
        if (this.w == null) {
            a0();
        }
        this.w.cancel();
        this.w.setFloatValues(this.v.getAlpha(), 0.0f);
        this.w.setStartDelay(((long) this.z.getScrollBarDefaultDelayBeforeFade()) * 4);
        this.w.start();
    }

    /* JADX WARN: Code duplicated, block: B:67:0x011c  */
    /* JADX WARN: Code duplicated, block: B:72:0x0128  */
    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int i2;
        float f2;
        if (this.l == 1 && this.P) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.i0 = false;
            View view = this.v;
            if (view != null && view.getAlpha() > 0.0f && this.v.getVisibility() == 0) {
                float x = motionEvent.getX();
                boolean z = !Utils.isRtl() ? x < ((float) (getWidth() - this.O)) : x > ((float) this.O);
                float y = motionEvent.getY();
                float top = this.v.getTop() + this.v.getTranslationY();
                float height = this.v.getHeight() + top;
                View view2 = this.v;
                if (view2 instanceof ScrollBarView) {
                    ScrollBarView scrollBarView = (ScrollBarView) view2;
                    int i3 = scrollBarView.e >= 0 ? scrollBarView.e : 0;
                    int iMin = Math.min(scrollBarView.f >= 0 ? scrollBarView.f : scrollBarView.getHeight(), scrollBarView.getHeight());
                    int iMin2 = Math.min(i3, iMin);
                    top += iMin2;
                    height = (iMin - iMin2) + top;
                }
                boolean z2 = y >= top && y <= height;
                if (z && z2) {
                    this.i0 = true;
                    this.j0 = y;
                    N();
                    this.W = 0.0f;
                    this.a0 = 0.0f;
                    this.b0 = 0;
                    I();
                    View view3 = this.z;
                    if (view3 != null) {
                        this.e0 = view3.getOverScrollMode();
                        this.z.setOverScrollMode(2);
                    }
                    setScrollbarPressed(true);
                    if (getParent() != null) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    return true;
                }
            }
        }
        if (!this.i0) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (actionMasked != 2) {
            if (actionMasked == 1 || actionMasked == 3) {
                setScrollbarPressed(false);
                this.i0 = false;
                if (getParent() != null) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
                View view4 = this.z;
                if (view4 != null && (i2 = this.e0) != Integer.MIN_VALUE) {
                    view4.setOverScrollMode(i2);
                    this.e0 = Integer.MIN_VALUE;
                }
                h0();
            }
            return true;
        }
        if (this.z != null && this.o > 0 && this.m > 0) {
            float y2 = motionEvent.getY();
            float f3 = y2 - this.j0;
            this.j0 = y2;
            N();
            int i4 = this.b0;
            if (i4 == 1 && f3 < 0.0f) {
                float f4 = this.a0;
                if (f4 > 0.0f) {
                    float fMin = Math.min(-f3, f4);
                    this.a0 -= fMin;
                    f3 += fMin;
                    j0();
                    I();
                } else if (i4 == -1) {
                    f2 = this.a0;
                    if (f2 > 0.0f) {
                        float fMin2 = Math.min(f3, f2);
                        this.a0 -= fMin2;
                        f3 -= fMin2;
                        j0();
                        I();
                    }
                }
            } else if (i4 == -1 && f3 > 0.0f) {
                f2 = this.a0;
                if (f2 > 0.0f) {
                    float fMin3 = Math.min(f3, f2);
                    this.a0 -= fMin3;
                    f3 -= fMin3;
                    j0();
                    I();
                }
            }
            if (f3 != 0.0f) {
                int i5 = this.m;
                float f5 = i5 > 0 ? this.o / i5 : 0.0f;
                if (f5 > 0.0f) {
                    int iW = W(this.z);
                    int i6 = ((int) (f3 * f5)) + iW;
                    if (i6 < 0) {
                        i6 = 0;
                    } else {
                        int i7 = this.o;
                        if (i6 > i7) {
                            i6 = i7;
                        }
                    }
                    int i8 = i6 - iW;
                    int i9 = ((i8 <= 0 || this.z.canScrollVertically(1)) && (i8 >= 0 || this.z.canScrollVertically(-1))) ? i8 : 0;
                    if (i9 != 0) {
                        View view5 = this.z;
                        if (view5 instanceof RecyclerView) {
                            ((RecyclerView) view5).scrollBy(0, i9);
                        } else if (view5 instanceof OverBoundNestedScrollView) {
                            ((OverBoundNestedScrollView) view5).scrollTo(0, iW + i9);
                        } else if (view5 instanceof ListView) {
                            ((ListView) view5).scrollListBy(i8);
                        }
                    }
                    float f6 = f3 - (i9 / f5);
                    if (f6 != 0.0f) {
                        Y(f6);
                    }
                }
            }
        }
        return true;
    }

    public final void e0() {
        View view = this.v;
        if (view == null || !this.t) {
            return;
        }
        if (view.getVisibility() != 0) {
            this.v.setVisibility(0);
        }
        if (this.x == null) {
            a0();
        }
        M(this.w);
        if (this.x.isRunning() || this.v.getAlpha() == 1.0f) {
            return;
        }
        this.x.setFloatValues(this.v.getAlpha(), 1.0f);
        this.x.start();
    }

    public final void f0() {
        M(this.w);
        M(this.x);
        M(this.y);
        N();
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.k0);
        }
    }

    public final void g0() {
        Handler handler;
        if (this.u || (handler = getHandler()) == null || !this.t) {
            return;
        }
        if (handler.hasCallbacks(this.k0)) {
            handler.removeCallbacks(this.k0);
        }
        handler.postDelayed(this.k0, 100L);
    }

    public final void h0() {
        if (this.z != null) {
            float f2 = this.W;
            if (f2 != 0.0f) {
                this.c0 = f2;
                N();
                if (this.d0 == null) {
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    this.d0 = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.setInterpolator(this.M);
                    this.d0.setDuration(300L);
                    this.d0.addUpdateListener(new i());
                    this.d0.addListener(new j());
                }
                this.d0.start();
                return;
            }
        }
        this.W = 0.0f;
        this.a0 = 0.0f;
        this.b0 = 0;
        I();
    }

    public boolean hasScrollBar() {
        return this.t;
    }

    public final void i0(int i2) {
        if (this.v != null) {
            this.t = true;
            M(this.w);
            e0();
            float f2 = this.d + (((i2 * 1.0f) / this.o) * this.m);
            float translationY = this.v.getTranslationY();
            int i3 = this.E;
            if (i3 != 1 && i3 != 2) {
                this.v.setTranslationY(f2);
            } else if (this.F) {
                if (f2 > translationY) {
                    this.v.setTranslationY(f2);
                }
            } else if (f2 < translationY) {
                this.v.setTranslationY(f2);
            }
            this.I = this.v.getTranslationY();
        }
    }

    public final void j0() {
        if (this.z == null || this.b0 == 0 || this.a0 <= 0.0f) {
            this.W = 0.0f;
            if (this.a0 <= 0.0f) {
                this.a0 = 0.0f;
                this.b0 = 0;
                return;
            }
            return;
        }
        int height = this.G;
        if (height <= 0) {
            height = getHeight();
        }
        float fMax = Math.max(O(height, this.q - this.p), P(height));
        if (fMax <= 0.0f || height <= 0) {
            this.W = 0.0f;
            return;
        }
        float fExp = (float) (((double) fMax) * (1.0d - Math.exp((this.a0 / Math.max(1.0f, height)) * (-2.0f))));
        if (fExp <= fMax) {
            fMax = fExp;
        }
        this.W = this.b0 * (fMax >= 0.0f ? fMax : 0.0f);
    }

    public final void k0(ListView listView) {
        int iV = V(listView);
        int iU = U(listView);
        int iT = T(listView);
        int height = listView.getHeight();
        if (iT <= 0 || height <= 0) {
            this.g0 = 0;
            this.h0 = 0;
        } else {
            float f2 = height / iT;
            this.g0 = (int) (iV * f2);
            this.h0 = (int) (iU * f2);
        }
    }

    public final void l0(View view, int i2, int i3) {
        int i4;
        int height;
        int width;
        int iHeight;
        if (view == null) {
            return;
        }
        if (view instanceof RecyclerView) {
            i4 = 1;
        } else {
            i4 = view instanceof ListView ? 2 : 0;
        }
        this.E = i4;
        if (i4 == 2) {
            height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        } else {
            height = getHeight();
            width = getWidth();
        }
        Drawable verticalScrollbarThumbDrawable = view.getVerticalScrollbarThumbDrawable();
        boolean z = verticalScrollbarThumbDrawable != null && verticalScrollbarThumbDrawable.getBounds().isEmpty();
        if (width <= 0 || height <= 0 || height >= i2 || verticalScrollbarThumbDrawable == null) {
            Handler handler = getHandler();
            if (handler != null) {
                handler.removeCallbacks(this.k0);
            }
            M(this.w);
            View view2 = this.v;
            if (view2 != null) {
                view2.setAlpha(0.0f);
                this.v.setVisibility(8);
            }
            bq5.c(l0, "updateScrollBar, mHasScrollBar: " + this.t + ", mViewScrollBar:" + this.v);
            this.t = false;
            return;
        }
        if (this.n == i2 && this.G == height && this.H == width && this.J == this.e && this.K == this.c) {
            i0(i3);
            return;
        }
        if (this.v == null) {
            ScrollBarView scrollBarView = new ScrollBarView(getContext());
            this.v = scrollBarView;
            addView(scrollBarView);
            bringChildToFront(this.v);
        }
        if (this.v.getVisibility() != 0) {
            this.v.setVisibility(0);
        }
        View view3 = this.v;
        if (view3 instanceof ScrollBarView) {
            ((ScrollBarView) view3).d(this.k, this.u ? this.i / 2.0f : this.j, this.e, this.c);
        }
        int width2 = view.getWidth() - this.O;
        View view4 = this.v;
        if (Utils.isRtl()) {
            width2 = -width2;
        }
        view4.setTranslationX(width2);
        bq5.c(l0, "updateScrollBar, mScrollRange: " + this.n + ", scrollRange: " + i2 + ", mHeight: " + this.G + ", height: " + height + ", mWidth: " + this.H + ", width: " + width);
        Rect bounds = verticalScrollbarThumbDrawable.getBounds();
        ViewGroup.LayoutParams layoutParams = this.v.getLayoutParams();
        if (layoutParams != null) {
            if (z) {
                float f2 = height;
                iHeight = (int) ((f2 / i2) * f2);
            } else {
                iHeight = bounds.height();
            }
            int iMin = Math.min(this.b, height);
            if (iHeight < iMin) {
                iHeight = iMin;
            }
            int i5 = this.O;
            if (layoutParams.height != iHeight || layoutParams.width != i5) {
                layoutParams.height = iHeight;
                layoutParams.width = i5;
                this.v.setLayoutParams(layoutParams);
            }
        }
        this.o = i2 - height;
        int i6 = height - (this.d * 2);
        int i7 = layoutParams.height;
        int i8 = i6 - i7;
        this.m = i8;
        if (i8 < 0) {
            this.m = 0;
        }
        this.n = i2;
        this.G = height;
        this.H = width;
        this.J = this.e;
        this.K = this.c;
        this.p = 0;
        this.q = i7;
        this.r = 0;
        this.s = i7;
        i0(i3);
    }

    public final void m0(float f2) {
        int i2 = this.q - this.p;
        int height = this.G;
        if (height <= 0) {
            height = getHeight();
        }
        int iL = L(i2, height, f2);
        int i3 = this.p;
        this.r = i3;
        this.s = i3 + iL;
        this.v.setTranslationY(this.I);
    }

    public final void n0(int i2) {
        int i3 = this.q - this.p;
        int height = this.G;
        if (height <= 0) {
            height = getHeight();
        }
        int iL = L(i3, height, i2);
        int i4 = this.q;
        this.s = i4;
        int i5 = i4 - iL;
        this.r = i5;
        int i6 = this.p;
        if (i5 < i6) {
            this.r = i6;
        }
        this.v.setTranslationY(this.I + this.r);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        f0();
    }

    public void onOverScrollUpdated(float f2) {
        if (this.v == null || !this.t) {
            return;
        }
        M(this.w);
        e0();
        float fAbs = Math.abs(f2);
        if (f2 > 0.0f) {
            m0(fAbs);
        } else if (f2 < 0.0f) {
            n0((int) fAbs);
        } else {
            this.r = this.p;
            this.s = this.q;
            this.v.setTranslationY(this.I);
            g0();
        }
        J();
    }

    @Override
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        l0(this.z, 0, 0);
    }

    @Override
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        if (z) {
            d0();
            return;
        }
        M(this.w);
        M(this.x);
        M(this.y);
        this.u = false;
        int i2 = this.g;
        this.e = i2;
        int i3 = this.f;
        this.c = i3;
        View view = this.v;
        if (view instanceof ScrollBarView) {
            ((ScrollBarView) view).d(this.k, this.j, i2, i3);
        }
    }

    public void refreshHasScrollBarSync() {
        View view = this.z;
        if (view == null) {
            return;
        }
        if (view instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) view;
            l0(recyclerView, recyclerView.computeVerticalScrollRange(), recyclerView.computeVerticalScrollOffset());
        } else if (view instanceof OverBoundNestedScrollView) {
            OverBoundNestedScrollView overBoundNestedScrollView = (OverBoundNestedScrollView) view;
            l0(overBoundNestedScrollView, overBoundNestedScrollView.computeVerticalScrollRange(), overBoundNestedScrollView.computeVerticalScrollOffset());
        } else if (view instanceof ListView) {
            ListView listView = (ListView) view;
            k0(listView);
            l0(listView, this.g0, this.h0);
        }
    }

    public void setOverScrollView(View view) {
        if (view == null) {
            return;
        }
        this.z = view;
        c0();
        view.setVerticalScrollbarThumbDrawable(new ColorDrawable(0));
        view.setVerticalScrollBarEnabled(true);
        if (view instanceof RecyclerView) {
            this.E = 1;
            RecyclerView recyclerView = (RecyclerView) view;
            recyclerView.addOnScrollListener(new f(recyclerView));
        }
        if (view instanceof OverBoundNestedScrollView) {
            OverBoundNestedScrollView overBoundNestedScrollView = (OverBoundNestedScrollView) view;
            overBoundNestedScrollView.setOnScrollChangeListener(new g(overBoundNestedScrollView));
        }
        if (view instanceof ListView) {
            this.E = 2;
            ListView listView = (ListView) view;
            listView.setOnScrollListener(new h(listView));
        }
        Q();
    }

    public void setScrollbarStyleMode(int i2) {
        K(i2);
        int i3 = this.f;
        this.c = i3;
        int i4 = this.g;
        this.e = i4;
        int i5 = (int) ((i4 / 2.0f) + 0.5f);
        this.j = i5;
        this.J = -1;
        this.K = -1;
        View view = this.v;
        if (view instanceof ScrollBarView) {
            ((ScrollBarView) view).d(this.k, i5, i4, i3);
        }
        View view2 = this.z;
        if (view2 != null) {
            l0(view2, X(view2), W(this.z));
        }
    }

    public void updateScrollBar() {
        if (this.z == null) {
            return;
        }
        try {
            Method declaredMethod = View.class.getDeclaredMethod("awakenScrollBars", null);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this.z, null);
            Q();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e2) {
            Log.e(l0, "invoke awakenScrollBars error", e2);
        }
    }

    public static class ScrollBarView extends View {
        public final Paint b;
        public float c;
        public int d;
        public int e;
        public int f;
        public int g;
        public boolean h;
        public final RectF i;

        public ScrollBarView(Context context) {
            super(context);
            this.b = new Paint(1);
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.i = new RectF();
        }

        public void c(int i, int i2) {
            this.e = i;
            this.f = i2;
            invalidate();
        }

        public void d(int i, float f, int i2, int i3) {
            this.b.setColor(i);
            this.c = f;
            this.d = i2;
            this.g = i3;
            this.h = Utils.isRtl();
            invalidate();
        }

        @Override
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            int width = this.d;
            if (width <= 0) {
                width = getWidth();
            }
            int i = this.e;
            if (i < 0) {
                i = 0;
            }
            int height = this.f;
            if (height < 0) {
                height = getHeight();
            }
            int iMin = Math.min(height, getHeight());
            int iMin2 = Math.min(i, iMin);
            if (this.h) {
                RectF rectF = this.i;
                int i2 = this.g;
                rectF.set(i2, iMin2, i2 + width, iMin);
            } else {
                this.i.set((getWidth() - width) - this.g, iMin2, getWidth() - this.g, iMin);
            }
            RectF rectF2 = this.i;
            float f = this.c;
            canvas.drawRoundRect(rectF2, f, f, this.b);
        }

        public ScrollBarView(Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = new Paint(1);
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.i = new RectF();
        }

        public ScrollBarView(Context context, @Nullable AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.b = new Paint(1);
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = 0;
            this.i = new RectF();
        }
    }

    public OSScrollbarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.l = 1;
        this.E = 0;
        this.I = 0.0f;
        this.J = -1;
        this.K = -1;
        this.e0 = Integer.MIN_VALUE;
        this.i0 = false;
        this.k0 = new Runnable() {
            @Override
            public void run() {
                if (OSScrollbarLayout.this.isAttachedToWindow() && OSScrollbarLayout.this.getVisibility() == 0) {
                    OSScrollbarLayout oSScrollbarLayout = OSScrollbarLayout.this;
                    oSScrollbarLayout.M(oSScrollbarLayout.w);
                    OSScrollbarLayout.this.d0();
                }
            }
        };
        Z(context.obtainStyledAttributes(attributeSet, R.styleable.OSScrollbarLayout), context);
    }

    public OSScrollbarLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.l = 1;
        this.E = 0;
        this.I = 0.0f;
        this.J = -1;
        this.K = -1;
        this.e0 = Integer.MIN_VALUE;
        this.i0 = false;
        this.k0 = new Runnable() {
            @Override
            public void run() {
                if (OSScrollbarLayout.this.isAttachedToWindow() && OSScrollbarLayout.this.getVisibility() == 0) {
                    OSScrollbarLayout oSScrollbarLayout = OSScrollbarLayout.this;
                    oSScrollbarLayout.M(oSScrollbarLayout.w);
                    OSScrollbarLayout.this.d0();
                }
            }
        };
        Z(context.obtainStyledAttributes(attributeSet, R.styleable.OSScrollbarLayout, i2, 0), context);
    }
}
