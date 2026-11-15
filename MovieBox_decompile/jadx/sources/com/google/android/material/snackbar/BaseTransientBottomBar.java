package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import com.google.android.material.R$styleable;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import com.google.android.material.internal.g0;
import java.util.List;

public abstract class BaseTransientBottomBar {

    private final int f28913a;

    private final int f28914b;

    private final int f28915c;

    private final TimeInterpolator f28916d;

    private final TimeInterpolator f28917e;

    private final TimeInterpolator f28918f;

    private final ViewGroup f28919g;

    private final Context f28920h;

    protected final SnackbarBaseLayout f28921i;

    private final com.google.android.material.snackbar.a f28922j;

    private int f28923k;

    private boolean f28924l;

    private int f28927o;

    private int f28928p;

    private int f28929q;

    private int f28930r;

    private int f28931s;

    private int f28932t;

    private boolean f28933u;

    private List f28934v;

    private Behavior f28935w;

    private final AccessibilityManager f28936x;

    private static final TimeInterpolator f28912z = qa.a.f69578b;
    private static final TimeInterpolator A = qa.a.f69577a;
    private static final TimeInterpolator B = qa.a.f69580d;
    private static final boolean D = false;
    private static final int[] E = {R$attr.snackbarStyle};
    private static final String F = BaseTransientBottomBar.class.getSimpleName();
    static final Handler C = new Handler(Looper.getMainLooper(), new h());

    private boolean f28925m = false;

    private final Runnable f28926n = new Runnable() {
        @Override
        public void run() {
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            if (baseTransientBottomBar.f28921i == null || baseTransientBottomBar.f28920h == null) {
                return;
            }
            int iHeight = (g0.a(BaseTransientBottomBar.this.f28920h).height() - BaseTransientBottomBar.this.I()) + ((int) BaseTransientBottomBar.this.f28921i.getTranslationY());
            if (iHeight >= BaseTransientBottomBar.this.f28931s) {
                BaseTransientBottomBar baseTransientBottomBar2 = BaseTransientBottomBar.this;
                baseTransientBottomBar2.f28932t = baseTransientBottomBar2.f28931s;
                return;
            }
            ViewGroup.LayoutParams layoutParams = BaseTransientBottomBar.this.f28921i.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                Log.w(BaseTransientBottomBar.F, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                return;
            }
            BaseTransientBottomBar baseTransientBottomBar3 = BaseTransientBottomBar.this;
            baseTransientBottomBar3.f28932t = baseTransientBottomBar3.f28931s;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin += BaseTransientBottomBar.this.f28931s - iHeight;
            BaseTransientBottomBar.this.f28921i.requestLayout();
        }
    };

    com.google.android.material.snackbar.d.b f28937y = new k();

    public static class Behavior extends SwipeDismissBehavior<View> {

        private final o f28938l = new o(this);

        public void Q(BaseTransientBottomBar baseTransientBottomBar) {
            this.f28938l.c(baseTransientBottomBar);
        }

        @Override
        public boolean F(View view) {
            return this.f28938l.a(view);
        }

        @Override
        public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            this.f28938l.b(coordinatorLayout, view, motionEvent);
            return super.k(coordinatorLayout, view, motionEvent);
        }
    }

    protected static class SnackbarBaseLayout extends FrameLayout {

        private static final View.OnTouchListener f28939l = new a();

        private BaseTransientBottomBar f28940a;

        cb.n f28941b;

        private int f28942c;

        private final float f28943d;

        private final float f28944e;

        private final int f28945f;

        private final int f28946g;

        private ColorStateList f28947h;

        private PorterDuff.Mode f28948i;

        private Rect f28949j;

        private boolean f28950k;

        class a implements View.OnTouchListener {
            a() {
            }

            @Override
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        protected SnackbarBaseLayout(Context context) {
            this(context, null);
        }

        private Drawable d() {
            int iK = com.google.android.material.color.b.k(this, R$attr.colorSurface, R$attr.colorOnSurface, getBackgroundOverlayColorAlpha());
            cb.n nVar = this.f28941b;
            Drawable drawableW = nVar != null ? BaseTransientBottomBar.w(iK, nVar) : BaseTransientBottomBar.v(iK, getResources());
            if (this.f28947h == null) {
                return a1.a.r(drawableW);
            }
            Drawable drawableR = a1.a.r(drawableW);
            a1.a.o(drawableR, this.f28947h);
            return drawableR;
        }

        private void e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.f28949j = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }

        public void setBaseTransientBottomBar(BaseTransientBottomBar baseTransientBottomBar) {
            this.f28940a = baseTransientBottomBar;
        }

        void c(ViewGroup viewGroup) {
            this.f28950k = true;
            viewGroup.addView(this);
            this.f28950k = false;
        }

        float getActionTextColorAlpha() {
            return this.f28944e;
        }

        int getAnimationMode() {
            return this.f28942c;
        }

        float getBackgroundOverlayColorAlpha() {
            return this.f28943d;
        }

        int getMaxInlineActionWidth() {
            return this.f28946g;
        }

        int getMaxWidth() {
            return this.f28945f;
        }

        @Override
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            BaseTransientBottomBar baseTransientBottomBar = this.f28940a;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.N();
            }
            ViewCompat.requestApplyInsets(this);
        }

        @Override
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            BaseTransientBottomBar baseTransientBottomBar = this.f28940a;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.O();
            }
        }

        @Override
        protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            super.onLayout(z10, i10, i11, i12, i13);
            BaseTransientBottomBar baseTransientBottomBar = this.f28940a;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.P();
            }
        }

        @Override
        protected void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            if (this.f28945f > 0) {
                int measuredWidth = getMeasuredWidth();
                int i12 = this.f28945f;
                if (measuredWidth > i12) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), i11);
                }
            }
        }

        void setAnimationMode(int i10) {
            this.f28942c = i10;
        }

        @Override
        public void setBackground(@Nullable Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null && this.f28947h != null) {
                drawable = a1.a.r(drawable.mutate());
                a1.a.o(drawable, this.f28947h);
                a1.a.p(drawable, this.f28948i);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override
        public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            this.f28947h = colorStateList;
            if (getBackground() != null) {
                Drawable drawableR = a1.a.r(getBackground().mutate());
                a1.a.o(drawableR, colorStateList);
                a1.a.p(drawableR, this.f28948i);
                if (drawableR != getBackground()) {
                    super.setBackgroundDrawable(drawableR);
                }
            }
        }

        @Override
        public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            this.f28948i = mode;
            if (getBackground() != null) {
                Drawable drawableR = a1.a.r(getBackground().mutate());
                a1.a.p(drawableR, mode);
                if (drawableR != getBackground()) {
                    super.setBackgroundDrawable(drawableR);
                }
            }
        }

        @Override
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
            if (this.f28950k || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                return;
            }
            e((ViewGroup.MarginLayoutParams) layoutParams);
            BaseTransientBottomBar baseTransientBottomBar = this.f28940a;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.e0();
            }
        }

        @Override
        public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : f28939l);
            super.setOnClickListener(onClickListener);
        }

        protected SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
            super(db.a.c(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R$styleable.SnackbarLayout);
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SnackbarLayout_elevation)) {
                ViewCompat.setElevation(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SnackbarLayout_elevation, 0));
            }
            this.f28942c = typedArrayObtainStyledAttributes.getInt(R$styleable.SnackbarLayout_animationMode, 0);
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.SnackbarLayout_shapeAppearance) || typedArrayObtainStyledAttributes.hasValue(R$styleable.SnackbarLayout_shapeAppearanceOverlay)) {
                this.f28941b = cb.n.e(context2, attributeSet, 0, 0).m();
            }
            this.f28943d = typedArrayObtainStyledAttributes.getFloat(R$styleable.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            setBackgroundTintList(za.c.a(context2, typedArrayObtainStyledAttributes, R$styleable.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(f0.r(typedArrayObtainStyledAttributes.getInt(R$styleable.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.f28944e = typedArrayObtainStyledAttributes.getFloat(R$styleable.SnackbarLayout_actionTextColorAlpha, 1.0f);
            this.f28945f = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SnackbarLayout_android_maxWidth, -1);
            this.f28946g = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SnackbarLayout_maxActionInlineWidth, -1);
            typedArrayObtainStyledAttributes.recycle();
            setOnTouchListener(f28939l);
            setFocusable(true);
            if (getBackground() == null) {
                ViewCompat.setBackground(this, d());
            }
        }
    }

    class a extends AnimatorListenerAdapter {

        final int f28951a;

        a(int i10) {
            this.f28951a = i10;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.Q(this.f28951a);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BaseTransientBottomBar.this.f28921i.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BaseTransientBottomBar.this.f28921i.setScaleX(fFloatValue);
            BaseTransientBottomBar.this.f28921i.setScaleY(fFloatValue);
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.R();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f28922j.animateContentIn(BaseTransientBottomBar.this.f28915c - BaseTransientBottomBar.this.f28913a, BaseTransientBottomBar.this.f28913a);
        }
    }

    class e implements ValueAnimator.AnimatorUpdateListener {

        private int f28956a;

        final int f28957b;

        e(int i10) {
            this.f28957b = i10;
            this.f28956a = i10;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.D) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f28921i, iIntValue - this.f28956a);
            } else {
                BaseTransientBottomBar.this.f28921i.setTranslationY(iIntValue);
            }
            this.f28956a = iIntValue;
        }
    }

    class f extends AnimatorListenerAdapter {

        final int f28959a;

        f(int i10) {
            this.f28959a = i10;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.Q(this.f28959a);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f28922j.animateContentOut(0, BaseTransientBottomBar.this.f28914b);
        }
    }

    class g implements ValueAnimator.AnimatorUpdateListener {

        private int f28961a = 0;

        g() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.D) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f28921i, iIntValue - this.f28961a);
            } else {
                BaseTransientBottomBar.this.f28921i.setTranslationY(iIntValue);
            }
            this.f28961a = iIntValue;
        }
    }

    class h implements Handler.Callback {
        h() {
        }

        @Override
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 0) {
                ((BaseTransientBottomBar) message.obj).Y();
                return true;
            }
            if (i10 != 1) {
                return false;
            }
            ((BaseTransientBottomBar) message.obj).K(message.arg1);
            return true;
        }
    }

    class i implements OnApplyWindowInsetsListener {
        i() {
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            BaseTransientBottomBar.this.f28927o = windowInsetsCompat.getSystemWindowInsetBottom();
            BaseTransientBottomBar.this.f28928p = windowInsetsCompat.getSystemWindowInsetLeft();
            BaseTransientBottomBar.this.f28929q = windowInsetsCompat.getSystemWindowInsetRight();
            BaseTransientBottomBar.this.e0();
            return windowInsetsCompat;
        }
    }

    class j extends AccessibilityDelegateCompat {
        j() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.addAction(1048576);
            accessibilityNodeInfoCompat.setDismissable(true);
        }

        @Override
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (i10 != 1048576) {
                return super.performAccessibilityAction(view, i10, bundle);
            }
            BaseTransientBottomBar.this.x();
            return true;
        }
    }

    class k implements com.google.android.material.snackbar.d.b {
        k() {
        }

        @Override
        public void a(int i10) {
            Handler handler = BaseTransientBottomBar.C;
            handler.sendMessage(handler.obtainMessage(1, i10, 0, BaseTransientBottomBar.this));
        }

        @Override
        public void show() {
            Handler handler = BaseTransientBottomBar.C;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }
    }

    class l implements SwipeDismissBehavior.c {
        l() {
        }

        @Override
        public void a(View view) {
            if (view.getParent() != null) {
                view.setVisibility(8);
            }
            BaseTransientBottomBar.this.y(0);
        }

        @Override
        public void b(int i10) {
            if (i10 == 0) {
                com.google.android.material.snackbar.d.c().k(BaseTransientBottomBar.this.f28937y);
            } else if (i10 == 1 || i10 == 2) {
                com.google.android.material.snackbar.d.c().j(BaseTransientBottomBar.this.f28937y);
            }
        }
    }

    class m extends AnimatorListenerAdapter {
        m() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.R();
        }
    }

    public static abstract class n {
        public void a(Object obj, int i10) {
        }

        public void b(Object obj) {
        }
    }

    public static class o {

        private com.google.android.material.snackbar.d.b f28968a;

        public o(SwipeDismissBehavior swipeDismissBehavior) {
            swipeDismissBehavior.M(0.1f);
            swipeDismissBehavior.K(0.6f);
            swipeDismissBehavior.N(0);
        }

        public boolean a(View view) {
            return view instanceof SnackbarBaseLayout;
        }

        public void b(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    com.google.android.material.snackbar.d.c().j(this.f28968a);
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                com.google.android.material.snackbar.d.c().k(this.f28968a);
            }
        }

        public void c(BaseTransientBottomBar baseTransientBottomBar) {
            this.f28968a = baseTransientBottomBar.f28937y;
        }
    }

    protected BaseTransientBottomBar(Context context, ViewGroup viewGroup, View view, com.google.android.material.snackbar.a aVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        }
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
        this.f28919g = viewGroup;
        this.f28922j = aVar;
        this.f28920h = context;
        b0.a(context);
        SnackbarBaseLayout snackbarBaseLayout = (SnackbarBaseLayout) LayoutInflater.from(context).inflate(F(), viewGroup, false);
        this.f28921i = snackbarBaseLayout;
        snackbarBaseLayout.setBaseTransientBottomBar(this);
        if (view instanceof SnackbarContentLayout) {
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
            snackbarContentLayout.a(snackbarBaseLayout.getActionTextColorAlpha());
            snackbarContentLayout.setMaxInlineActionWidth(snackbarBaseLayout.getMaxInlineActionWidth());
        }
        snackbarBaseLayout.addView(view);
        ViewCompat.setAccessibilityLiveRegion(snackbarBaseLayout, 1);
        ViewCompat.setImportantForAccessibility(snackbarBaseLayout, 1);
        ViewCompat.setFitsSystemWindows(snackbarBaseLayout, true);
        ViewCompat.setOnApplyWindowInsetsListener(snackbarBaseLayout, new i());
        ViewCompat.setAccessibilityDelegate(snackbarBaseLayout, new j());
        this.f28936x = (AccessibilityManager) context.getSystemService("accessibility");
        this.f28915c = ya.j.f(context, R$attr.motionDurationLong2, 250);
        this.f28913a = ya.j.f(context, R$attr.motionDurationLong2, 150);
        this.f28914b = ya.j.f(context, R$attr.motionDurationMedium1, 75);
        this.f28916d = ya.j.g(context, R$attr.motionEasingEmphasizedInterpolator, A);
        this.f28918f = ya.j.g(context, R$attr.motionEasingEmphasizedInterpolator, B);
        this.f28917e = ya.j.g(context, R$attr.motionEasingEmphasizedInterpolator, f28912z);
    }

    private ValueAnimator E(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(this.f28918f);
        valueAnimatorOfFloat.addUpdateListener(new c());
        return valueAnimatorOfFloat;
    }

    private int G() {
        int height = this.f28921i.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f28921i.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    public int I() {
        int[] iArr = new int[2];
        this.f28921i.getLocationInWindow(iArr);
        return iArr[1] + this.f28921i.getHeight();
    }

    private boolean M() {
        ViewGroup.LayoutParams layoutParams = this.f28921i.getLayoutParams();
        return (layoutParams instanceof CoordinatorLayout.f) && (((CoordinatorLayout.f) layoutParams).f() instanceof SwipeDismissBehavior);
    }

    private void S() {
        this.f28930r = u();
        e0();
    }

    private void U(CoordinatorLayout.f fVar) {
        SwipeDismissBehavior swipeDismissBehaviorD = this.f28935w;
        if (swipeDismissBehaviorD == null) {
            swipeDismissBehaviorD = D();
        }
        if (swipeDismissBehaviorD instanceof Behavior) {
            ((Behavior) swipeDismissBehaviorD).Q(this);
        }
        swipeDismissBehaviorD.L(new l());
        fVar.o(swipeDismissBehaviorD);
        if (A() == null) {
            fVar.f7604g = 80;
        }
    }

    private boolean W() {
        return this.f28931s > 0 && !this.f28924l && M();
    }

    private void Z() {
        if (V()) {
            s();
            return;
        }
        if (this.f28921i.getParent() != null) {
            this.f28921i.setVisibility(0);
        }
        R();
    }

    public void a0() {
        ValueAnimator valueAnimatorZ = z(0.0f, 1.0f);
        ValueAnimator valueAnimatorE = E(0.8f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorZ, valueAnimatorE);
        animatorSet.setDuration(this.f28913a);
        animatorSet.addListener(new m());
        animatorSet.start();
    }

    private void b0(int i10) {
        ValueAnimator valueAnimatorZ = z(1.0f, 0.0f);
        valueAnimatorZ.setDuration(this.f28914b);
        valueAnimatorZ.addListener(new a(i10));
        valueAnimatorZ.start();
    }

    public void c0() {
        int iG = G();
        if (D) {
            ViewCompat.offsetTopAndBottom(this.f28921i, iG);
        } else {
            this.f28921i.setTranslationY(iG);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(iG, 0);
        valueAnimator.setInterpolator(this.f28917e);
        valueAnimator.setDuration(this.f28915c);
        valueAnimator.addListener(new d());
        valueAnimator.addUpdateListener(new e(iG));
        valueAnimator.start();
    }

    private void d0(int i10) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, G());
        valueAnimator.setInterpolator(this.f28917e);
        valueAnimator.setDuration(this.f28915c);
        valueAnimator.addListener(new f(i10));
        valueAnimator.addUpdateListener(new g());
        valueAnimator.start();
    }

    public void e0() {
        ViewGroup.LayoutParams layoutParams = this.f28921i.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            Log.w(F, "Unable to update margins because layout params are not MarginLayoutParams");
            return;
        }
        if (this.f28921i.f28949j == null) {
            Log.w(F, "Unable to update margins because original view margins are not set");
            return;
        }
        if (this.f28921i.getParent() == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        int i10 = this.f28921i.f28949j.bottom + (A() != null ? this.f28930r : this.f28927o);
        int i11 = this.f28921i.f28949j.left + this.f28928p;
        int i12 = this.f28921i.f28949j.right + this.f28929q;
        int i13 = this.f28921i.f28949j.top;
        boolean z10 = (marginLayoutParams.bottomMargin == i10 && marginLayoutParams.leftMargin == i11 && marginLayoutParams.rightMargin == i12 && marginLayoutParams.topMargin == i13) ? false : true;
        if (z10) {
            marginLayoutParams.bottomMargin = i10;
            marginLayoutParams.leftMargin = i11;
            marginLayoutParams.rightMargin = i12;
            marginLayoutParams.topMargin = i13;
            this.f28921i.requestLayout();
        }
        if ((z10 || this.f28932t != this.f28931s) && Build.VERSION.SDK_INT >= 29 && W()) {
            this.f28921i.removeCallbacks(this.f28926n);
            this.f28921i.post(this.f28926n);
        }
    }

    private void t(int i10) {
        if (this.f28921i.getAnimationMode() == 1) {
            b0(i10);
        } else {
            d0(i10);
        }
    }

    private int u() {
        if (A() == null) {
            return 0;
        }
        int[] iArr = new int[2];
        A().getLocationOnScreen(iArr);
        int i10 = iArr[1];
        int[] iArr2 = new int[2];
        this.f28919g.getLocationOnScreen(iArr2);
        return (iArr2[1] + this.f28919g.getHeight()) - i10;
    }

    public static GradientDrawable v(int i10, Resources resources) {
        float dimension = resources.getDimension(R$dimen.mtrl_snackbar_background_corner_radius);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(dimension);
        gradientDrawable.setColor(i10);
        return gradientDrawable;
    }

    public static cb.i w(int i10, cb.n nVar) {
        cb.i iVar = new cb.i(nVar);
        iVar.d0(ColorStateList.valueOf(i10));
        return iVar;
    }

    private ValueAnimator z(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(this.f28916d);
        valueAnimatorOfFloat.addUpdateListener(new b());
        return valueAnimatorOfFloat;
    }

    public View A() {
        return null;
    }

    public Context B() {
        return this.f28920h;
    }

    public int C() {
        return this.f28923k;
    }

    protected SwipeDismissBehavior D() {
        return new Behavior();
    }

    protected int F() {
        return J() ? R$layout.mtrl_layout_snackbar : R$layout.design_layout_snackbar;
    }

    public View H() {
        return this.f28921i;
    }

    protected boolean J() {
        TypedArray typedArrayObtainStyledAttributes = this.f28920h.obtainStyledAttributes(E);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    final void K(int i10) {
        if (V() && this.f28921i.getVisibility() == 0) {
            t(i10);
        } else {
            Q(i10);
        }
    }

    public boolean L() {
        return com.google.android.material.snackbar.d.c().e(this.f28937y);
    }

    void N() {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 29 || (rootWindowInsets = this.f28921i.getRootWindowInsets()) == null) {
            return;
        }
        this.f28931s = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
        e0();
    }

    void O() {
        if (L()) {
            C.post(new Runnable() {
                @Override
                public void run() {
                    BaseTransientBottomBar.this.Q(3);
                }
            });
        }
    }

    void P() {
        if (this.f28933u) {
            Z();
            this.f28933u = false;
        }
    }

    void Q(int i10) {
        com.google.android.material.snackbar.d.c().h(this.f28937y);
        List list = this.f28934v;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((n) this.f28934v.get(size)).a(this, i10);
            }
        }
        ViewParent parent = this.f28921i.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f28921i);
        }
    }

    void R() {
        com.google.android.material.snackbar.d.c().i(this.f28937y);
        List list = this.f28934v;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((n) this.f28934v.get(size)).b(this);
            }
        }
    }

    public BaseTransientBottomBar T(int i10) {
        this.f28923k = i10;
        return this;
    }

    boolean V() {
        AccessibilityManager accessibilityManager = this.f28936x;
        if (accessibilityManager == null) {
            return true;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    public void X() {
        com.google.android.material.snackbar.d.c().m(C(), this.f28937y);
    }

    final void Y() {
        if (this.f28921i.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f28921i.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                U((CoordinatorLayout.f) layoutParams);
            }
            this.f28921i.c(this.f28919g);
            S();
            this.f28921i.setVisibility(4);
        }
        if (ViewCompat.isLaidOut(this.f28921i)) {
            Z();
        } else {
            this.f28933u = true;
        }
    }

    void s() {
        this.f28921i.post(new Runnable() {
            @Override
            public void run() {
                SnackbarBaseLayout snackbarBaseLayout = BaseTransientBottomBar.this.f28921i;
                if (snackbarBaseLayout == null) {
                    return;
                }
                if (snackbarBaseLayout.getParent() != null) {
                    BaseTransientBottomBar.this.f28921i.setVisibility(0);
                }
                if (BaseTransientBottomBar.this.f28921i.getAnimationMode() == 1) {
                    BaseTransientBottomBar.this.a0();
                } else {
                    BaseTransientBottomBar.this.c0();
                }
            }
        });
    }

    public void x() {
        y(3);
    }

    protected void y(int i10) {
        com.google.android.material.snackbar.d.c().b(this.f28937y, i10);
    }
}
