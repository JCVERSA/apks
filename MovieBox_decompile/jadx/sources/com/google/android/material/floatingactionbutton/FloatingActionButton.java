package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.j;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.util.i;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import cb.n;
import cb.q;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import com.google.android.material.stateful.ExtendableSavedState;
import java.util.List;
import qa.h;
import qa.k;

public class FloatingActionButton extends VisibilityAwareImageButton implements TintableBackgroundView, wa.a, q, CoordinatorLayout.b {
    public static final int NO_CUSTOM_SIZE = 0;
    public static final int SIZE_AUTO = -1;
    public static final int SIZE_MINI = 1;
    public static final int SIZE_NORMAL = 0;

    private static final int f28130r = R$style.Widget_Design_FloatingActionButton;

    private ColorStateList f28131b;

    private PorterDuff.Mode f28132c;

    private ColorStateList f28133d;

    private PorterDuff.Mode f28134e;

    private ColorStateList f28135f;

    private int f28136g;

    private int f28137h;

    private int f28138i;

    private int f28139j;

    private int f28140k;

    boolean f28141l;

    final Rect f28142m;

    private final Rect f28143n;

    private final j f28144o;

    private final wa.b f28145p;

    private com.google.android.material.floatingactionbutton.d f28146q;

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        @Override
        public boolean b(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            return super.b(coordinatorLayout, floatingActionButton, rect);
        }

        @Override
        public boolean h(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            return super.h(coordinatorLayout, floatingActionButton, view);
        }

        @Override
        public boolean l(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i10) {
            return super.l(coordinatorLayout, floatingActionButton, i10);
        }

        @Override
        public void g(CoordinatorLayout.f fVar) {
            super.g(fVar);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    class a implements com.google.android.material.floatingactionbutton.d.k {

        final b f28150a;

        a(b bVar) {
            this.f28150a = bVar;
        }

        @Override
        public void a() {
            this.f28150a.b(FloatingActionButton.this);
        }

        @Override
        public void b() {
            this.f28150a.a(FloatingActionButton.this);
        }
    }

    public static abstract class b {
        public void a(FloatingActionButton floatingActionButton) {
        }

        public void b(FloatingActionButton floatingActionButton) {
        }
    }

    private class c implements bb.b {
        c() {
        }

        @Override
        public void a(int i10, int i11, int i12, int i13) {
            FloatingActionButton.this.f28142m.set(i10, i11, i12, i13);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i10 + floatingActionButton.f28139j, i11 + FloatingActionButton.this.f28139j, i12 + FloatingActionButton.this.f28139j, i13 + FloatingActionButton.this.f28139j);
        }

        @Override
        public void b(Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }

        @Override
        public boolean c() {
            return FloatingActionButton.this.f28141l;
        }
    }

    class d implements com.google.android.material.floatingactionbutton.d.j {

        private final k f28153a;

        d(k kVar) {
            this.f28153a = kVar;
        }

        @Override
        public void a() {
            this.f28153a.b(FloatingActionButton.this);
        }

        @Override
        public void b() {
            this.f28153a.a(FloatingActionButton.this);
        }

        public boolean equals(Object obj) {
            return (obj instanceof d) && ((d) obj).f28153a.equals(this.f28153a);
        }

        public int hashCode() {
            return this.f28153a.hashCode();
        }
    }

    public FloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    private com.google.android.material.floatingactionbutton.d c() {
        return new e(this, new c());
    }

    private int d(int i10) {
        int i11 = this.f28138i;
        if (i11 != 0) {
            return i11;
        }
        Resources resources = getResources();
        if (i10 != -1) {
            return i10 != 1 ? resources.getDimensionPixelSize(R$dimen.design_fab_size_normal) : resources.getDimensionPixelSize(R$dimen.design_fab_size_mini);
        }
        return Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? d(1) : d(0);
    }

    private void e(Rect rect) {
        getMeasuredContentRect(rect);
        int i10 = -this.f28146q.v();
        rect.inset(i10, i10);
    }

    private void g(Rect rect) {
        int i10 = rect.left;
        Rect rect2 = this.f28142m;
        rect.left = i10 + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    private com.google.android.material.floatingactionbutton.d getImpl() {
        if (this.f28146q == null) {
            this.f28146q = c();
        }
        return this.f28146q;
    }

    private void h() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f28133d;
        if (colorStateList == null) {
            a1.a.c(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f28134e;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(androidx.appcompat.widget.f.e(colorForState, mode));
    }

    private com.google.android.material.floatingactionbutton.d.k j(b bVar) {
        if (bVar == null) {
            return null;
        }
        return new a(bVar);
    }

    public void addOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().e(animatorListener);
    }

    public void addOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().f(animatorListener);
    }

    public void addTransformationCallback(@NonNull k kVar) {
        getImpl().g(new d(kVar));
    }

    public void clearCustomSize() {
        setCustomSize(0);
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().E(getDrawableState());
    }

    void f(b bVar, boolean z10) {
        getImpl().w(j(bVar), z10);
    }

    @Override
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return this.f28131b;
    }

    @Override
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f28132c;
    }

    @Override
    @NonNull
    public CoordinatorLayout.c getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().m();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().p();
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().s();
    }

    @Nullable
    public Drawable getContentBackground() {
        return getImpl().l();
    }

    @Deprecated
    public boolean getContentRect(@NonNull Rect rect) {
        if (!ViewCompat.isLaidOut(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        g(rect);
        return true;
    }

    public int getCustomSize() {
        return this.f28138i;
    }

    public int getExpandedComponentIdHint() {
        return this.f28145p.b();
    }

    @Nullable
    public h getHideMotionSpec() {
        return getImpl().o();
    }

    public void getMeasuredContentRect(@NonNull Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        g(rect);
    }

    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f28135f;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    @Nullable
    public ColorStateList getRippleColorStateList() {
        return this.f28135f;
    }

    @NonNull
    public n getShapeAppearanceModel() {
        return (n) i.g(getImpl().t());
    }

    @Nullable
    public h getShowMotionSpec() {
        return getImpl().u();
    }

    public int getSize() {
        return this.f28137h;
    }

    int getSizeDimension() {
        return d(this.f28137h);
    }

    @Override
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Nullable
    public ColorStateList getSupportImageTintList() {
        return this.f28133d;
    }

    @Nullable
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f28134e;
    }

    public boolean getUseCompatPadding() {
        return this.f28141l;
    }

    public void hide() {
        hide(null);
    }

    void i(b bVar, boolean z10) {
        getImpl().f0(j(bVar), z10);
    }

    @Override
    public boolean isExpanded() {
        return this.f28145p.c();
    }

    public boolean isOrWillBeHidden() {
        return getImpl().y();
    }

    public boolean isOrWillBeShown() {
        return getImpl().z();
    }

    @Override
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().A();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().B();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().D();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        int sizeDimension = getSizeDimension();
        this.f28139j = (sizeDimension - this.f28140k) / 2;
        getImpl().i0();
        int iMin = Math.min(View.resolveSize(sizeDimension, i10), View.resolveSize(sizeDimension, i11));
        Rect rect = this.f28142m;
        setMeasuredDimension(rect.left + iMin + rect.right, iMin + rect.top + rect.bottom);
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.getSuperState());
        this.f28145p.d((Bundle) i.g((Bundle) extendableSavedState.extendableStates.get("expandableWidgetHelper")));
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            parcelableOnSaveInstanceState = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(parcelableOnSaveInstanceState);
        extendableSavedState.extendableStates.put("expandableWidgetHelper", this.f28145p.e());
        return extendableSavedState;
    }

    @Override
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            e(this.f28143n);
            if (!this.f28143n.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void removeOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().K(animatorListener);
    }

    public void removeOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().L(animatorListener);
    }

    public void removeTransformationCallback(@NonNull k kVar) {
        getImpl().M(new d(kVar));
    }

    @Override
    public void setBackgroundColor(int i10) {
    }

    @Override
    public void setBackgroundDrawable(Drawable drawable) {
    }

    @Override
    public void setBackgroundResource(int i10) {
    }

    @Override
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f28131b != colorStateList) {
            this.f28131b = colorStateList;
            getImpl().O(colorStateList);
        }
    }

    @Override
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f28132c != mode) {
            this.f28132c = mode;
            getImpl().P(mode);
        }
    }

    public void setCompatElevation(float f10) {
        getImpl().Q(f10);
    }

    public void setCompatElevationResource(int i10) {
        setCompatElevation(getResources().getDimension(i10));
    }

    public void setCompatHoveredFocusedTranslationZ(float f10) {
        getImpl().T(f10);
    }

    public void setCompatHoveredFocusedTranslationZResource(int i10) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i10));
    }

    public void setCompatPressedTranslationZ(float f10) {
        getImpl().X(f10);
    }

    public void setCompatPressedTranslationZResource(int i10) {
        setCompatPressedTranslationZ(getResources().getDimension(i10));
    }

    public void setCustomSize(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        if (i10 != this.f28138i) {
            this.f28138i = i10;
            requestLayout();
        }
    }

    @Override
    public void setElevation(float f10) {
        super.setElevation(f10);
        getImpl().j0(f10);
    }

    public void setEnsureMinTouchTargetSize(boolean z10) {
        if (z10 != getImpl().n()) {
            getImpl().R(z10);
            requestLayout();
        }
    }

    public boolean setExpanded(boolean z10) {
        return this.f28145p.f(z10);
    }

    public void setExpandedComponentIdHint(int i10) {
        this.f28145p.g(i10);
    }

    public void setHideMotionSpec(@Nullable h hVar) {
        getImpl().S(hVar);
    }

    public void setHideMotionSpecResource(int i10) {
        setHideMotionSpec(h.d(getContext(), i10));
    }

    @Override
    public void setImageDrawable(@Nullable Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            getImpl().h0();
            if (this.f28133d != null) {
                h();
            }
        }
    }

    @Override
    public void setImageResource(int i10) {
        this.f28144o.i(i10);
        h();
    }

    public void setMaxImageSize(int i10) {
        this.f28140k = i10;
        getImpl().V(i10);
    }

    public void setRippleColor(int i10) {
        setRippleColor(ColorStateList.valueOf(i10));
    }

    @Override
    public void setScaleX(float f10) {
        super.setScaleX(f10);
        getImpl().I();
    }

    @Override
    public void setScaleY(float f10) {
        super.setScaleY(f10);
        getImpl().I();
    }

    public void setShadowPaddingEnabled(boolean z10) {
        getImpl().Z(z10);
    }

    @Override
    public void setShapeAppearanceModel(@NonNull n nVar) {
        getImpl().a0(nVar);
    }

    public void setShowMotionSpec(@Nullable h hVar) {
        getImpl().b0(hVar);
    }

    public void setShowMotionSpecResource(int i10) {
        setShowMotionSpec(h.d(getContext(), i10));
    }

    public void setSize(int i10) {
        this.f28138i = 0;
        if (i10 != this.f28137h) {
            this.f28137h = i10;
            requestLayout();
        }
    }

    @Override
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        if (this.f28133d != colorStateList) {
            this.f28133d = colorStateList;
            h();
        }
    }

    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f28134e != mode) {
            this.f28134e = mode;
            h();
        }
    }

    @Override
    public void setTranslationX(float f10) {
        super.setTranslationX(f10);
        getImpl().J();
    }

    @Override
    public void setTranslationY(float f10) {
        super.setTranslationY(f10);
        getImpl().J();
    }

    @Override
    public void setTranslationZ(float f10) {
        super.setTranslationZ(f10);
        getImpl().J();
    }

    public void setUseCompatPadding(boolean z10) {
        if (this.f28141l != z10) {
            this.f28141l = z10;
            getImpl().C();
        }
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
    }

    public boolean shouldEnsureMinTouchTargetSize() {
        return getImpl().n();
    }

    public void show() {
        show(null);
    }

    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.c {

        private Rect f28147a;

        private b f28148b;

        private boolean f28149c;

        public BaseBehavior() {
            this.f28149c = true;
        }

        private static boolean F(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                return ((CoordinatorLayout.f) layoutParams).f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private void G(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton) {
            int i10;
            Rect rect = floatingActionButton.f28142m;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return;
            }
            CoordinatorLayout.f fVar = (CoordinatorLayout.f) floatingActionButton.getLayoutParams();
            int i11 = 0;
            if (floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) fVar).rightMargin) {
                i10 = rect.right;
            } else {
                i10 = floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) fVar).leftMargin ? -rect.left : 0;
            }
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin) {
                i11 = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) fVar).topMargin) {
                i11 = -rect.top;
            }
            if (i11 != 0) {
                ViewCompat.offsetTopAndBottom(floatingActionButton, i11);
            }
            if (i10 != 0) {
                ViewCompat.offsetLeftAndRight(floatingActionButton, i10);
            }
        }

        private boolean J(View view, FloatingActionButton floatingActionButton) {
            return this.f28149c && ((CoordinatorLayout.f) floatingActionButton.getLayoutParams()).e() == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        private boolean K(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!J(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f28147a == null) {
                this.f28147a = new Rect();
            }
            Rect rect = this.f28147a;
            com.google.android.material.internal.d.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.f(this.f28148b, false);
                return true;
            }
            floatingActionButton.i(this.f28148b, false);
            return true;
        }

        private boolean L(View view, FloatingActionButton floatingActionButton) {
            if (!J(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.f(this.f28148b, false);
                return true;
            }
            floatingActionButton.i(this.f28148b, false);
            return true;
        }

        @Override
        public boolean b(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            Rect rect2 = floatingActionButton.f28142m;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        @Override
        public boolean h(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                K(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            }
            if (!F(view)) {
                return false;
            }
            L(view, floatingActionButton);
            return false;
        }

        @Override
        public boolean l(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i10) {
            List<View> dependencies = coordinatorLayout.getDependencies(floatingActionButton);
            int size = dependencies.size();
            for (int i11 = 0; i11 < size; i11++) {
                View view = dependencies.get(i11);
                if (!(view instanceof AppBarLayout)) {
                    if (F(view) && L(view, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (K(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(floatingActionButton, i10);
            G(coordinatorLayout, floatingActionButton);
            return true;
        }

        @Override
        public void g(CoordinatorLayout.f fVar) {
            if (fVar.f7605h == 0) {
                fVar.f7605h = 80;
            }
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FloatingActionButton_Behavior_Layout);
            this.f28149c = typedArrayObtainStyledAttributes.getBoolean(R$styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.floatingActionButtonStyle);
    }

    public void hide(@Nullable b bVar) {
        f(bVar, true);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f28135f != colorStateList) {
            this.f28135f = colorStateList;
            getImpl().Y(this.f28135f);
        }
    }

    public void show(@Nullable b bVar) {
        i(bVar, true);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f28130r;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f28142m = new Rect();
        this.f28143n = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.FloatingActionButton, i10, i11, new int[0]);
        this.f28131b = za.c.a(context2, typedArrayI, R$styleable.FloatingActionButton_backgroundTint);
        this.f28132c = f0.r(typedArrayI.getInt(R$styleable.FloatingActionButton_backgroundTintMode, -1), null);
        this.f28135f = za.c.a(context2, typedArrayI, R$styleable.FloatingActionButton_rippleColor);
        this.f28137h = typedArrayI.getInt(R$styleable.FloatingActionButton_fabSize, -1);
        this.f28138i = typedArrayI.getDimensionPixelSize(R$styleable.FloatingActionButton_fabCustomSize, 0);
        this.f28136g = typedArrayI.getDimensionPixelSize(R$styleable.FloatingActionButton_borderWidth, 0);
        float dimension = typedArrayI.getDimension(R$styleable.FloatingActionButton_elevation, 0.0f);
        float dimension2 = typedArrayI.getDimension(R$styleable.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = typedArrayI.getDimension(R$styleable.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.f28141l = typedArrayI.getBoolean(R$styleable.FloatingActionButton_useCompatPadding, false);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.mtrl_fab_min_touch_target);
        setMaxImageSize(typedArrayI.getDimensionPixelSize(R$styleable.FloatingActionButton_maxImageSize, 0));
        h hVarC = h.c(context2, typedArrayI, R$styleable.FloatingActionButton_showMotionSpec);
        h hVarC2 = h.c(context2, typedArrayI, R$styleable.FloatingActionButton_hideMotionSpec);
        n nVarM = n.g(context2, attributeSet, i10, i11, n.f16848m).m();
        boolean z10 = typedArrayI.getBoolean(R$styleable.FloatingActionButton_ensureMinTouchTargetSize, false);
        setEnabled(typedArrayI.getBoolean(R$styleable.FloatingActionButton_android_enabled, true));
        typedArrayI.recycle();
        j jVar = new j(this);
        this.f28144o = jVar;
        jVar.g(attributeSet, i10);
        this.f28145p = new wa.b(this);
        getImpl().a0(nVarM);
        getImpl().x(this.f28131b, this.f28132c, this.f28135f, this.f28136g);
        getImpl().W(dimensionPixelSize);
        getImpl().Q(dimension);
        getImpl().T(dimension2);
        getImpl().X(dimension3);
        getImpl().b0(hVarC);
        getImpl().S(hVarC2);
        getImpl().R(z10);
        setScaleType(ImageView.ScaleType.MATRIX);
    }
}
