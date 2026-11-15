package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import cb.i;
import cb.n;
import com.google.android.material.R$animator;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import qa.k;
import ya.j;

public class BottomAppBar extends Toolbar implements CoordinatorLayout.b {
    public static final int FAB_ALIGNMENT_MODE_CENTER = 0;
    public static final int FAB_ALIGNMENT_MODE_END = 1;
    public static final int FAB_ANCHOR_MODE_CRADLE = 1;
    public static final int FAB_ANCHOR_MODE_EMBED = 0;
    public static final int FAB_ANIMATION_MODE_SCALE = 0;
    public static final int FAB_ANIMATION_MODE_SLIDE = 1;
    public static final int MENU_ALIGNMENT_MODE_AUTO = 0;
    public static final int MENU_ALIGNMENT_MODE_START = 1;

    private static final int f27512x0 = R$style.Widget_MaterialComponents_BottomAppBar;

    private static final int f27513y0 = R$attr.motionDurationLong2;

    private static final int f27514z0 = R$attr.motionEasingEmphasizedInterpolator;
    private Integer U;
    private final i V;
    private Animator W;

    private Animator f27515a0;

    private int f27516b0;

    private int f27517c0;

    private int f27518d0;

    private final int f27519e0;

    private int f27520f0;

    private int f27521g0;

    private final boolean f27522h0;

    private boolean f27523i0;

    private final boolean f27524j0;

    private final boolean f27525k0;

    private final boolean f27526l0;

    private int f27527m0;

    private ArrayList f27528n0;

    private int f27529o0;

    private boolean f27530p0;

    private boolean f27531q0;

    private Behavior f27532r0;

    private int f27533s0;

    private int f27534t0;

    private int f27535u0;

    AnimatorListenerAdapter f27536v0;

    k f27537w0;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        int f27543a;

        boolean f27544b;

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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f27543a);
            parcel.writeInt(this.f27544b ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f27543a = parcel.readInt();
            this.f27544b = parcel.readInt() != 0;
        }
    }

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (BottomAppBar.this.f27530p0) {
                return;
            }
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.A0(bottomAppBar.f27516b0, BottomAppBar.this.f27531q0);
        }
    }

    class b implements k {
        b() {
        }

        @Override
        public void a(FloatingActionButton floatingActionButton) {
            BottomAppBar.this.V.e0((floatingActionButton.getVisibility() == 0 && BottomAppBar.this.f27518d0 == 1) ? floatingActionButton.getScaleY() : 0.0f);
        }

        @Override
        public void b(FloatingActionButton floatingActionButton) {
            if (BottomAppBar.this.f27518d0 != 1) {
                return;
            }
            float translationX = floatingActionButton.getTranslationX();
            if (BottomAppBar.this.getTopEdgeTreatment().k() != translationX) {
                BottomAppBar.this.getTopEdgeTreatment().q(translationX);
                BottomAppBar.this.V.invalidateSelf();
            }
            float fMax = Math.max(0.0f, -floatingActionButton.getTranslationY());
            if (BottomAppBar.this.getTopEdgeTreatment().c() != fMax) {
                BottomAppBar.this.getTopEdgeTreatment().l(fMax);
                BottomAppBar.this.V.invalidateSelf();
            }
            BottomAppBar.this.V.e0(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }
    }

    class c implements f0.d {
        c() {
        }

        @Override
        public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, f0.e eVar) {
            boolean z10;
            if (BottomAppBar.this.f27524j0) {
                BottomAppBar.this.f27533s0 = windowInsetsCompat.getSystemWindowInsetBottom();
            }
            boolean z11 = false;
            if (BottomAppBar.this.f27525k0) {
                z10 = BottomAppBar.this.f27535u0 != windowInsetsCompat.getSystemWindowInsetLeft();
                BottomAppBar.this.f27535u0 = windowInsetsCompat.getSystemWindowInsetLeft();
            } else {
                z10 = false;
            }
            if (BottomAppBar.this.f27526l0) {
                boolean z12 = BottomAppBar.this.f27534t0 != windowInsetsCompat.getSystemWindowInsetRight();
                BottomAppBar.this.f27534t0 = windowInsetsCompat.getSystemWindowInsetRight();
                z11 = z12;
            }
            if (z10 || z11) {
                BottomAppBar.this.o0();
                BottomAppBar.this.E0();
                BottomAppBar.this.D0();
            }
            return windowInsetsCompat;
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.s0();
            BottomAppBar.this.W = null;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.t0();
        }
    }

    class e extends FloatingActionButton.b {

        final int f27549a;

        class a extends FloatingActionButton.b {
            a() {
            }

            @Override
            public void b(FloatingActionButton floatingActionButton) {
                BottomAppBar.this.s0();
            }
        }

        e(int i10) {
            this.f27549a = i10;
        }

        @Override
        public void a(FloatingActionButton floatingActionButton) {
            floatingActionButton.setTranslationX(BottomAppBar.this.x0(this.f27549a));
            floatingActionButton.show(new a());
        }
    }

    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.s0();
            BottomAppBar.this.f27530p0 = false;
            BottomAppBar.this.f27515a0 = null;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.t0();
        }
    }

    class g extends AnimatorListenerAdapter {

        public boolean f27553a;

        final ActionMenuView f27554b;

        final int f27555c;

        final boolean f27556d;

        g(ActionMenuView actionMenuView, int i10, boolean z10) {
            this.f27554b = actionMenuView;
            this.f27555c = i10;
            this.f27556d = z10;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            this.f27553a = true;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (this.f27553a) {
                return;
            }
            boolean z10 = BottomAppBar.this.f27529o0 != 0;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.replaceMenu(bottomAppBar.f27529o0);
            BottomAppBar.this.H0(this.f27554b, this.f27555c, this.f27556d, z10);
        }
    }

    class h extends AnimatorListenerAdapter {
        h() {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.f27536v0.onAnimationStart(animator);
            FloatingActionButton floatingActionButtonU0 = BottomAppBar.this.u0();
            if (floatingActionButtonU0 != null) {
                floatingActionButtonU0.setTranslationX(BottomAppBar.this.getFabTranslationX());
            }
        }
    }

    public BottomAppBar(@NonNull Context context) {
        this(context, null);
    }

    public void A0(int i10, boolean z10) {
        if (!ViewCompat.isLaidOut(this)) {
            this.f27530p0 = false;
            replaceMenu(this.f27529o0);
            return;
        }
        Animator animator = this.f27515a0;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!y0()) {
            i10 = 0;
            z10 = false;
        }
        r0(i10, z10, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f27515a0 = animatorSet;
        animatorSet.addListener(new f());
        this.f27515a0.start();
    }

    private void B0(int i10) {
        if (this.f27516b0 == i10 || !ViewCompat.isLaidOut(this)) {
            return;
        }
        Animator animator = this.W;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.f27517c0 == 1) {
            q0(i10, arrayList);
        } else {
            p0(i10, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.setInterpolator(j.g(getContext(), f27514z0, qa.a.f69577a));
        this.W = animatorSet;
        animatorSet.addListener(new d());
        this.W.start();
    }

    private Drawable C0(Drawable drawable) {
        if (drawable == null || this.U == null) {
            return drawable;
        }
        Drawable drawableR = a1.a.r(drawable.mutate());
        a1.a.n(drawableR, this.U.intValue());
        return drawableR;
    }

    public void D0() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.f27515a0 != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (y0()) {
            G0(actionMenuView, this.f27516b0, this.f27531q0);
        } else {
            G0(actionMenuView, 0, false);
        }
    }

    public void E0() {
        getTopEdgeTreatment().q(getFabTranslationX());
        this.V.e0((this.f27531q0 && y0() && this.f27518d0 == 1) ? 1.0f : 0.0f);
        View viewV0 = v0();
        if (viewV0 != null) {
            viewV0.setTranslationY(getFabTranslationY());
            viewV0.setTranslationX(getFabTranslationX());
        }
    }

    private void G0(ActionMenuView actionMenuView, int i10, boolean z10) {
        H0(actionMenuView, i10, z10, false);
    }

    public void H0(final ActionMenuView actionMenuView, final int i10, final boolean z10, boolean z11) {
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                ActionMenuView actionMenuView2 = actionMenuView;
                actionMenuView2.setTranslationX(BottomAppBar.this.w0(actionMenuView2, i10, z10));
            }
        };
        if (z11) {
            actionMenuView.post(runnable);
        } else {
            runnable.run();
        }
    }

    public static void I0(BottomAppBar bottomAppBar, View view) {
        CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
        fVar.f7601d = 17;
        int i10 = bottomAppBar.f27518d0;
        if (i10 == 1) {
            fVar.f7601d = 17 | 48;
        }
        if (i10 == 0) {
            fVar.f7601d |= 80;
        }
    }

    @Nullable
    private ActionMenuView getActionMenuView() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    public int getBottomInset() {
        return this.f27533s0;
    }

    private int getFabAlignmentAnimationDuration() {
        return j.f(getContext(), f27513y0, 300);
    }

    public float getFabTranslationX() {
        return x0(this.f27516b0);
    }

    private float getFabTranslationY() {
        if (this.f27518d0 == 1) {
            return -getTopEdgeTreatment().c();
        }
        View viewV0 = v0();
        return viewV0 != null ? (-((getMeasuredHeight() + getBottomInset()) - viewV0.getMeasuredHeight())) / 2 : 0;
    }

    public int getLeftInset() {
        return this.f27535u0;
    }

    public int getRightInset() {
        return this.f27534t0;
    }

    @NonNull
    public com.google.android.material.bottomappbar.d getTopEdgeTreatment() {
        return (com.google.android.material.bottomappbar.d) this.V.G().p();
    }

    public void n0(FloatingActionButton floatingActionButton) {
        floatingActionButton.addOnHideAnimationListener(this.f27536v0);
        floatingActionButton.addOnShowAnimationListener(new h());
        floatingActionButton.addTransformationCallback(this.f27537w0);
    }

    public void o0() {
        Animator animator = this.f27515a0;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.W;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    private void q0(int i10, List list) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(u0(), "translationX", x0(i10));
        objectAnimatorOfFloat.setDuration(getFabAlignmentAnimationDuration());
        list.add(objectAnimatorOfFloat);
    }

    private void r0(int i10, boolean z10, List list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        float fabAlignmentAnimationDuration = getFabAlignmentAnimationDuration();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        objectAnimatorOfFloat.setDuration((long) (0.8f * fabAlignmentAnimationDuration));
        if (Math.abs(actionMenuView.getTranslationX() - w0(actionMenuView, i10, z10)) <= 1.0f) {
            if (actionMenuView.getAlpha() < 1.0f) {
                list.add(objectAnimatorOfFloat);
            }
        } else {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
            objectAnimatorOfFloat2.setDuration((long) (fabAlignmentAnimationDuration * 0.2f));
            objectAnimatorOfFloat2.addListener(new g(actionMenuView, i10, z10));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playSequentially(objectAnimatorOfFloat2, objectAnimatorOfFloat);
            list.add(animatorSet);
        }
    }

    public void s0() {
        ArrayList arrayList;
        int i10 = this.f27527m0 - 1;
        this.f27527m0 = i10;
        if (i10 != 0 || (arrayList = this.f27528n0) == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
    }

    public void t0() {
        ArrayList arrayList;
        int i10 = this.f27527m0;
        this.f27527m0 = i10 + 1;
        if (i10 != 0 || (arrayList = this.f27528n0) == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
    }

    public FloatingActionButton u0() {
        View viewV0 = v0();
        if (viewV0 instanceof FloatingActionButton) {
            return (FloatingActionButton) viewV0;
        }
        return null;
    }

    public View v0() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).getDependents(this)) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    public float x0(int i10) {
        boolean zP = f0.p(this);
        if (i10 != 1) {
            return 0.0f;
        }
        View viewV0 = v0();
        return ((getMeasuredWidth() / 2) - ((zP ? this.f27535u0 : this.f27534t0) + ((this.f27520f0 == -1 || viewV0 == null) ? this.f27519e0 : (viewV0.getMeasuredWidth() / 2) + this.f27520f0))) * (zP ? -1 : 1);
    }

    private boolean y0() {
        FloatingActionButton floatingActionButtonU0 = u0();
        return floatingActionButtonU0 != null && floatingActionButtonU0.isOrWillBeShown();
    }

    boolean F0(int i10) {
        float f10 = i10;
        if (f10 == getTopEdgeTreatment().j()) {
            return false;
        }
        getTopEdgeTreatment().p(f10);
        this.V.invalidateSelf();
        return true;
    }

    public void addOnScrollStateChangedListener(@NonNull HideBottomViewOnScrollBehavior.b bVar) {
        getBehavior().F(bVar);
    }

    public void clearOnScrollStateChangedListeners() {
        getBehavior().H();
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        return this.V.K();
    }

    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().c();
    }

    public int getFabAlignmentMode() {
        return this.f27516b0;
    }

    public int getFabAlignmentModeEndMargin() {
        return this.f27520f0;
    }

    public int getFabAnchorMode() {
        return this.f27518d0;
    }

    public int getFabAnimationMode() {
        return this.f27517c0;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().g();
    }

    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().i();
    }

    public boolean getHideOnScroll() {
        return this.f27523i0;
    }

    public int getMenuAlignmentMode() {
        return this.f27521g0;
    }

    public boolean isScrolledDown() {
        return getBehavior().I();
    }

    public boolean isScrolledUp() {
        return getBehavior().J();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        cb.j.f(this, this.V);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10) {
            o0();
            E0();
            final View viewV0 = v0();
            if (viewV0 != null && ViewCompat.isLaidOut(viewV0)) {
                viewV0.post(new Runnable() {
                    @Override
                    public final void run() {
                        viewV0.requestLayout();
                    }
                });
            }
        }
        D0();
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f27516b0 = savedState.f27543a;
        this.f27531q0 = savedState.f27544b;
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f27543a = this.f27516b0;
        savedState.f27544b = this.f27531q0;
        return savedState;
    }

    protected void p0(int i10, List list) {
        FloatingActionButton floatingActionButtonU0 = u0();
        if (floatingActionButtonU0 == null || floatingActionButtonU0.isOrWillBeHidden()) {
            return;
        }
        t0();
        floatingActionButtonU0.hide(new e(i10));
    }

    public void performHide() {
        performHide(true);
    }

    public void performShow() {
        performShow(true);
    }

    public void removeOnScrollStateChangedListener(@NonNull HideBottomViewOnScrollBehavior.b bVar) {
        getBehavior().K(bVar);
    }

    public void replaceMenu(int i10) {
        if (i10 != 0) {
            this.f27529o0 = 0;
            getMenu().clear();
            inflateMenu(i10);
        }
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        a1.a.o(this.V, colorStateList);
    }

    public void setCradleVerticalOffset(float f10) {
        if (f10 != getCradleVerticalOffset()) {
            getTopEdgeTreatment().l(f10);
            this.V.invalidateSelf();
            E0();
        }
    }

    @Override
    public void setElevation(float f10) {
        this.V.c0(f10);
        getBehavior().L(this, this.V.F() - this.V.E());
    }

    public void setFabAlignmentMode(int i10) {
        setFabAlignmentModeAndReplaceMenu(i10, 0);
    }

    public void setFabAlignmentModeAndReplaceMenu(int i10, int i11) {
        this.f27529o0 = i11;
        this.f27530p0 = true;
        A0(i10, this.f27531q0);
        B0(i10);
        this.f27516b0 = i10;
    }

    public void setFabAlignmentModeEndMargin(int i10) {
        if (this.f27520f0 != i10) {
            this.f27520f0 = i10;
            E0();
        }
    }

    public void setFabAnchorMode(int i10) {
        this.f27518d0 = i10;
        E0();
        View viewV0 = v0();
        if (viewV0 != null) {
            I0(this, viewV0);
            viewV0.requestLayout();
            this.V.invalidateSelf();
        }
    }

    public void setFabAnimationMode(int i10) {
        this.f27517c0 = i10;
    }

    void setFabCornerSize(float f10) {
        if (f10 != getTopEdgeTreatment().e()) {
            getTopEdgeTreatment().m(f10);
            this.V.invalidateSelf();
        }
    }

    public void setFabCradleMargin(float f10) {
        if (f10 != getFabCradleMargin()) {
            getTopEdgeTreatment().n(f10);
            this.V.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(float f10) {
        if (f10 != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().o(f10);
            this.V.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z10) {
        this.f27523i0 = z10;
    }

    public void setMenuAlignmentMode(int i10) {
        if (this.f27521g0 != i10) {
            this.f27521g0 = i10;
            ActionMenuView actionMenuView = getActionMenuView();
            if (actionMenuView != null) {
                G0(actionMenuView, this.f27516b0, y0());
            }
        }
    }

    @Override
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(C0(drawable));
    }

    public void setNavigationIconTint(int i10) {
        this.U = Integer.valueOf(i10);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    @Override
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override
    public void setTitle(CharSequence charSequence) {
    }

    protected int w0(ActionMenuView actionMenuView, int i10, boolean z10) {
        int dimensionPixelOffset = 0;
        if (this.f27521g0 != 1 && (i10 != 1 || !z10)) {
            return 0;
        }
        boolean zP = f0.p(this);
        int measuredWidth = zP ? getMeasuredWidth() : 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if ((childAt.getLayoutParams() instanceof Toolbar.f) && (((Toolbar.f) childAt.getLayoutParams()).f795a & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 8388611) {
                measuredWidth = zP ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        int right = zP ? actionMenuView.getRight() : actionMenuView.getLeft();
        int i12 = zP ? this.f27534t0 : -this.f27535u0;
        if (getNavigationIcon() == null) {
            dimensionPixelOffset = getResources().getDimensionPixelOffset(R$dimen.m3_bottomappbar_horizontal_padding);
            if (!zP) {
                dimensionPixelOffset = -dimensionPixelOffset;
            }
        }
        return measuredWidth - ((right + i12) + dimensionPixelOffset);
    }

    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.bottomAppBarStyle);
    }

    @Override
    @NonNull
    public Behavior getBehavior() {
        if (this.f27532r0 == null) {
            this.f27532r0 = new Behavior();
        }
        return this.f27532r0;
    }

    public void performHide(boolean z10) {
        getBehavior().N(this, z10);
    }

    public void performShow(boolean z10) {
        getBehavior().P(this, z10);
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        private final Rect f27538m;

        private WeakReference f27539n;

        private int f27540o;

        private final View.OnLayoutChangeListener f27541p;

        class a implements View.OnLayoutChangeListener {
            a() {
            }

            @Override
            public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f27539n.get();
                if (bottomAppBar == null || !((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton))) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                int height = view.getHeight();
                if (view instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                    floatingActionButton.getMeasuredContentRect(Behavior.this.f27538m);
                    int iHeight = Behavior.this.f27538m.height();
                    bottomAppBar.F0(iHeight);
                    bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().r().a(new RectF(Behavior.this.f27538m)));
                    height = iHeight;
                }
                CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
                if (Behavior.this.f27540o == 0) {
                    if (bottomAppBar.f27518d0 == 1) {
                        ((ViewGroup.MarginLayoutParams) fVar).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(R$dimen.mtrl_bottomappbar_fab_bottom_margin) - ((view.getMeasuredHeight() - height) / 2));
                    }
                    ((ViewGroup.MarginLayoutParams) fVar).leftMargin = bottomAppBar.getLeftInset();
                    ((ViewGroup.MarginLayoutParams) fVar).rightMargin = bottomAppBar.getRightInset();
                    if (f0.p(view)) {
                        ((ViewGroup.MarginLayoutParams) fVar).leftMargin += bottomAppBar.f27519e0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) fVar).rightMargin += bottomAppBar.f27519e0;
                    }
                }
                bottomAppBar.E0();
            }
        }

        public Behavior() {
            this.f27541p = new a();
            this.f27538m = new Rect();
        }

        @Override
        public boolean l(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i10) {
            this.f27539n = new WeakReference(bottomAppBar);
            View viewV0 = bottomAppBar.v0();
            if (viewV0 != null && !ViewCompat.isLaidOut(viewV0)) {
                BottomAppBar.I0(bottomAppBar, viewV0);
                this.f27540o = ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) viewV0.getLayoutParams())).bottomMargin;
                if (viewV0 instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) viewV0;
                    if (bottomAppBar.f27518d0 == 0 && bottomAppBar.f27522h0) {
                        ViewCompat.setElevation(floatingActionButton, 0.0f);
                        floatingActionButton.setCompatElevation(0.0f);
                    }
                    if (floatingActionButton.getShowMotionSpec() == null) {
                        floatingActionButton.setShowMotionSpecResource(R$animator.mtrl_fab_show_motion_spec);
                    }
                    if (floatingActionButton.getHideMotionSpec() == null) {
                        floatingActionButton.setHideMotionSpecResource(R$animator.mtrl_fab_hide_motion_spec);
                    }
                    bottomAppBar.n0(floatingActionButton);
                }
                viewV0.addOnLayoutChangeListener(this.f27541p);
                bottomAppBar.E0();
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i10);
            return super.l(coordinatorLayout, bottomAppBar, i10);
        }

        @Override
        public boolean A(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, View view, View view2, int i10, int i11) {
            return bottomAppBar.getHideOnScroll() && super.A(coordinatorLayout, bottomAppBar, view, view2, i10, i11);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f27541p = new a();
            this.f27538m = new Rect();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f27512x0;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        i iVar = new i();
        this.V = iVar;
        this.f27527m0 = 0;
        this.f27529o0 = 0;
        this.f27530p0 = false;
        this.f27531q0 = true;
        this.f27536v0 = new a();
        this.f27537w0 = new b();
        Context context2 = getContext();
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.BottomAppBar, i10, i11, new int[0]);
        ColorStateList colorStateListA = za.c.a(context2, typedArrayI, R$styleable.BottomAppBar_backgroundTint);
        if (typedArrayI.hasValue(R$styleable.BottomAppBar_navigationIconTint)) {
            setNavigationIconTint(typedArrayI.getColor(R$styleable.BottomAppBar_navigationIconTint, -1));
        }
        int dimensionPixelSize = typedArrayI.getDimensionPixelSize(R$styleable.BottomAppBar_elevation, 0);
        float dimensionPixelOffset = typedArrayI.getDimensionPixelOffset(R$styleable.BottomAppBar_fabCradleMargin, 0);
        float dimensionPixelOffset2 = typedArrayI.getDimensionPixelOffset(R$styleable.BottomAppBar_fabCradleRoundedCornerRadius, 0);
        float dimensionPixelOffset3 = typedArrayI.getDimensionPixelOffset(R$styleable.BottomAppBar_fabCradleVerticalOffset, 0);
        this.f27516b0 = typedArrayI.getInt(R$styleable.BottomAppBar_fabAlignmentMode, 0);
        this.f27517c0 = typedArrayI.getInt(R$styleable.BottomAppBar_fabAnimationMode, 0);
        this.f27518d0 = typedArrayI.getInt(R$styleable.BottomAppBar_fabAnchorMode, 1);
        this.f27522h0 = typedArrayI.getBoolean(R$styleable.BottomAppBar_removeEmbeddedFabElevation, true);
        this.f27521g0 = typedArrayI.getInt(R$styleable.BottomAppBar_menuAlignmentMode, 0);
        this.f27523i0 = typedArrayI.getBoolean(R$styleable.BottomAppBar_hideOnScroll, false);
        this.f27524j0 = typedArrayI.getBoolean(R$styleable.BottomAppBar_paddingBottomSystemWindowInsets, false);
        this.f27525k0 = typedArrayI.getBoolean(R$styleable.BottomAppBar_paddingLeftSystemWindowInsets, false);
        this.f27526l0 = typedArrayI.getBoolean(R$styleable.BottomAppBar_paddingRightSystemWindowInsets, false);
        this.f27520f0 = typedArrayI.getDimensionPixelOffset(R$styleable.BottomAppBar_fabAlignmentModeEndMargin, -1);
        boolean z10 = typedArrayI.getBoolean(R$styleable.BottomAppBar_addElevationShadow, true);
        typedArrayI.recycle();
        this.f27519e0 = getResources().getDimensionPixelOffset(R$dimen.mtrl_bottomappbar_fabOffsetEndMode);
        iVar.setShapeAppearanceModel(n.a().D(new com.google.android.material.bottomappbar.d(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3)).m());
        if (z10) {
            iVar.k0(2);
        } else {
            iVar.k0(1);
            if (Build.VERSION.SDK_INT >= 28) {
                setOutlineAmbientShadowColor(0);
                setOutlineSpotShadowColor(0);
            }
        }
        iVar.g0(Paint.Style.FILL);
        iVar.S(context2);
        setElevation(dimensionPixelSize);
        a1.a.o(iVar, colorStateListA);
        ViewCompat.setBackground(this, iVar);
        f0.e(this, attributeSet, i10, i11, new c());
    }
}
