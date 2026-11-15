package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$integer;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class AppBarLayout extends LinearLayout implements CoordinatorLayout.b {

    private static final int f27347z = R$style.Widget_Design_AppBarLayout;

    private int f27348a;

    private int f27349b;

    private int f27350c;

    private int f27351d;

    private boolean f27352e;

    private int f27353f;

    private WindowInsetsCompat f27354g;

    private List f27355h;

    private boolean f27356i;

    private boolean f27357j;

    private boolean f27358k;

    private boolean f27359l;

    private int f27360m;

    private WeakReference f27361n;

    private final boolean f27362o;

    private ValueAnimator f27363p;

    private ValueAnimator.AnimatorUpdateListener f27364q;

    private final List f27365r;

    private final long f27366s;

    private final TimeInterpolator f27367t;

    private int[] f27368u;

    private Drawable f27369v;

    private Integer f27370w;

    private final float f27371x;

    private Behavior f27372y;

    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior {

        private int f27373k;

        private int f27374l;

        private ValueAnimator f27375m;

        private SavedState f27376n;

        private WeakReference f27377o;

        private c f27378p;

        class a implements ValueAnimator.AnimatorUpdateListener {

            final CoordinatorLayout f27379a;

            final AppBarLayout f27380b;

            a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
                this.f27379a = coordinatorLayout;
                this.f27380b = appBarLayout;
            }

            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseBehavior.this.P(this.f27379a, this.f27380b, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        }

        class b extends AccessibilityDelegateCompat {

            final AppBarLayout f27382a;

            final CoordinatorLayout f27383b;

            b(AppBarLayout appBarLayout, CoordinatorLayout coordinatorLayout) {
                this.f27382a = appBarLayout;
                this.f27383b = coordinatorLayout;
            }

            @Override
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                View viewF0;
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
                if (this.f27382a.getTotalScrollRange() == 0 || (viewF0 = BaseBehavior.this.f0(this.f27383b)) == null || !BaseBehavior.this.b0(this.f27382a)) {
                    return;
                }
                if (BaseBehavior.this.M() != (-this.f27382a.getTotalScrollRange())) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                    accessibilityNodeInfoCompat.setScrollable(true);
                }
                if (BaseBehavior.this.M() != 0) {
                    if (!viewF0.canScrollVertically(-1)) {
                        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                        accessibilityNodeInfoCompat.setScrollable(true);
                    } else if ((-this.f27382a.getDownNestedPreScrollRange()) != 0) {
                        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                        accessibilityNodeInfoCompat.setScrollable(true);
                    }
                }
            }

            @Override
            public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
                if (i10 == 4096) {
                    this.f27382a.setExpanded(false);
                    return true;
                }
                if (i10 != 8192) {
                    return super.performAccessibilityAction(view, i10, bundle);
                }
                if (BaseBehavior.this.M() != 0) {
                    View viewF0 = BaseBehavior.this.f0(this.f27383b);
                    if (!viewF0.canScrollVertically(-1)) {
                        this.f27382a.setExpanded(true);
                        return true;
                    }
                    int i11 = -this.f27382a.getDownNestedPreScrollRange();
                    if (i11 != 0) {
                        BaseBehavior.this.q(this.f27383b, this.f27382a, viewF0, 0, i11, new int[]{0, 0}, 1);
                        return true;
                    }
                }
                return false;
            }
        }

        public static abstract class c {
            public abstract boolean a(AppBarLayout appBarLayout);
        }

        public BaseBehavior() {
        }

        private void U(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            if (ViewCompat.hasAccessibilityDelegate(coordinatorLayout)) {
                return;
            }
            ViewCompat.setAccessibilityDelegate(coordinatorLayout, new b(appBarLayout, coordinatorLayout));
        }

        private void V(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i10, float f10) {
            int iAbs = Math.abs(M() - i10);
            float fAbs = Math.abs(f10);
            W(coordinatorLayout, appBarLayout, i10, fAbs > 0.0f ? Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / appBarLayout.getHeight()) + 1.0f) * 150.0f));
        }

        private void W(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i10, int i11) {
            int iM = M();
            if (iM == i10) {
                ValueAnimator valueAnimator = this.f27375m;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f27375m.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.f27375m;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f27375m = valueAnimator3;
                valueAnimator3.setInterpolator(qa.a.f69581e);
                this.f27375m.addUpdateListener(new a(coordinatorLayout, appBarLayout));
            } else {
                valueAnimator2.cancel();
            }
            this.f27375m.setDuration(Math.min(i11, 600));
            this.f27375m.setIntValues(iM, i10);
            this.f27375m.start();
        }

        private int X(int i10, int i11, int i12) {
            return i10 < (i11 + i12) / 2 ? i11 : i12;
        }

        private boolean Z(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view) {
            return appBarLayout.j() && coordinatorLayout.getHeight() - view.getHeight() <= appBarLayout.getHeight();
        }

        private static boolean a0(int i10, int i11) {
            return (i10 & i11) == i11;
        }

        public boolean b0(AppBarLayout appBarLayout) {
            int childCount = appBarLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                if (((e) appBarLayout.getChildAt(i10).getLayoutParams()).f27388a != 0) {
                    return true;
                }
            }
            return false;
        }

        private View c0(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if ((childAt instanceof NestedScrollingChild) || (childAt instanceof AbsListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        private static View d0(AppBarLayout appBarLayout, int i10) {
            int iAbs = Math.abs(i10);
            int childCount = appBarLayout.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = appBarLayout.getChildAt(i11);
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        private int e0(AppBarLayout appBarLayout, int i10) {
            int childCount = appBarLayout.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = appBarLayout.getChildAt(i11);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                e eVar = (e) childAt.getLayoutParams();
                if (a0(eVar.c(), 32)) {
                    top -= ((LinearLayout.LayoutParams) eVar).topMargin;
                    bottom += ((LinearLayout.LayoutParams) eVar).bottomMargin;
                }
                int i12 = -i10;
                if (top <= i12 && bottom >= i12) {
                    return i11;
                }
            }
            return -1;
        }

        public View f0(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if (((CoordinatorLayout.f) childAt.getLayoutParams()).f() instanceof ScrollingViewBehavior) {
                    return childAt;
                }
            }
            return null;
        }

        private int i0(AppBarLayout appBarLayout, int i10) {
            int iAbs = Math.abs(i10);
            int childCount = appBarLayout.getChildCount();
            int topInset = 0;
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = appBarLayout.getChildAt(i11);
                e eVar = (e) childAt.getLayoutParams();
                Interpolator interpolatorD = eVar.d();
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    if (interpolatorD == null) {
                        break;
                    }
                    int iC = eVar.c();
                    if ((iC & 1) != 0) {
                        topInset = childAt.getHeight() + ((LinearLayout.LayoutParams) eVar).topMargin + ((LinearLayout.LayoutParams) eVar).bottomMargin;
                        if ((iC & 2) != 0) {
                            topInset -= ViewCompat.getMinimumHeight(childAt);
                        }
                    }
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        topInset -= appBarLayout.getTopInset();
                    }
                    if (topInset <= 0) {
                        break;
                    }
                    float f10 = topInset;
                    return Integer.signum(i10) * (childAt.getTop() + Math.round(f10 * interpolatorD.getInterpolation((iAbs - childAt.getTop()) / f10)));
                }
            }
            return i10;
        }

        private boolean w0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            List<View> dependents = coordinatorLayout.getDependents(appBarLayout);
            int size = dependents.size();
            for (int i10 = 0; i10 < size; i10++) {
                CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) dependents.get(i10).getLayoutParams()).f();
                if (cVarF instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) cVarF).K() != 0;
                }
            }
            return false;
        }

        private void x0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            int topInset = appBarLayout.getTopInset() + appBarLayout.getPaddingTop();
            int iM = M() - topInset;
            int iE0 = e0(appBarLayout, iM);
            if (iE0 >= 0) {
                View childAt = appBarLayout.getChildAt(iE0);
                e eVar = (e) childAt.getLayoutParams();
                int iC = eVar.c();
                if ((iC & 17) == 17) {
                    int topInset2 = -childAt.getTop();
                    int minimumHeight = -childAt.getBottom();
                    if (iE0 == 0 && ViewCompat.getFitsSystemWindows(appBarLayout) && ViewCompat.getFitsSystemWindows(childAt)) {
                        topInset2 -= appBarLayout.getTopInset();
                    }
                    if (a0(iC, 2)) {
                        minimumHeight += ViewCompat.getMinimumHeight(childAt);
                    } else if (a0(iC, 5)) {
                        int minimumHeight2 = ViewCompat.getMinimumHeight(childAt) + minimumHeight;
                        if (iM < minimumHeight2) {
                            topInset2 = minimumHeight2;
                        } else {
                            minimumHeight = minimumHeight2;
                        }
                    }
                    if (a0(iC, 32)) {
                        topInset2 += ((LinearLayout.LayoutParams) eVar).topMargin;
                        minimumHeight -= ((LinearLayout.LayoutParams) eVar).bottomMargin;
                    }
                    V(coordinatorLayout, appBarLayout, d1.a.b(X(iM, minimumHeight, topInset2) + topInset, -appBarLayout.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        private void y0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i10, int i11, boolean z10) {
            View viewD0 = d0(appBarLayout, i10);
            boolean zY = false;
            if (viewD0 != null) {
                int iC = ((e) viewD0.getLayoutParams()).c();
                if ((iC & 1) != 0) {
                    int minimumHeight = ViewCompat.getMinimumHeight(viewD0);
                    if (i11 <= 0 || (iC & 12) == 0 ? !((iC & 2) == 0 || (-i10) < (viewD0.getBottom() - minimumHeight) - appBarLayout.getTopInset()) : (-i10) >= (viewD0.getBottom() - minimumHeight) - appBarLayout.getTopInset()) {
                        zY = true;
                    }
                }
            }
            if (appBarLayout.isLiftOnScroll()) {
                zY = appBarLayout.y(c0(coordinatorLayout));
            }
            boolean zV = appBarLayout.v(zY);
            if (z10 || (zV && w0(coordinatorLayout, appBarLayout))) {
                if (appBarLayout.getBackground() != null) {
                    appBarLayout.getBackground().jumpToCurrentState();
                }
                if (appBarLayout.getForeground() != null) {
                    appBarLayout.getForeground().jumpToCurrentState();
                }
                if (appBarLayout.getStateListAnimator() != null) {
                    appBarLayout.getStateListAnimator().jumpToCurrentState();
                }
            }
        }

        @Override
        int M() {
            return E() + this.f27373k;
        }

        @Override
        public boolean H(AppBarLayout appBarLayout) {
            c cVar = this.f27378p;
            if (cVar != null) {
                return cVar.a(appBarLayout);
            }
            WeakReference weakReference = this.f27377o;
            if (weakReference == null) {
                return true;
            }
            View view = (View) weakReference.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        @Override
        public int K(AppBarLayout appBarLayout) {
            return (-appBarLayout.getDownNestedScrollRange()) + appBarLayout.getTopInset();
        }

        @Override
        public int L(AppBarLayout appBarLayout) {
            return appBarLayout.getTotalScrollRange();
        }

        @Override
        public void N(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            x0(coordinatorLayout, appBarLayout);
            if (appBarLayout.isLiftOnScroll()) {
                appBarLayout.v(appBarLayout.y(c0(coordinatorLayout)));
            }
        }

        @Override
        public boolean l(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i10) {
            boolean zL = super.l(coordinatorLayout, appBarLayout, i10);
            int pendingAction = appBarLayout.getPendingAction();
            SavedState savedState = this.f27376n;
            if (savedState == null || (pendingAction & 8) != 0) {
                if (pendingAction != 0) {
                    boolean z10 = (pendingAction & 4) != 0;
                    if ((pendingAction & 2) != 0) {
                        int i11 = -appBarLayout.getUpNestedPreScrollRange();
                        if (z10) {
                            V(coordinatorLayout, appBarLayout, i11, 0.0f);
                        } else {
                            P(coordinatorLayout, appBarLayout, i11);
                        }
                    } else if ((pendingAction & 1) != 0) {
                        if (z10) {
                            V(coordinatorLayout, appBarLayout, 0, 0.0f);
                        } else {
                            P(coordinatorLayout, appBarLayout, 0);
                        }
                    }
                }
            } else if (savedState.fullyScrolled) {
                P(coordinatorLayout, appBarLayout, -appBarLayout.getTotalScrollRange());
            } else if (savedState.fullyExpanded) {
                P(coordinatorLayout, appBarLayout, 0);
            } else {
                View childAt = appBarLayout.getChildAt(savedState.firstVisibleChildIndex);
                P(coordinatorLayout, appBarLayout, (-childAt.getBottom()) + (this.f27376n.firstVisibleChildAtMinimumHeight ? ViewCompat.getMinimumHeight(childAt) + appBarLayout.getTopInset() : Math.round(childAt.getHeight() * this.f27376n.firstVisibleChildPercentageShown)));
            }
            appBarLayout.s();
            this.f27376n = null;
            G(d1.a.b(E(), -appBarLayout.getTotalScrollRange(), 0));
            y0(coordinatorLayout, appBarLayout, E(), 0, true);
            appBarLayout.q(E());
            U(coordinatorLayout, appBarLayout);
            return zL;
        }

        @Override
        public boolean m(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i10, int i11, int i12, int i13) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) appBarLayout.getLayoutParams())).height != -2) {
                return super.m(coordinatorLayout, appBarLayout, i10, i11, i12, i13);
            }
            coordinatorLayout.onMeasureChild(appBarLayout, i10, i11, View.MeasureSpec.makeMeasureSpec(0, 0), i13);
            return true;
        }

        @Override
        public void q(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10, int i11, int[] iArr, int i12) {
            int i13;
            int downNestedPreScrollRange;
            if (i11 != 0) {
                if (i11 < 0) {
                    i13 = -appBarLayout.getTotalScrollRange();
                    downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange() + i13;
                } else {
                    i13 = -appBarLayout.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                int i14 = i13;
                int i15 = downNestedPreScrollRange;
                if (i14 != i15) {
                    iArr[1] = O(coordinatorLayout, appBarLayout, i11, i14, i15);
                }
            }
            if (appBarLayout.isLiftOnScroll()) {
                appBarLayout.v(appBarLayout.y(view));
            }
        }

        @Override
        public void t(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            if (i13 < 0) {
                iArr[1] = O(coordinatorLayout, appBarLayout, i13, -appBarLayout.getDownNestedScrollRange(), 0);
            }
            if (i13 == 0) {
                U(coordinatorLayout, appBarLayout);
            }
        }

        @Override
        public void x(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                s0((SavedState) parcelable, true);
                super.x(coordinatorLayout, appBarLayout, this.f27376n.getSuperState());
            } else {
                super.x(coordinatorLayout, appBarLayout, parcelable);
                this.f27376n = null;
            }
        }

        @Override
        public Parcelable y(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            Parcelable parcelableY = super.y(coordinatorLayout, appBarLayout);
            SavedState savedStateT0 = t0(parcelableY, appBarLayout);
            return savedStateT0 == null ? parcelableY : savedStateT0;
        }

        @Override
        public boolean A(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i10, int i11) {
            ValueAnimator valueAnimator;
            boolean z10 = (i10 & 2) != 0 && (appBarLayout.isLiftOnScroll() || Z(coordinatorLayout, appBarLayout, view));
            if (z10 && (valueAnimator = this.f27375m) != null) {
                valueAnimator.cancel();
            }
            this.f27377o = null;
            this.f27374l = i11;
            return z10;
        }

        @Override
        public void C(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10) {
            if (this.f27374l == 0 || i10 == 1) {
                x0(coordinatorLayout, appBarLayout);
                if (appBarLayout.isLiftOnScroll()) {
                    appBarLayout.v(appBarLayout.y(view));
                }
            }
            this.f27377o = new WeakReference(view);
        }

        void s0(SavedState savedState, boolean z10) {
            if (this.f27376n == null || z10) {
                this.f27376n = savedState;
            }
        }

        SavedState t0(Parcelable parcelable, AppBarLayout appBarLayout) {
            int iE = E();
            int childCount = appBarLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = appBarLayout.getChildAt(i10);
                int bottom = childAt.getBottom() + iE;
                if (childAt.getTop() + iE <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = AbsSavedState.EMPTY_STATE;
                    }
                    SavedState savedState = new SavedState(parcelable);
                    boolean z10 = iE == 0;
                    savedState.fullyExpanded = z10;
                    savedState.fullyScrolled = !z10 && (-iE) >= appBarLayout.getTotalScrollRange();
                    savedState.firstVisibleChildIndex = i10;
                    savedState.firstVisibleChildAtMinimumHeight = bottom == ViewCompat.getMinimumHeight(childAt) + appBarLayout.getTopInset();
                    savedState.firstVisibleChildPercentageShown = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return null;
        }

        public void u0(c cVar) {
            this.f27378p = cVar;
        }

        @Override
        public int Q(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i10, int i11, int i12) {
            int iM = M();
            int i13 = 0;
            if (i11 == 0 || iM < i11 || iM > i12) {
                this.f27373k = 0;
            } else {
                int iB = d1.a.b(i10, i11, i12);
                if (iM != iB) {
                    int iI0 = appBarLayout.h() ? i0(appBarLayout, iB) : iB;
                    boolean zG = G(iI0);
                    int i14 = iM - iB;
                    this.f27373k = iB - iI0;
                    if (zG) {
                        while (i13 < appBarLayout.getChildCount()) {
                            e eVar = (e) appBarLayout.getChildAt(i13).getLayoutParams();
                            c cVarB = eVar.b();
                            if (cVarB != null && (eVar.c() & 1) != 0) {
                                cVarB.a(appBarLayout, appBarLayout.getChildAt(i13), E());
                            }
                            i13++;
                        }
                    }
                    if (!zG && appBarLayout.h()) {
                        coordinatorLayout.dispatchDependentViewsChanged(appBarLayout);
                    }
                    appBarLayout.q(E());
                    y0(coordinatorLayout, appBarLayout, iB, iB < iM ? -1 : 1, false);
                    i13 = i14;
                }
            }
            U(coordinatorLayout, appBarLayout);
            return i13;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        protected static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new a();
            boolean firstVisibleChildAtMinimumHeight;
            int firstVisibleChildIndex;
            float firstVisibleChildPercentageShown;
            boolean fullyExpanded;
            boolean fullyScrolled;

            class a implements Parcelable.ClassLoaderCreator {
                a() {
                }

                @Override
                public SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(parcel, null);
                }

                @Override
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                @Override
                public SavedState[] newArray(int i10) {
                    return new SavedState[i10];
                }
            }

            public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.fullyScrolled = parcel.readByte() != 0;
                this.fullyExpanded = parcel.readByte() != 0;
                this.firstVisibleChildIndex = parcel.readInt();
                this.firstVisibleChildPercentageShown = parcel.readFloat();
                this.firstVisibleChildAtMinimumHeight = parcel.readByte() != 0;
            }

            @Override
            public void writeToParcel(@NonNull Parcel parcel, int i10) {
                super.writeToParcel(parcel, i10);
                parcel.writeByte(this.fullyScrolled ? (byte) 1 : (byte) 0);
                parcel.writeByte(this.fullyExpanded ? (byte) 1 : (byte) 0);
                parcel.writeInt(this.firstVisibleChildIndex);
                parcel.writeFloat(this.firstVisibleChildPercentageShown);
                parcel.writeByte(this.firstVisibleChildAtMinimumHeight ? (byte) 1 : (byte) 0);
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }
        }
    }

    public static class Behavior extends BaseBehavior<AppBarLayout> {

        public static abstract class a extends BaseBehavior.c {
        }

        public Behavior() {
        }

        @Override
        public boolean D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return super.D(coordinatorLayout, view, motionEvent);
        }

        @Override
        public int E() {
            return super.E();
        }

        @Override
        public boolean G(int i10) {
            return super.G(i10);
        }

        @Override
        public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return super.k(coordinatorLayout, view, motionEvent);
        }

        @Override
        public boolean l(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i10) {
            return super.l(coordinatorLayout, appBarLayout, i10);
        }

        @Override
        public boolean m(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i10, int i11, int i12, int i13) {
            return super.m(coordinatorLayout, appBarLayout, i10, i11, i12, i13);
        }

        @Override
        public void q(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10, int i11, int[] iArr, int i12) {
            super.q(coordinatorLayout, appBarLayout, view, i10, i11, iArr, i12);
        }

        @Override
        public void t(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            super.t(coordinatorLayout, appBarLayout, view, i10, i11, i12, i13, i14, iArr);
        }

        @Override
        public void x(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            super.x(coordinatorLayout, appBarLayout, parcelable);
        }

        @Override
        public Parcelable y(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            return super.y(coordinatorLayout, appBarLayout);
        }

        @Override
        public boolean A(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i10, int i11) {
            return super.A(coordinatorLayout, appBarLayout, view, view2, i10, i11);
        }

        @Override
        public void C(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10) {
            super.C(coordinatorLayout, appBarLayout, view, i10);
        }

        @Override
        public void u0(BaseBehavior.c cVar) {
            super.u0(cVar);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class ScrollingViewBehavior extends h {
        public ScrollingViewBehavior() {
        }

        private static int R(AppBarLayout appBarLayout) {
            CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) appBarLayout.getLayoutParams()).f();
            if (cVarF instanceof BaseBehavior) {
                return ((BaseBehavior) cVarF).M();
            }
            return 0;
        }

        private void S(View view, View view2) {
            CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) view2.getLayoutParams()).f();
            if (cVarF instanceof BaseBehavior) {
                ViewCompat.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) cVarF).f27373k) + M()) - I(view2));
            }
        }

        private void T(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.isLiftOnScroll()) {
                    appBarLayout.v(appBarLayout.y(view));
                }
            }
        }

        @Override
        float J(View view) {
            int i10;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int iR = R(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + iR > downNestedPreScrollRange) && (i10 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (iR / i10) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override
        int L(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.L(view);
        }

        @Override
        public AppBarLayout H(List list) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = (View) list.get(i10);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override
        public boolean e(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override
        public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            S(view, view2);
            T(view, view2);
            return false;
        }

        @Override
        public void i(CoordinatorLayout coordinatorLayout, View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                ViewCompat.setAccessibilityDelegate(coordinatorLayout, null);
            }
        }

        @Override
        public boolean l(CoordinatorLayout coordinatorLayout, View view, int i10) {
            return super.l(coordinatorLayout, view, i10);
        }

        @Override
        public boolean m(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int i13) {
            return super.m(coordinatorLayout, view, i10, i11, i12, i13);
        }

        @Override
        public boolean w(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z10) {
            AppBarLayout appBarLayoutH = H(coordinatorLayout.getDependencies(view));
            if (appBarLayoutH != null) {
                Rect rect2 = new Rect(rect);
                rect2.offset(view.getLeft(), view.getTop());
                Rect rect3 = this.f27440d;
                rect3.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect3.contains(rect2)) {
                    appBarLayoutH.setExpanded(false, !z10);
                    return true;
                }
            }
            return false;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ScrollingViewBehavior_Layout);
            O(typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return AppBarLayout.this.r(windowInsetsCompat);
        }
    }

    public interface b {
        void onOffsetChanged(AppBarLayout appBarLayout, int i10);
    }

    public static abstract class c {
        public abstract void a(AppBarLayout appBarLayout, View view, float f10);
    }

    public static class d extends c {

        private final Rect f27386a = new Rect();

        private final Rect f27387b = new Rect();

        private static void b(Rect rect, AppBarLayout appBarLayout, View view) {
            view.getDrawingRect(rect);
            appBarLayout.offsetDescendantRectToMyCoords(view, rect);
            rect.offset(0, -appBarLayout.getTopInset());
        }

        @Override
        public void a(AppBarLayout appBarLayout, View view, float f10) {
            b(this.f27386a, appBarLayout, view);
            float fAbs = this.f27386a.top - Math.abs(f10);
            if (fAbs > 0.0f) {
                ViewCompat.setClipBounds(view, null);
                view.setTranslationY(0.0f);
                view.setVisibility(0);
                return;
            }
            float fA = 1.0f - d1.a.a(Math.abs(fAbs / this.f27386a.height()), 0.0f, 1.0f);
            float fHeight = (-fAbs) - ((this.f27386a.height() * 0.3f) * (1.0f - (fA * fA)));
            view.setTranslationY(fHeight);
            view.getDrawingRect(this.f27387b);
            this.f27387b.offset(0, (int) (-fHeight));
            if (fHeight >= this.f27387b.height()) {
                view.setVisibility(4);
            } else {
                view.setVisibility(0);
            }
            ViewCompat.setClipBounds(view, this.f27387b);
        }
    }

    public interface f {
    }

    public interface g extends b {
    }

    public AppBarLayout(@NonNull Context context) {
        this(context, null);
    }

    private void A(float f10, float f11) {
        ValueAnimator valueAnimator = this.f27363p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f10, f11);
        this.f27363p = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.f27366s);
        this.f27363p.setInterpolator(this.f27367t);
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f27364q;
        if (animatorUpdateListener != null) {
            this.f27363p.addUpdateListener(animatorUpdateListener);
        }
        this.f27363p.start();
    }

    private void B() {
        setWillNotDraw(!x());
    }

    private void c() {
        WeakReference weakReference = this.f27361n;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f27361n = null;
    }

    private Integer d() {
        Drawable drawable = this.f27369v;
        if (drawable instanceof cb.i) {
            return Integer.valueOf(((cb.i) drawable).C());
        }
        ColorStateList colorStateListG = com.google.android.material.drawable.d.g(drawable);
        if (colorStateListG != null) {
            return Integer.valueOf(colorStateListG.getDefaultColor());
        }
        return null;
    }

    private View e(View view) {
        int i10;
        if (this.f27361n == null && (i10 = this.f27360m) != -1) {
            View viewFindViewById = view != null ? view.findViewById(i10) : null;
            if (viewFindViewById == null && (getParent() instanceof ViewGroup)) {
                viewFindViewById = ((ViewGroup) getParent()).findViewById(this.f27360m);
            }
            if (viewFindViewById != null) {
                this.f27361n = new WeakReference(viewFindViewById);
            }
        }
        WeakReference weakReference = this.f27361n;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    private boolean i() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (((e) getChildAt(i10).getLayoutParams()).e()) {
                return true;
            }
        }
        return false;
    }

    private void k(final cb.i iVar, final ColorStateList colorStateList, final ColorStateList colorStateList2) {
        final Integer numF = com.google.android.material.color.b.f(getContext(), R$attr.colorSurface);
        this.f27364q = new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f27433a.o(colorStateList, colorStateList2, iVar, numF, valueAnimator);
            }
        };
        ViewCompat.setBackground(this, iVar);
    }

    private void l(Context context, final cb.i iVar) {
        iVar.S(context);
        this.f27364q = new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f27438a.p(iVar, valueAnimator);
            }
        };
        ViewCompat.setBackground(this, iVar);
    }

    private void m() {
        Behavior behavior = this.f27372y;
        BaseBehavior.SavedState savedStateT0 = (behavior == null || this.f27349b == -1 || this.f27353f != 0) ? null : behavior.t0(AbsSavedState.EMPTY_STATE, this);
        this.f27349b = -1;
        this.f27350c = -1;
        this.f27351d = -1;
        if (savedStateT0 != null) {
            this.f27372y.s0(savedStateT0, false);
        }
    }

    private boolean n() {
        return getBackground() instanceof cb.i;
    }

    public void o(ColorStateList colorStateList, ColorStateList colorStateList2, cb.i iVar, Integer num, ValueAnimator valueAnimator) {
        Integer num2;
        int iJ = com.google.android.material.color.b.j(colorStateList.getDefaultColor(), colorStateList2.getDefaultColor(), ((Float) valueAnimator.getAnimatedValue()).floatValue());
        iVar.d0(ColorStateList.valueOf(iJ));
        if (this.f27369v != null && (num2 = this.f27370w) != null && num2.equals(num)) {
            a1.a.n(this.f27369v, iJ);
        }
        if (this.f27365r.isEmpty()) {
            return;
        }
        Iterator it = this.f27365r.iterator();
        while (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            if (iVar.z() != null) {
                throw null;
            }
        }
    }

    public void p(cb.i iVar, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        iVar.c0(fFloatValue);
        Drawable drawable = this.f27369v;
        if (drawable instanceof cb.i) {
            ((cb.i) drawable).c0(fFloatValue);
        }
        Iterator it = this.f27365r.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            iVar.C();
            throw null;
        }
    }

    private void t(boolean z10, boolean z11, boolean z12) {
        this.f27353f = (z10 ? 1 : 2) | (z11 ? 4 : 0) | (z12 ? 8 : 0);
        requestLayout();
    }

    private boolean u(boolean z10) {
        if (this.f27357j == z10) {
            return false;
        }
        this.f27357j = z10;
        refreshDrawableState();
        return true;
    }

    private boolean x() {
        return this.f27369v != null && getTopInset() > 0;
    }

    private boolean z() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        return (childAt.getVisibility() == 8 || ViewCompat.getFitsSystemWindows(childAt)) ? false : true;
    }

    public void addLiftOnScrollListener(@NonNull f fVar) {
        this.f27365r.add(fVar);
    }

    public void addOnOffsetChangedListener(@Nullable b bVar) {
        if (this.f27355h == null) {
            this.f27355h = new ArrayList();
        }
        if (bVar == null || this.f27355h.contains(bVar)) {
            return;
        }
        this.f27355h.add(bVar);
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e;
    }

    public void clearLiftOnScrollListener() {
        this.f27365r.clear();
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (x()) {
            int iSave = canvas.save();
            canvas.translate(0.0f, -this.f27348a);
            this.f27369v.draw(canvas);
            canvas.restoreToCount(iSave);
        }
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f27369v;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    @Override
    public e generateDefaultLayoutParams() {
        return new e(-1, -2);
    }

    @Override
    public e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new e((LinearLayout.LayoutParams) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new e((ViewGroup.MarginLayoutParams) layoutParams) : new e(layoutParams);
    }

    @Override
    @NonNull
    public CoordinatorLayout.c getBehavior() {
        Behavior behavior = new Behavior();
        this.f27372y = behavior;
        return behavior;
    }

    int getDownNestedPreScrollRange() {
        int iMin;
        int minimumHeight;
        int i10 = this.f27350c;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i12 = eVar.f27388a;
                if ((i12 & 5) != 5) {
                    if (i11 > 0) {
                        break;
                    }
                } else {
                    int i13 = ((LinearLayout.LayoutParams) eVar).topMargin + ((LinearLayout.LayoutParams) eVar).bottomMargin;
                    if ((i12 & 8) != 0) {
                        minimumHeight = ViewCompat.getMinimumHeight(childAt);
                    } else {
                        if ((i12 & 2) != 0) {
                            minimumHeight = measuredHeight - ViewCompat.getMinimumHeight(childAt);
                        } else {
                            iMin = i13 + measuredHeight;
                        }
                        if (childCount == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                            iMin = Math.min(iMin, measuredHeight - getTopInset());
                        }
                        i11 += iMin;
                    }
                    iMin = i13 + minimumHeight;
                    if (childCount == 0) {
                        iMin = Math.min(iMin, measuredHeight - getTopInset());
                    }
                    i11 += iMin;
                }
            }
        }
        int iMax = Math.max(0, i11);
        this.f27350c = iMax;
        return iMax;
    }

    int getDownNestedScrollRange() {
        int i10 = this.f27351d;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int minimumHeight = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) eVar).topMargin + ((LinearLayout.LayoutParams) eVar).bottomMargin;
                int i12 = eVar.f27388a;
                if ((i12 & 1) == 0) {
                    break;
                }
                minimumHeight += measuredHeight;
                if ((i12 & 2) != 0) {
                    minimumHeight -= ViewCompat.getMinimumHeight(childAt);
                    break;
                }
            }
        }
        int iMax = Math.max(0, minimumHeight);
        this.f27351d = iMax;
        return iMax;
    }

    public int getLiftOnScrollTargetViewId() {
        return this.f27360m;
    }

    @Nullable
    public cb.i getMaterialShapeBackground() {
        Drawable background = getBackground();
        if (background instanceof cb.i) {
            return (cb.i) background;
        }
        return null;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount >= 1 ? ViewCompat.getMinimumHeight(getChildAt(childCount - 1)) : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + topInset;
    }

    int getPendingAction() {
        return this.f27353f;
    }

    @Nullable
    public Drawable getStatusBarForeground() {
        return this.f27369v;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.f27354g;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.getSystemWindowInsetTop();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i10 = this.f27349b;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int minimumHeight = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i12 = eVar.f27388a;
                if ((i12 & 1) == 0) {
                    break;
                }
                minimumHeight += measuredHeight + ((LinearLayout.LayoutParams) eVar).topMargin + ((LinearLayout.LayoutParams) eVar).bottomMargin;
                if (i11 == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                    minimumHeight -= getTopInset();
                }
                if ((i12 & 2) != 0) {
                    minimumHeight -= ViewCompat.getMinimumHeight(childAt);
                    break;
                }
            }
        }
        int iMax = Math.max(0, minimumHeight);
        this.f27349b = iMax;
        return iMax;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    boolean h() {
        return this.f27352e;
    }

    public boolean isLiftOnScroll() {
        return this.f27359l;
    }

    public boolean isLifted() {
        return this.f27358k;
    }

    boolean j() {
        return getTotalScrollRange() != 0;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        cb.j.e(this);
    }

    @Override
    protected int[] onCreateDrawableState(int i10) {
        if (this.f27368u == null) {
            this.f27368u = new int[4];
        }
        int[] iArr = this.f27368u;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + iArr.length);
        boolean z10 = this.f27357j;
        int i11 = R$attr.state_liftable;
        if (!z10) {
            i11 = -i11;
        }
        iArr[0] = i11;
        iArr[1] = (z10 && this.f27358k) ? R$attr.state_lifted : -R$attr.state_lifted;
        int i12 = R$attr.state_collapsible;
        if (!z10) {
            i12 = -i12;
        }
        iArr[2] = i12;
        iArr[3] = (z10 && this.f27358k) ? R$attr.state_collapsed : -R$attr.state_collapsed;
        return View.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        boolean z11 = true;
        if (ViewCompat.getFitsSystemWindows(this) && z()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                ViewCompat.offsetTopAndBottom(getChildAt(childCount), topInset);
            }
        }
        m();
        this.f27352e = false;
        int childCount2 = getChildCount();
        for (int i14 = 0; i14 < childCount2; i14++) {
            if (((e) getChildAt(i14).getLayoutParams()).d() != null) {
                this.f27352e = true;
                break;
            }
        }
        Drawable drawable = this.f27369v;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.f27356i) {
            return;
        }
        if (!this.f27359l && !i()) {
            z11 = false;
        }
        u(z11);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        if (mode != 1073741824 && ViewCompat.getFitsSystemWindows(this) && z()) {
            int measuredHeight = getMeasuredHeight();
            if (mode == Integer.MIN_VALUE) {
                measuredHeight = d1.a.b(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i11));
            } else if (mode == 0) {
                measuredHeight += getTopInset();
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        m();
    }

    void q(int i10) {
        this.f27348a = i10;
        if (!willNotDraw()) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        List list = this.f27355h;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                b bVar = (b) this.f27355h.get(i11);
                if (bVar != null) {
                    bVar.onOffsetChanged(this, i10);
                }
            }
        }
    }

    WindowInsetsCompat r(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!androidx.core.util.d.a(this.f27354g, windowInsetsCompat2)) {
            this.f27354g = windowInsetsCompat2;
            B();
            requestLayout();
        }
        return windowInsetsCompat;
    }

    public boolean removeLiftOnScrollListener(@NonNull f fVar) {
        return this.f27365r.remove(fVar);
    }

    public void removeOnOffsetChangedListener(@Nullable b bVar) {
        List list = this.f27355h;
        if (list == null || bVar == null) {
            return;
        }
        list.remove(bVar);
    }

    void s() {
        this.f27353f = 0;
    }

    @Override
    public void setElevation(float f10) {
        super.setElevation(f10);
        cb.j.d(this, f10);
    }

    public void setExpanded(boolean z10) {
        setExpanded(z10, ViewCompat.isLaidOut(this));
    }

    public void setLiftOnScroll(boolean z10) {
        this.f27359l = z10;
    }

    public void setLiftOnScrollTargetView(@Nullable View view) {
        this.f27360m = -1;
        if (view == null) {
            c();
        } else {
            this.f27361n = new WeakReference(view);
        }
    }

    public void setLiftOnScrollTargetViewId(int i10) {
        this.f27360m = i10;
        c();
    }

    public boolean setLiftable(boolean z10) {
        this.f27356i = true;
        return u(z10);
    }

    public void setLiftableOverrideEnabled(boolean z10) {
        this.f27356i = z10;
    }

    public boolean setLifted(boolean z10) {
        return w(z10, true);
    }

    @Override
    public void setOrientation(int i10) {
        if (i10 != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i10);
    }

    public void setStatusBarForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f27369v;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            this.f27369v = drawable != null ? drawable.mutate() : null;
            this.f27370w = d();
            Drawable drawable3 = this.f27369v;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f27369v.setState(getDrawableState());
                }
                a1.a.m(this.f27369v, ViewCompat.getLayoutDirection(this));
                this.f27369v.setVisible(getVisibility() == 0, false);
                this.f27369v.setCallback(this);
            }
            B();
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarForegroundColor(int i10) {
        setStatusBarForeground(new ColorDrawable(i10));
    }

    public void setStatusBarForegroundResource(int i10) {
        setStatusBarForeground(g.a.b(getContext(), i10));
    }

    @Deprecated
    public void setTargetElevation(float f10) {
        k.b(this, f10);
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        Drawable drawable = this.f27369v;
        if (drawable != null) {
            drawable.setVisible(z10, false);
        }
    }

    boolean v(boolean z10) {
        return w(z10, !this.f27356i);
    }

    @Override
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f27369v;
    }

    boolean w(boolean z10, boolean z11) {
        if (!z11 || this.f27358k == z10) {
            return false;
        }
        this.f27358k = z10;
        refreshDrawableState();
        if (!n()) {
            return true;
        }
        if (this.f27362o) {
            A(z10 ? 0.0f : 1.0f, z10 ? 1.0f : 0.0f);
            return true;
        }
        if (!this.f27359l) {
            return true;
        }
        A(z10 ? 0.0f : this.f27371x, z10 ? this.f27371x : 0.0f);
        return true;
    }

    boolean y(View view) {
        View viewE = e(view);
        if (viewE != null) {
            view = viewE;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.appBarLayoutStyle);
    }

    public void setExpanded(boolean z10, boolean z11) {
        t(z10, z11, true);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f27347z;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f27349b = -1;
        this.f27350c = -1;
        this.f27351d = -1;
        this.f27353f = 0;
        this.f27365r = new ArrayList();
        Context context2 = getContext();
        setOrientation(1);
        int i12 = Build.VERSION.SDK_INT;
        if (getOutlineProvider() == ViewOutlineProvider.BACKGROUND) {
            k.a(this);
        }
        k.c(this, attributeSet, i10, i11);
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.AppBarLayout, i10, i11, new int[0]);
        ViewCompat.setBackground(this, typedArrayI.getDrawable(R$styleable.AppBarLayout_android_background));
        ColorStateList colorStateListA = za.c.a(context2, typedArrayI, R$styleable.AppBarLayout_liftOnScrollColor);
        this.f27362o = colorStateListA != null;
        ColorStateList colorStateListG = com.google.android.material.drawable.d.g(getBackground());
        if (colorStateListG != null) {
            cb.i iVar = new cb.i();
            iVar.d0(colorStateListG);
            if (colorStateListA != null) {
                k(iVar, colorStateListG, colorStateListA);
            } else {
                l(context2, iVar);
            }
        }
        this.f27366s = ya.j.f(context2, R$attr.motionDurationMedium2, getResources().getInteger(R$integer.app_bar_elevation_anim_duration));
        this.f27367t = ya.j.g(context2, R$attr.motionEasingStandardInterpolator, qa.a.f69577a);
        if (typedArrayI.hasValue(R$styleable.AppBarLayout_expanded)) {
            t(typedArrayI.getBoolean(R$styleable.AppBarLayout_expanded, false), false, false);
        }
        if (typedArrayI.hasValue(R$styleable.AppBarLayout_elevation)) {
            k.b(this, typedArrayI.getDimensionPixelSize(R$styleable.AppBarLayout_elevation, 0));
        }
        if (i12 >= 26) {
            if (typedArrayI.hasValue(R$styleable.AppBarLayout_android_keyboardNavigationCluster)) {
                setKeyboardNavigationCluster(typedArrayI.getBoolean(R$styleable.AppBarLayout_android_keyboardNavigationCluster, false));
            }
            if (typedArrayI.hasValue(R$styleable.AppBarLayout_android_touchscreenBlocksFocus)) {
                setTouchscreenBlocksFocus(typedArrayI.getBoolean(R$styleable.AppBarLayout_android_touchscreenBlocksFocus, false));
            }
        }
        this.f27371x = getResources().getDimension(R$dimen.design_appbar_elevation);
        this.f27359l = typedArrayI.getBoolean(R$styleable.AppBarLayout_liftOnScroll, false);
        this.f27360m = typedArrayI.getResourceId(R$styleable.AppBarLayout_liftOnScrollTargetViewId, -1);
        setStatusBarForeground(typedArrayI.getDrawable(R$styleable.AppBarLayout_statusBarForeground));
        typedArrayI.recycle();
        ViewCompat.setOnApplyWindowInsetsListener(this, new a());
    }

    public void removeOnOffsetChangedListener(g gVar) {
        removeOnOffsetChangedListener((b) gVar);
    }

    public void addOnOffsetChangedListener(g gVar) {
        addOnOffsetChangedListener((b) gVar);
    }

    @Override
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public static class e extends LinearLayout.LayoutParams {

        int f27388a;

        private c f27389b;

        Interpolator f27390c;

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f27388a = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AppBarLayout_Layout);
            this.f27388a = typedArrayObtainStyledAttributes.getInt(R$styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            f(typedArrayObtainStyledAttributes.getInt(R$styleable.AppBarLayout_Layout_layout_scrollEffect, 0));
            if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f27390c = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        private c a(int i10) {
            if (i10 != 1) {
                return null;
            }
            return new d();
        }

        public c b() {
            return this.f27389b;
        }

        public int c() {
            return this.f27388a;
        }

        public Interpolator d() {
            return this.f27390c;
        }

        boolean e() {
            int i10 = this.f27388a;
            return (i10 & 1) == 1 && (i10 & 10) != 0;
        }

        public void f(int i10) {
            this.f27389b = a(i10);
        }

        public void g(int i10) {
            this.f27388a = i10;
        }

        public e(int i10, int i11) {
            super(i10, i11);
            this.f27388a = 1;
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f27388a = 1;
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f27388a = 1;
        }

        public e(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f27388a = 1;
        }
    }
}
