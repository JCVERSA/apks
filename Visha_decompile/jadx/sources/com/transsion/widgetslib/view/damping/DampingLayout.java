package com.transsion.widgetslib.view.damping;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowMetrics;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.transsion.effectengine.bounceeffect.BounceEdgeEffect;
import com.transsion.effectengine.bounceeffect.IOverScrollDecor;
import com.transsion.effectengine.bounceeffect.IOverScrollListener;
import com.transsion.effectengine.bounceeffect.dynamicanimation.DynamicAnimation;
import com.transsion.effectengine.bounceeffect.dynamicanimation.SpringAnimation;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.view.LoadingView;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import defpackage.olb;
import defpackage.s53;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

@Deprecated
public class DampingLayout extends OverBoundNestedScrollView {
    public static final String p0 = "DampingLayout";
    public int E;
    public int F;
    public LoadingView G;
    public TextView H;
    public Runnable I;
    public float J;
    public float K;
    public float L;
    public boolean M;
    public boolean N;
    public View O;
    public s53 P;
    public ValueAnimator Q;
    public ValueAnimator R;
    public IOverScrollDecor S;
    public int T;
    public boolean U;
    public int V;
    public int W;
    public final int a0;
    public final int b0;
    public int c0;
    public int d0;
    public int e0;
    public int f0;
    public int g0;
    public boolean h0;
    public View i0;
    public final Rect j0;
    public ValueAnimator k0;
    public Activity l0;
    public float m0;
    public int n0;
    public final Runnable o0;

    public class a implements DynamicAnimation.z1OoOconst {
        public a() {
        }

        @Override
        public void z1OoOdo(DynamicAnimation dynamicAnimation, float f, float f2) {
            if (DampingLayout.this.i0 == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = DampingLayout.this.i0.getLayoutParams();
            DampingLayout.this.j0.top = (int) Math.abs(f);
            if (DampingLayout.this.j0.top + DampingLayout.this.V >= layoutParams.height) {
                DampingLayout.this.j0.top = layoutParams.height - DampingLayout.this.V;
            }
            DampingLayout.this.i0.layout(DampingLayout.this.j0.left, DampingLayout.this.j0.top, DampingLayout.this.j0.right, DampingLayout.this.j0.bottom);
        }
    }

    public class b implements IOverScrollListener {
        public b() {
        }

        @Override
        public void onOverScrollUpdated(float f) {
            DampingLayout.this.S(f);
        }
    }

    public class c implements ValueAnimator.AnimatorUpdateListener {
        public c() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Object animatedValue = valueAnimator.getAnimatedValue();
            if (animatedValue instanceof Float) {
                float fFloatValue = ((Float) animatedValue).floatValue();
                DampingLayout.this.O.setTranslationY(fFloatValue);
                DampingLayout.this.b0(fFloatValue);
            }
        }
    }

    public class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Object animatedValue = valueAnimator.getAnimatedValue();
            if (animatedValue instanceof Float) {
                float fFloatValue = ((Float) animatedValue).floatValue();
                DampingLayout.this.O.setTranslationY(fFloatValue);
                DampingLayout.this.b0(fFloatValue);
            }
        }
    }

    public class e extends AnimatorListenerAdapter {
        public e() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            DampingLayout.this.N = false;
            DampingLayout.this.M = false;
            DampingLayout.this.H.setText(R.string.os_dampingl_refresh_finish);
            DampingLayout.this.G.release();
        }
    }

    public class f implements ValueAnimator.AnimatorUpdateListener {
        public f() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (DampingLayout.this.i0 == null) {
                return;
            }
            Object animatedValue = valueAnimator.getAnimatedValue();
            if (animatedValue instanceof Float) {
                DampingLayout.this.i0.setAlpha(((Float) animatedValue).floatValue());
            }
        }
    }

    public class g implements DynamicAnimation.z1OoOconst {
        public g() {
        }

        @Override
        public void z1OoOdo(DynamicAnimation dynamicAnimation, float f, float f2) {
            if (DampingLayout.this.i0 == null) {
                return;
            }
            DampingLayout.this.j0.bottom = (int) (DampingLayout.this.i0.getLayoutParams().height - f);
            if (DampingLayout.this.j0.bottom <= DampingLayout.this.V) {
                DampingLayout.this.j0.bottom = DampingLayout.this.V;
            }
            DampingLayout.this.i0.layout(DampingLayout.this.j0.left, DampingLayout.this.j0.top, DampingLayout.this.j0.right, DampingLayout.this.j0.bottom);
        }
    }

    public interface h {
    }

    public DampingLayout(Context context) {
        this(context, null);
    }

    private void U() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.J = TypedValue.applyDimension(1, 15.0f, displayMetrics);
        this.K = TypedValue.applyDimension(1, 6.0f, displayMetrics);
        this.E = getResources().getDimensionPixelSize(R.dimen.os_damping_layout_loading_title);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.os_damping_layout_loading_view);
        this.F = dimensionPixelSize;
        this.J += dimensionPixelSize;
        this.V = (int) TypedValue.applyDimension(1, 8.0f, displayMetrics);
        this.W = (int) TypedValue.applyDimension(1, 60.0f, displayMetrics);
        if (getContext() instanceof Activity) {
            this.l0 = (Activity) getContext();
        }
        setVerticalScrollbarThumbDrawable(new ColorDrawable(0));
        setVerticalScrollBarEnabled(true);
    }

    private ViewGroup getBarLayoutAttach() {
        if (this.n0 != 1) {
            Activity activity = this.l0;
            if (activity == null || activity.getWindow() == null) {
                return null;
            }
            return (ViewGroup) this.l0.getWindow().findViewById(android.R.id.content);
        }
        if (!(getParent() instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        if ((viewGroup instanceof FrameLayout) || (viewGroup instanceof RelativeLayout)) {
            return viewGroup;
        }
        int iIndexOfChild = viewGroup.indexOfChild(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        viewGroup.removeView(this);
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.addView(this);
        viewGroup.addView(frameLayout, iIndexOfChild, layoutParams);
        return frameLayout;
    }

    public final void R(Animator animator) {
        if (animator == null || !animator.isRunning()) {
            return;
        }
        animator.cancel();
    }

    public final void S(float f2) {
        Y(f2);
        this.L = f2;
        if (this.N && f2 == 0.0f && this.M) {
            a0();
        }
    }

    public final void T(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 1) {
            if (action == 2) {
                float f2 = this.L;
                if (f2 > 0.0f) {
                    if (f2 <= this.E) {
                        this.O.setTranslationY(f2);
                        this.H.setText(R.string.os_dampingl_down_pull_refresh);
                        b0(this.L);
                        return;
                    } else {
                        this.H.setText(R.string.os_dampingl_release_for_refresh);
                        if (this.O.getTranslationY() < this.E) {
                            Z();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (action != 3) {
                return;
            }
        }
        if (this.L < this.E) {
            a0();
            return;
        }
        this.N = true;
        this.H.setText(R.string.os_dampingl_refreshing);
        this.G.start();
        if (this.O.getTranslationY() < this.E) {
            Z();
        }
        if (this.I == null) {
            this.I = new Runnable() {
                @Override
                public void run() {
                    DampingLayout.this.a0();
                }
            };
        }
        if (getHandler() != null) {
            getHandler().postDelayed(this.I, 2000L);
        }
    }

    public final void V() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.k0 = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.k0.setDuration(getScrollBarFadeDuration());
        this.k0.addUpdateListener(new f());
    }

    public final void W() {
        if (!olb.E && this.S == null) {
            IOverScrollDecor upOverScroll = setUpOverScroll();
            this.S = upOverScroll;
            if (upOverScroll == null) {
                return;
            }
            this.S.setOverScrollListener(new b());
            X();
        }
    }

    public final void X() {
        SpringAnimation springAnimation;
        SpringAnimation springAnimation2;
        if ((getEdgeGlowTop() instanceof BounceEdgeEffect) && (springAnimation2 = ((BounceEdgeEffect) getEdgeGlowTop()).z1OoOif) != null) {
            springAnimation2.addUpdateListener(new g());
        }
        if (!(getEdgeGlowBottom() instanceof BounceEdgeEffect) || (springAnimation = ((BounceEdgeEffect) getEdgeGlowBottom()).z1OoOif) == null) {
            return;
        }
        springAnimation.addUpdateListener(new a());
    }

    public final void Y(float f2) {
        if (!this.h0 || this.i0 == null) {
            return;
        }
        R(this.k0);
        if (this.i0.getAlpha() != 1.0f) {
            this.i0.setAlpha(1.0f);
        }
        ViewGroup.LayoutParams layoutParams = this.i0.getLayoutParams();
        float fAbs = Math.abs(f2);
        if (f2 > 0.0f) {
            Rect rect = this.j0;
            int i = (int) (layoutParams.height - fAbs);
            rect.bottom = i;
            int i2 = this.V;
            if (i <= i2) {
                rect.bottom = i2;
            }
        } else if (f2 < 0.0f) {
            Rect rect2 = this.j0;
            int i3 = (int) fAbs;
            rect2.top = i3;
            int i4 = this.V;
            int i5 = i3 + i4;
            int i6 = layoutParams.height;
            if (i5 >= i6) {
                rect2.top = i6 - i4;
            }
        } else {
            Rect rect3 = this.j0;
            rect3.top = 0;
            rect3.bottom = layoutParams.height;
            d0();
        }
        View view = this.i0;
        Rect rect4 = this.j0;
        view.layout(rect4.left, rect4.top, rect4.right, rect4.bottom);
    }

    public final void Z() {
        if (this.Q == null) {
            this.Q = ValueAnimator.ofFloat(new float[0]);
        }
        if (this.Q.isRunning()) {
            return;
        }
        this.Q.setFloatValues(this.O.getTranslationY(), this.E);
        this.Q.setDuration(50L);
        this.Q.setInterpolator(new LinearInterpolator());
        this.Q.addUpdateListener(new c());
        this.Q.start();
    }

    public final void a0() {
        float translationY = this.O.getTranslationY();
        if (translationY < 0.0f) {
            return;
        }
        if (this.R == null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 0.0f);
            this.R = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(300L);
            this.R.setInterpolator(this.P);
            this.R.addUpdateListener(new d());
            this.R.addListener(new e());
        }
        this.R.setFloatValues(translationY, 0.0f);
        this.R.start();
    }

    public void abortRefreshing() {
        if (this.L == 0.0f) {
            this.M = false;
            if (this.N) {
                a0();
            }
        } else {
            this.M = true;
            this.G.release();
            this.H.setText(R.string.os_dampingl_refresh_finish);
        }
        postDelayed(new Runnable() {
            @Override
            public void run() {
                if (DampingLayout.this.computeVerticalScrollRange() > DampingLayout.this.getHeight()) {
                    DampingLayout dampingLayout = DampingLayout.this;
                    dampingLayout.R(dampingLayout.k0);
                    if (DampingLayout.this.i0 != null && DampingLayout.this.i0.getAlpha() != 1.0f) {
                        DampingLayout.this.i0.setAlpha(1.0f);
                    }
                    DampingLayout.this.d0();
                }
            }
        }, 60L);
        awakenScrollBars();
    }

    public final void b0(float f2) {
        try {
            int i = this.E;
            if (f2 > i) {
                return;
            }
            float f3 = f2 / i;
            this.H.setScaleX((f3 * 0.5f) + 0.5f);
            TextView textView = this.H;
            textView.setScaleY(textView.getScaleX());
            float f4 = (1.0f * f3) + 0.0f;
            this.H.setAlpha(f4);
            float f5 = this.J;
            if (f2 <= f5) {
                f5 = f2;
            }
            this.H.setTranslationY(f5);
            float f6 = f2 - this.F;
            float f7 = this.K;
            if (f6 > f7) {
                f6 = f7;
            }
            this.G.setScaleX((f3 * 0.8f) + 0.2f);
            LoadingView loadingView = this.G;
            loadingView.setScaleY(loadingView.getScaleX());
            this.G.setAlpha(f4);
            this.G.setTranslationY(f6);
        } catch (Exception e2) {
            Log.e(p0, "refreshTitleLayout, error", e2);
        }
    }

    public final void c0() {
        R(this.Q);
        R(this.R);
        R(this.k0);
        LoadingView loadingView = this.G;
        if (loadingView != null) {
            loadingView.release();
        }
        Handler handler = getHandler();
        if (handler != null) {
            Runnable runnable = this.I;
            if (runnable != null) {
                handler.removeCallbacks(runnable);
            }
            handler.removeCallbacks(this.o0);
        }
    }

    public final void d0() {
        Handler handler = getHandler();
        if (handler != null) {
            if (handler.hasCallbacks(this.o0)) {
                handler.removeCallbacks(this.o0);
            }
            handler.postDelayed(this.o0, 100L);
        }
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.S == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (!this.N && this.T == 0) {
            T(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override
    public void draw(Canvas canvas) {
        int safeInsetLeft;
        Activity activity;
        WindowMetrics currentWindowMetrics;
        WindowInsets windowInsets;
        super.draw(canvas);
        int i = Build.VERSION.SDK_INT;
        int iComputeVerticalScrollRange = computeVerticalScrollRange();
        int height = getHeight();
        Drawable verticalScrollbarThumbDrawable = getVerticalScrollbarThumbDrawable();
        if (height <= 0 || height >= iComputeVerticalScrollRange || verticalScrollbarThumbDrawable == null || verticalScrollbarThumbDrawable.getBounds().isEmpty()) {
            if (this.h0 && this.i0 != null) {
                R(this.k0);
                this.i0.setAlpha(0.0f);
            }
            this.h0 = false;
            return;
        }
        if (this.e0 == iComputeVerticalScrollRange && this.f0 == height) {
            return;
        }
        if (this.i0 == null) {
            ViewGroup barLayoutAttach = getBarLayoutAttach();
            if (barLayoutAttach == null) {
                return;
            }
            ScrollBarView scrollBarView = new ScrollBarView(getContext());
            this.i0 = scrollBarView;
            barLayoutAttach.addView(scrollBarView);
            this.i0.setBackgroundColor(Color.parseColor("#7FA1A1A1"));
            barLayoutAttach.bringChildToFront(this.i0);
        }
        if (this.n0 == 1) {
            int right = ((getRight() - getLeft()) - this.c0) - this.a0;
            View view = this.i0;
            if (olb.l0()) {
                right = -right;
            }
            view.setTranslationX(right);
            this.m0 = getTop();
        } else {
            int[] iArr = new int[2];
            getLocationInWindow(iArr);
            int i2 = iArr[0];
            int i3 = iArr[1];
            int right2 = (((getRight() + i2) - getLeft()) - this.c0) - this.a0;
            if (!olb.l0() || (activity = this.l0) == null || activity.getWindowManager() == null || i < 30 || (currentWindowMetrics = this.l0.getWindowManager().getCurrentWindowMetrics()) == null || currentWindowMetrics.getBounds() == null) {
                safeInsetLeft = 0;
            } else {
                Rect bounds = currentWindowMetrics.getBounds();
                safeInsetLeft = (getResources().getConfiguration().orientation != 2 || (windowInsets = currentWindowMetrics.getWindowInsets()) == null || windowInsets.getDisplayCutout() == null) ? 0 : windowInsets.getDisplayCutout().getSafeInsetLeft();
                right2 = (((i2 + this.c0) + this.a0) - bounds.width()) + safeInsetLeft;
            }
            int identifier = getResources().getIdentifier("status_bar_height", "dimen", ConstantDeviceInfo.APP_PLATFORM);
            int dimensionPixelSize = identifier > 0 ? getResources().getDimensionPixelSize(identifier) : 0;
            Activity activity2 = this.l0;
            this.m0 = (i3 - dimensionPixelSize) - ((activity2 == null || activity2.getActionBar() == null) ? 0 : this.l0.getActionBar().getHeight());
            Activity activity3 = this.l0;
            if (activity3 != null && activity3.getWindow() != null && this.l0.getWindow().getAttributes().layoutInDisplayCutoutMode == 1) {
                this.m0 = i3;
                right2 -= safeInsetLeft;
            }
            this.i0.setTranslationX(right2);
        }
        Rect bounds2 = verticalScrollbarThumbDrawable.getBounds();
        ViewGroup.LayoutParams layoutParams = this.i0.getLayoutParams();
        int iHeight = bounds2.height();
        layoutParams.height = iHeight;
        layoutParams.width = this.c0;
        int i4 = this.W;
        if (iHeight < i4) {
            if (i4 > height) {
                this.W = height;
            }
            layoutParams.height = this.W;
        }
        ((ViewGroup) this.i0.getParent()).updateViewLayout(this.i0, layoutParams);
        this.g0 = iComputeVerticalScrollRange - height;
        int i5 = (height - layoutParams.height) - (this.b0 * 2);
        this.d0 = i5;
        if (i5 < 0) {
            this.d0 = 0;
        }
        this.e0 = iComputeVerticalScrollRange;
        this.f0 = height;
        postDelayed(new Runnable() {
            @Override
            public void run() {
                DampingLayout.this.j0.set(DampingLayout.this.i0.getLeft(), DampingLayout.this.i0.getTop(), DampingLayout.this.i0.getRight(), DampingLayout.this.i0.getBottom());
            }
        }, 100L);
        e0(getScrollY());
    }

    public final void e0(int i) {
        if (this.i0 != null) {
            this.h0 = true;
            R(this.k0);
            if (this.i0.getAlpha() != 1.0f) {
                this.i0.setAlpha(1.0f);
            }
            this.i0.setTranslationY(this.m0 + this.b0 + (((i * 1.0f) / this.g0) * this.d0));
        }
    }

    public LoadingView getLoadingView() {
        return this.G;
    }

    public boolean isRefreshing() {
        return this.N;
    }

    @Override
    public void onAttachedToWindow() {
        int i;
        super.onAttachedToWindow();
        if (this.T == 0 || (i = this.n0) == 0) {
            W();
        } else if (i == 1) {
            postDelayed(new Runnable() {
                @Override
                public void run() {
                    DampingLayout.this.W();
                }
            }, 100L);
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c0();
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        if (getChildCount() != 1) {
            return;
        }
        View childAt = getChildAt(0);
        this.O = childAt;
        childAt.setNestedScrollingEnabled(false);
        this.O.setVerticalScrollBarEnabled(false);
        if (this.T == 0) {
            setFillViewport(true);
            this.P = new s53(0.25f, 0.0f, 0.0f, 1.0f);
            ViewGroup.LayoutParams layoutParams = this.O.getLayoutParams();
            removeView(this.O);
            View viewInflate = View.inflate(getContext(), R.layout.os_damping_layout_title, null);
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.addView(viewInflate, -1, this.E);
            frameLayout.addView(this.O, -1, -1);
            addView(frameLayout, layoutParams);
            TextView textView = (TextView) findViewById(R.id.damping_text_loading);
            this.H = textView;
            textView.setScaleX(0.5f);
            TextView textView2 = this.H;
            textView2.setScaleY(textView2.getScaleX());
            this.H.setAlpha(0.0f);
            LoadingView loadingView = (LoadingView) findViewById(R.id.loading_view);
            this.G = loadingView;
            loadingView.setScaleX(0.2f);
            LoadingView loadingView2 = this.G;
            loadingView2.setScaleY(loadingView2.getScaleX());
            this.G.setAlpha(0.0f);
            this.G.setAutoAnim(false);
        }
    }

    @Override
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        e0(i2);
        d0();
    }

    @Override
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        if (!z) {
            R(this.k0);
            return;
        }
        if (this.k0 == null) {
            V();
        }
        View view = this.i0;
        if (view != null) {
            view.setAlpha(1.0f);
        }
        this.k0.setStartDelay(((long) getScrollBarDefaultDelayBeforeFade()) * 4);
        this.k0.start();
    }

    public void setBarWidth(int i) {
        this.c0 = i;
    }

    public void setDampingMode(int i) {
        this.T = i;
    }

    public void setLimitDampingEdge(boolean z) {
        this.U = z;
    }

    public void setOnRefreshListener(h hVar) {
    }

    public void setTextColor(int i) {
        TextView textView = this.H;
        if (textView != null) {
            textView.setTextColor(i);
        }
    }

    public void setUseScene(int i) {
        this.n0 = i;
    }

    public DampingLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static class ScrollBarView extends View {
        public final Path b;
        public final RectF c;

        public ScrollBarView(Context context) {
            super(context);
            this.b = new Path();
            this.c = new RectF();
        }

        @Override
        public void draw(Canvas canvas) {
            this.b.reset();
            this.c.set(0.0f, 0.0f, getWidth(), getHeight());
            this.b.addRoundRect(this.c, getWidth() / 2.0f, getWidth() / 2.0f, Path.Direction.CCW);
            canvas.clipPath(this.b);
            super.draw(canvas);
        }

        public ScrollBarView(Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = new Path();
            this.c = new RectF();
        }

        public ScrollBarView(Context context, @Nullable AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.b = new Path();
            this.c = new RectF();
        }
    }

    public DampingLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j0 = new Rect();
        this.o0 = new Runnable() {
            @Override
            public void run() {
                DampingLayout dampingLayout = DampingLayout.this;
                dampingLayout.R(dampingLayout.k0);
                DampingLayout.this.k0.setStartDelay(DampingLayout.this.getScrollBarDefaultDelayBeforeFade());
                DampingLayout.this.k0.start();
            }
        };
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.DampingLayout, i, 0);
        this.T = typedArrayObtainStyledAttributes.getInt(R.styleable.DampingLayout_os_damping_mode, 0);
        this.n0 = typedArrayObtainStyledAttributes.getInt(R.styleable.DampingLayout_os_damping_bar_use_scene, 0);
        this.a0 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.DampingLayout_os_damping_bar_margin_right, (int) TypedValue.applyDimension(1, 6.0f, displayMetrics));
        this.b0 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.DampingLayout_os_damping_bar_margin_top, 0);
        this.c0 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.DampingLayout_os_damping_bar_width, (int) TypedValue.applyDimension(1, 3.0f, displayMetrics));
        this.U = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DampingLayout_os_limit_damping_edge, true);
        typedArrayObtainStyledAttributes.recycle();
        U();
    }
}
