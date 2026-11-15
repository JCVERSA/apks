package com.transsion.usercenter.profile;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.usercenter.R$id;

public class FixAppBarLayoutBehavior extends AppBarLayout.Behavior {
    private View A;
    private d B;
    private int C;
    private int D;
    private boolean E;
    private VelocityTracker F;
    private int G;
    private RecyclerView H;

    private boolean f54902q;

    private boolean f54903r;

    private float f54904s;

    private float f54905t;

    private int f54906u;

    private int f54907v;

    private int f54908w;

    private int[] f54909x;

    private View f54910y;

    private ViewPager2 f54911z;

    class a extends AppBarLayout.Behavior.a {
        a() {
        }

        @Override
        public boolean a(AppBarLayout appBarLayout) {
            return true;
        }
    }

    class b extends ViewPager2.OnPageChangeCallback {
        b() {
        }

        @Override
        public void onPageSelected(int i10) {
            super.onPageSelected(i10);
            View childAt = FixAppBarLayoutBehavior.this.f54911z.getChildAt(i10);
            if (childAt != null) {
                FixAppBarLayoutBehavior.this.F0(childAt);
            }
        }
    }

    class c implements Animator.AnimatorListener {
        c() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            FixAppBarLayoutBehavior.this.f54903r = false;
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public interface d {
        void a(float f10, boolean z10);
    }

    public FixAppBarLayoutBehavior() {
        this.f54903r = false;
        this.f54909x = null;
        this.C = -1;
        this.D = -1;
        this.E = false;
        R0();
    }

    private void D0() {
        ViewPager2 viewPager2 = this.f54911z;
        if (viewPager2 != null) {
            viewPager2.registerOnPageChangeCallback(new b());
        }
    }

    private boolean E0() {
        RecyclerView.m layoutManager;
        RecyclerView recyclerView = this.H;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return true;
        }
        View viewFindViewByPosition = layoutManager.findViewByPosition(0);
        return viewFindViewByPosition != null && viewFindViewByPosition.getTop() >= 0;
    }

    public void F0(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt instanceof RecyclerView) {
                    this.H = (RecyclerView) childAt;
                }
            }
        }
    }

    private boolean H0() {
        return this.f54910y != null;
    }

    public void I0(AppBarLayout appBarLayout, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f54910y.setScaleX(fFloatValue);
        this.f54910y.setScaleY(fFloatValue);
        O0(appBarLayout, (int) ((1.0f - valueAnimator.getAnimatedFraction()) * this.f54906u));
        if (this.B != null) {
            this.B.a(Math.min((fFloatValue - 1.0f) / 0.3f, 1.0f), true);
        }
    }

    private boolean M0(AppBarLayout appBarLayout, MotionEvent motionEvent) {
        float yVelocity;
        int actionMasked = motionEvent.getActionMasked();
        if (this.D < 0) {
            this.D = ViewConfiguration.get(appBarLayout.getContext()).getScaledTouchSlop();
        }
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.F;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    this.F.computeCurrentVelocity(1000);
                    yVelocity = this.F.getYVelocity(this.C);
                } else {
                    yVelocity = 0.0f;
                }
                this.f54902q = yVelocity <= 100.0f;
                P0(appBarLayout);
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.C);
                if (iFindPointerIndex < 0) {
                    wf.a.f74274a.i("FixAppBarLayoutBehavior", "Error processing scroll; pointer index for id " + this.C + " not found. Did any MotionEvents get skipped?", false);
                } else {
                    int y10 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                    int i10 = this.G - y10;
                    if (!this.E) {
                        int iAbs = Math.abs(i10);
                        int i11 = this.D;
                        if (iAbs > i11) {
                            this.E = true;
                            i10 = i10 > 0 ? i10 - i11 : i10 + i11;
                        }
                    }
                    if (this.E) {
                        this.G = y10;
                        if (G0(y10)) {
                            return Q0(appBarLayout, appBarLayout, i10);
                        }
                        if (E0()) {
                            return Q0(appBarLayout, appBarLayout, i10);
                        }
                    }
                }
            } else if (actionMasked == 3) {
            }
            this.E = false;
            this.C = -1;
            VelocityTracker velocityTracker2 = this.F;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.F = null;
            }
        } else {
            this.C = motionEvent.getPointerId(0);
            this.G = (int) (motionEvent.getY() + 0.5f);
            if (this.F == null) {
                this.F = VelocityTracker.obtain();
            }
        }
        VelocityTracker velocityTracker3 = this.F;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
        }
        return false;
    }

    private void O0(ViewGroup viewGroup, int i10) {
        int childCount = viewGroup.getChildCount();
        int[] iArr = this.f54909x;
        if (iArr == null || iArr.length != childCount) {
            this.f54909x = new int[childCount];
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = viewGroup.getChildAt(i11);
                if (childAt != null) {
                    this.f54909x[i11] = childAt.getTop();
                } else {
                    this.f54909x[i11] = -1;
                }
            }
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = viewGroup.getChildAt(i12);
            if (childAt2.getId() != R$id.toolbar) {
                if (childAt2.getId() == R$id.collapsing) {
                    O0((ViewGroup) childAt2, i10);
                } else if (this.f54909x[i12] >= 0) {
                    childAt2.getMeasuredHeight();
                    childAt2.setTranslationY(i10);
                }
            }
        }
        ViewPager2 viewPager2 = this.f54911z;
        if (viewPager2 != null) {
            viewPager2.setTranslationY(i10);
        }
    }

    private void P0(final AppBarLayout appBarLayout) {
        if (!H0() || this.f54903r || this.f54905t <= 0.0f) {
            return;
        }
        this.f54903r = true;
        this.f54905t = 0.0f;
        if (this.f54902q) {
            ValueAnimator duration = ValueAnimator.ofFloat(this.f54904s, 1.0f).setDuration(300L);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f54970a.I0(appBarLayout, valueAnimator);
                }
            });
            duration.addListener(new c());
            duration.start();
            return;
        }
        this.f54910y.setScaleX(1.0f);
        this.f54910y.setScaleY(1.0f);
        O0(appBarLayout, 0);
        this.f54903r = false;
        d dVar = this.B;
        if (dVar != null) {
            dVar.a(0.0f, true);
        }
    }

    private boolean Q0(AppBarLayout appBarLayout, View view, int i10) {
        if (this.f54903r || !H0() || ((i10 >= 0 || appBarLayout.getBottom() < this.f54907v) && (i10 <= 0 || appBarLayout.getBottom() <= this.f54907v))) {
            return false;
        }
        float f10 = this.f54905t + (-i10);
        this.f54905t = f10;
        float fMin = Math.min(f10, 500.0f);
        this.f54905t = fMin;
        float fMax = Math.max(1.0f, (fMin / 500.0f) + 1.0f);
        this.f54904s = fMax;
        this.f54906u = (int) ((this.f54908w / 2) * (fMax - 1.0f));
        this.f54910y.setScaleX(fMax);
        this.f54910y.setScaleY(this.f54904s);
        O0(appBarLayout, this.f54906u);
        view.setScrollY(0);
        if (this.B == null) {
            return true;
        }
        this.B.a(Math.min((this.f54904s - 1.0f) / 0.3f, 1.0f), false);
        return true;
    }

    private void R0() {
        u0(new a());
    }

    private void T0(int i10, AppBarLayout appBarLayout, View view, int i11) {
        if (i11 == 1) {
            int iE = E();
            if ((i10 >= 0 || iE != 0) && (i10 <= 0 || iE != (-appBarLayout.getTotalScrollRange()))) {
                return;
            }
            ViewCompat.stopNestedScroll(view, 1);
        }
    }

    public boolean G0(int i10) {
        View view = this.A;
        return view == null || i10 < view.getTop();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0076  */
    @Override
    public boolean k(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        int iFindPointerIndex;
        wf.a.f74274a.c("FixAppBarLayoutBehavior", "---onInterceptTouchEvent isOnInterceptTouchEvent: " + super.k(coordinatorLayout, appBarLayout, motionEvent), false);
        if (!H0()) {
            return super.k(coordinatorLayout, appBarLayout, motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.D < 0) {
            this.D = ViewConfiguration.get(appBarLayout.getContext()).getScaledTouchSlop();
        }
        if (actionMasked == 0) {
            this.E = false;
            if (coordinatorLayout.isPointInChildBounds(appBarLayout, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                this.C = motionEvent.getPointerId(0);
                this.G = (int) (motionEvent.getY() + 0.5f);
                if (this.F == null) {
                    this.F = VelocityTracker.obtain();
                }
            }
        } else if (actionMasked == 1) {
            this.E = false;
            this.C = -1;
            velocityTracker = this.F;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.F = null;
            }
        } else if (actionMasked == 2) {
            int i10 = this.C;
            if (i10 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i10)) >= 0) {
                int y10 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                if (Math.abs(this.G - y10) > this.D) {
                    this.E = true;
                    this.G = y10;
                    return true;
                }
            }
        } else if (actionMasked == 3) {
            this.E = false;
            this.C = -1;
            velocityTracker = this.F;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.F = null;
            }
        }
        VelocityTracker velocityTracker2 = this.F;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        return super.k(coordinatorLayout, appBarLayout, motionEvent);
    }

    @Override
    public boolean o(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, float f10, float f11) {
        if (f11 > 100.0f) {
            this.f54902q = false;
        }
        return super.o(coordinatorLayout, appBarLayout, view, f10, f11);
    }

    @Override
    public void s(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10, int i11, int i12, int i13, int i14) {
        super.s(coordinatorLayout, appBarLayout, view, i10, i11, i12, i13, i14);
        T0(i13, appBarLayout, view, i14);
    }

    @Override
    public boolean D(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, MotionEvent motionEvent) {
        wf.a.f74274a.c("FixAppBarLayoutBehavior", appBarLayout.getScrollY() + "   onTouchEvent " + motionEvent.toString(), false);
        if (H0() && M0(appBarLayout, motionEvent)) {
            return true;
        }
        return super.D(coordinatorLayout, appBarLayout, motionEvent);
    }

    public void S0(d dVar) {
        this.B = dVar;
    }

    @Override
    public boolean l(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i10) {
        boolean zL = super.l(coordinatorLayout, appBarLayout, i10);
        if (this.f54910y == null) {
            View viewFindViewWithTag = coordinatorLayout.findViewWithTag("largeScale");
            this.f54910y = viewFindViewWithTag;
            if (viewFindViewWithTag != null) {
                appBarLayout.setClipChildren(false);
                this.f54908w = this.f54910y.getHeight();
            }
        }
        if (this.f54911z == null) {
            this.f54911z = (ViewPager2) coordinatorLayout.findViewWithTag("viewPager");
            D0();
        }
        if (this.A == null) {
            this.A = coordinatorLayout.findViewWithTag("emptyView");
        }
        this.f54907v = appBarLayout.getHeight();
        this.f54909x = null;
        return zL;
    }

    @Override
    public void q(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10, int i11, int[] iArr, int i12) {
        if (E0() && Q0(appBarLayout, view, i11)) {
            return;
        }
        super.q(coordinatorLayout, appBarLayout, view, i10, i11, iArr, i12);
        T0(i11, appBarLayout, view, i12);
    }

    @Override
    public boolean A(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i10, int i11) {
        this.f54902q = true;
        return super.A(coordinatorLayout, appBarLayout, view, view2, i10, i11);
    }

    @Override
    public void C(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10) {
        if (H0()) {
            P0(appBarLayout);
        }
        super.C(coordinatorLayout, appBarLayout, view, i10);
    }

    public FixAppBarLayoutBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f54903r = false;
        this.f54909x = null;
        this.C = -1;
        this.D = -1;
        this.E = false;
        R0();
    }
}
