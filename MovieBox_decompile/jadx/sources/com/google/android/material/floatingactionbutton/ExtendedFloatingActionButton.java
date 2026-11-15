package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$animator;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.b0;
import java.util.Iterator;
import java.util.List;

public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.b {
    private static final int I = R$style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;
    static final Property J = new f(Float.class, "width");
    static final Property K = new g(Float.class, "height");
    static final Property L = new h(Float.class, "paddingStart");
    static final Property M = new i(Float.class, "paddingEnd");
    private final CoordinatorLayout.c A;
    private boolean B;
    private boolean C;
    private boolean D;
    protected ColorStateList E;
    private int F;
    private int G;
    private final int H;

    private int f28099r;

    private final com.google.android.material.floatingactionbutton.a f28100s;

    private final com.google.android.material.floatingactionbutton.f f28101t;

    private final com.google.android.material.floatingactionbutton.f f28102u;

    private final com.google.android.material.floatingactionbutton.f f28103v;

    private final com.google.android.material.floatingactionbutton.f f28104w;

    private final int f28105x;

    private int f28106y;

    private int f28107z;

    class a implements n {
        a() {
        }

        @Override
        public ViewGroup.LayoutParams a() {
            return new ViewGroup.LayoutParams(getWidth(), getHeight());
        }

        @Override
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }

        @Override
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override
        public int getWidth() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }
    }

    class b implements n {
        b() {
        }

        @Override
        public ViewGroup.LayoutParams a() {
            return new ViewGroup.LayoutParams(-2, -2);
        }

        @Override
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getMeasuredHeight();
        }

        @Override
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.f28107z;
        }

        @Override
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.f28106y;
        }

        @Override
        public int getWidth() {
            return (ExtendedFloatingActionButton.this.getMeasuredWidth() - (ExtendedFloatingActionButton.this.getCollapsedPadding() * 2)) + ExtendedFloatingActionButton.this.f28106y + ExtendedFloatingActionButton.this.f28107z;
        }
    }

    class c implements n {

        final n f28115a;

        c(n nVar) {
            this.f28115a = nVar;
        }

        @Override
        public ViewGroup.LayoutParams a() {
            return new ViewGroup.LayoutParams(-1, ExtendedFloatingActionButton.this.G == 0 ? -2 : ExtendedFloatingActionButton.this.G);
        }

        @Override
        public int getHeight() {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            if (ExtendedFloatingActionButton.this.G != -1) {
                return (ExtendedFloatingActionButton.this.G == 0 || ExtendedFloatingActionButton.this.G == -2) ? this.f28115a.getHeight() : ExtendedFloatingActionButton.this.G;
            }
            if (!(ExtendedFloatingActionButton.this.getParent() instanceof View)) {
                return this.f28115a.getHeight();
            }
            View view = (View) ExtendedFloatingActionButton.this.getParent();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null || layoutParams.height != -2) {
                return (view.getHeight() - ((!(ExtendedFloatingActionButton.this.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) ExtendedFloatingActionButton.this.getLayoutParams()) == null) ? 0 : marginLayoutParams.topMargin + marginLayoutParams.bottomMargin)) - (view.getPaddingTop() + view.getPaddingBottom());
            }
            return this.f28115a.getHeight();
        }

        @Override
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.f28107z;
        }

        @Override
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.f28106y;
        }

        @Override
        public int getWidth() {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            if (!(ExtendedFloatingActionButton.this.getParent() instanceof View)) {
                return this.f28115a.getWidth();
            }
            View view = (View) ExtendedFloatingActionButton.this.getParent();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null || layoutParams.width != -2) {
                return (view.getWidth() - ((!(ExtendedFloatingActionButton.this.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) ExtendedFloatingActionButton.this.getLayoutParams()) == null) ? 0 : marginLayoutParams.leftMargin + marginLayoutParams.rightMargin)) - (view.getPaddingLeft() + view.getPaddingRight());
            }
            return this.f28115a.getWidth();
        }
    }

    class d implements n {

        final n f28117a;

        final n f28118b;

        d(n nVar, n nVar2) {
            this.f28117a = nVar;
            this.f28118b = nVar2;
        }

        @Override
        public ViewGroup.LayoutParams a() {
            return new ViewGroup.LayoutParams(ExtendedFloatingActionButton.this.F == 0 ? -2 : ExtendedFloatingActionButton.this.F, ExtendedFloatingActionButton.this.G != 0 ? ExtendedFloatingActionButton.this.G : -2);
        }

        @Override
        public int getHeight() {
            if (ExtendedFloatingActionButton.this.G == -1) {
                return this.f28117a.getHeight();
            }
            return (ExtendedFloatingActionButton.this.G == 0 || ExtendedFloatingActionButton.this.G == -2) ? this.f28118b.getHeight() : ExtendedFloatingActionButton.this.G;
        }

        @Override
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.f28107z;
        }

        @Override
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.f28106y;
        }

        @Override
        public int getWidth() {
            if (ExtendedFloatingActionButton.this.F == -1) {
                return this.f28117a.getWidth();
            }
            return (ExtendedFloatingActionButton.this.F == 0 || ExtendedFloatingActionButton.this.F == -2) ? this.f28118b.getWidth() : ExtendedFloatingActionButton.this.F;
        }
    }

    class e extends AnimatorListenerAdapter {

        private boolean f28120a;

        final com.google.android.material.floatingactionbutton.f f28121b;

        final l f28122c;

        e(com.google.android.material.floatingactionbutton.f fVar, l lVar) {
            this.f28121b = fVar;
            this.f28122c = lVar;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            this.f28120a = true;
            this.f28121b.f();
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f28121b.a();
            if (this.f28120a) {
                return;
            }
            this.f28121b.l(this.f28122c);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.f28121b.onAnimationStart(animator);
            this.f28120a = false;
        }
    }

    class f extends Property {
        f(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override
        public void set(View view, Float f10) {
            view.getLayoutParams().width = f10.intValue();
            view.requestLayout();
        }
    }

    class g extends Property {
        g(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override
        public void set(View view, Float f10) {
            view.getLayoutParams().height = f10.intValue();
            view.requestLayout();
        }
    }

    class h extends Property {
        h(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(View view) {
            return Float.valueOf(ViewCompat.getPaddingStart(view));
        }

        @Override
        public void set(View view, Float f10) {
            ViewCompat.setPaddingRelative(view, f10.intValue(), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom());
        }
    }

    class i extends Property {
        i(Class cls, String str) {
            super(cls, str);
        }

        @Override
        public Float get(View view) {
            return Float.valueOf(ViewCompat.getPaddingEnd(view));
        }

        @Override
        public void set(View view, Float f10) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), view.getPaddingTop(), f10.intValue(), view.getPaddingBottom());
        }
    }

    class j extends com.google.android.material.floatingactionbutton.b {

        private final n f28124g;

        private final boolean f28125h;

        j(com.google.android.material.floatingactionbutton.a aVar, n nVar, boolean z10) {
            super(ExtendedFloatingActionButton.this, aVar);
            this.f28124g = nVar;
            this.f28125h = z10;
        }

        @Override
        public void a() {
            super.a();
            ExtendedFloatingActionButton.this.C = false;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.f28124g.a().width;
            layoutParams.height = this.f28124g.a().height;
        }

        @Override
        public void b() {
            ExtendedFloatingActionButton.this.B = this.f28125h;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            if (!this.f28125h) {
                ExtendedFloatingActionButton.this.F = layoutParams.width;
                ExtendedFloatingActionButton.this.G = layoutParams.height;
            }
            layoutParams.width = this.f28124g.a().width;
            layoutParams.height = this.f28124g.a().height;
            ViewCompat.setPaddingRelative(ExtendedFloatingActionButton.this, this.f28124g.getPaddingStart(), ExtendedFloatingActionButton.this.getPaddingTop(), this.f28124g.getPaddingEnd(), ExtendedFloatingActionButton.this.getPaddingBottom());
            ExtendedFloatingActionButton.this.requestLayout();
        }

        @Override
        public boolean d() {
            return this.f28125h == ExtendedFloatingActionButton.this.B || ExtendedFloatingActionButton.this.getIcon() == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }

        @Override
        public int g() {
            return this.f28125h ? R$animator.mtrl_extended_fab_change_size_expand_motion_spec : R$animator.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override
        public AnimatorSet j() {
            qa.h hVarO = o();
            if (hVarO.j("width")) {
                PropertyValuesHolder[] propertyValuesHolderArrG = hVarO.g("width");
                propertyValuesHolderArrG[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.f28124g.getWidth());
                hVarO.l("width", propertyValuesHolderArrG);
            }
            if (hVarO.j("height")) {
                PropertyValuesHolder[] propertyValuesHolderArrG2 = hVarO.g("height");
                propertyValuesHolderArrG2[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.f28124g.getHeight());
                hVarO.l("height", propertyValuesHolderArrG2);
            }
            if (hVarO.j("paddingStart")) {
                PropertyValuesHolder[] propertyValuesHolderArrG3 = hVarO.g("paddingStart");
                propertyValuesHolderArrG3[0].setFloatValues(ViewCompat.getPaddingStart(ExtendedFloatingActionButton.this), this.f28124g.getPaddingStart());
                hVarO.l("paddingStart", propertyValuesHolderArrG3);
            }
            if (hVarO.j("paddingEnd")) {
                PropertyValuesHolder[] propertyValuesHolderArrG4 = hVarO.g("paddingEnd");
                propertyValuesHolderArrG4[0].setFloatValues(ViewCompat.getPaddingEnd(ExtendedFloatingActionButton.this), this.f28124g.getPaddingEnd());
                hVarO.l("paddingEnd", propertyValuesHolderArrG4);
            }
            if (hVarO.j("labelOpacity")) {
                PropertyValuesHolder[] propertyValuesHolderArrG5 = hVarO.g("labelOpacity");
                boolean z10 = this.f28125h;
                propertyValuesHolderArrG5[0].setFloatValues(z10 ? 0.0f : 1.0f, z10 ? 1.0f : 0.0f);
                hVarO.l("labelOpacity", propertyValuesHolderArrG5);
            }
            return super.n(hVarO);
        }

        @Override
        public void l(l lVar) {
            if (lVar == null) {
                return;
            }
            if (this.f28125h) {
                lVar.a(ExtendedFloatingActionButton.this);
            } else {
                lVar.d(ExtendedFloatingActionButton.this);
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.B = this.f28125h;
            ExtendedFloatingActionButton.this.C = true;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }
    }

    class k extends com.google.android.material.floatingactionbutton.b {

        private boolean f28127g;

        public k(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override
        public void a() {
            super.a();
            ExtendedFloatingActionButton.this.f28099r = 0;
            if (this.f28127g) {
                return;
            }
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override
        public void b() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override
        public boolean d() {
            return ExtendedFloatingActionButton.this.w();
        }

        @Override
        public void f() {
            super.f();
            this.f28127g = true;
        }

        @Override
        public int g() {
            return R$animator.mtrl_extended_fab_hide_motion_spec;
        }

        @Override
        public void l(l lVar) {
            if (lVar != null) {
                lVar.b(ExtendedFloatingActionButton.this);
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.f28127g = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f28099r = 1;
        }
    }

    public static abstract class l {
        public void a(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void b(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void c(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void d(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }
    }

    class m extends com.google.android.material.floatingactionbutton.b {
        public m(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override
        public void a() {
            super.a();
            ExtendedFloatingActionButton.this.f28099r = 0;
        }

        @Override
        public void b() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override
        public boolean d() {
            return ExtendedFloatingActionButton.this.x();
        }

        @Override
        public int g() {
            return R$animator.mtrl_extended_fab_show_motion_spec;
        }

        @Override
        public void l(l lVar) {
            if (lVar != null) {
                lVar.c(ExtendedFloatingActionButton.this);
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f28099r = 2;
        }
    }

    interface n {
        ViewGroup.LayoutParams a();

        int getHeight();

        int getPaddingEnd();

        int getPaddingStart();

        int getWidth();
    }

    public ExtendedFloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    private boolean A() {
        return (ViewCompat.isLaidOut(this) || (!x() && this.D)) && !isInEditMode();
    }

    private n v(int i10) {
        b bVar = new b();
        c cVar = new c(bVar);
        d dVar = new d(cVar, bVar);
        if (i10 != 1) {
            return i10 != 2 ? dVar : cVar;
        }
        return bVar;
    }

    public boolean w() {
        if (getVisibility() == 0) {
            return this.f28099r == 1;
        }
        return this.f28099r != 2;
    }

    public boolean x() {
        if (getVisibility() != 0) {
            return this.f28099r == 2;
        }
        return this.f28099r != 1;
    }

    public void y(int i10, l lVar) {
        com.google.android.material.floatingactionbutton.f fVar;
        if (i10 == 0) {
            fVar = this.f28103v;
        } else if (i10 == 1) {
            fVar = this.f28104w;
        } else if (i10 == 2) {
            fVar = this.f28101t;
        } else {
            if (i10 != 3) {
                throw new IllegalStateException("Unknown strategy type: " + i10);
            }
            fVar = this.f28102u;
        }
        if (fVar.d()) {
            return;
        }
        if (!A()) {
            fVar.b();
            fVar.l(lVar);
            return;
        }
        if (i10 == 2) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                this.F = layoutParams.width;
                this.G = layoutParams.height;
            } else {
                this.F = getWidth();
                this.G = getHeight();
            }
        }
        measure(0, 0);
        AnimatorSet animatorSetJ = fVar.j();
        animatorSetJ.addListener(new e(fVar, lVar));
        Iterator it = fVar.k().iterator();
        while (it.hasNext()) {
            animatorSetJ.addListener((Animator.AnimatorListener) it.next());
        }
        animatorSetJ.start();
    }

    private void z() {
        this.E = getTextColors();
    }

    protected void B(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    public void addOnExtendAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28102u.h(animatorListener);
    }

    public void addOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28104w.h(animatorListener);
    }

    public void addOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28103v.h(animatorListener);
    }

    public void addOnShrinkAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28101t.h(animatorListener);
    }

    public void extend() {
        y(3, null);
    }

    @Override
    @NonNull
    public CoordinatorLayout.c getBehavior() {
        return this.A;
    }

    int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    int getCollapsedSize() {
        int i10 = this.f28105x;
        return i10 < 0 ? (Math.min(ViewCompat.getPaddingStart(this), ViewCompat.getPaddingEnd(this)) * 2) + getIconSize() : i10;
    }

    @Nullable
    public qa.h getExtendMotionSpec() {
        return this.f28102u.c();
    }

    @Nullable
    public qa.h getHideMotionSpec() {
        return this.f28104w.c();
    }

    @Nullable
    public qa.h getShowMotionSpec() {
        return this.f28103v.c();
    }

    @Nullable
    public qa.h getShrinkMotionSpec() {
        return this.f28101t.c();
    }

    public void hide() {
        y(1, null);
    }

    public final boolean isExtended() {
        return this.B;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.B && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.B = false;
            this.f28101t.b();
        }
    }

    public void removeOnExtendAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28102u.e(animatorListener);
    }

    public void removeOnHideAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28104w.e(animatorListener);
    }

    public void removeOnShowAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28103v.e(animatorListener);
    }

    public void removeOnShrinkAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f28101t.e(animatorListener);
    }

    public void setAnimateShowBeforeLayout(boolean z10) {
        this.D = z10;
    }

    public void setExtendMotionSpec(@Nullable qa.h hVar) {
        this.f28102u.i(hVar);
    }

    public void setExtendMotionSpecResource(int i10) {
        setExtendMotionSpec(qa.h.d(getContext(), i10));
    }

    public void setExtended(boolean z10) {
        if (this.B == z10) {
            return;
        }
        com.google.android.material.floatingactionbutton.f fVar = z10 ? this.f28102u : this.f28101t;
        if (fVar.d()) {
            return;
        }
        fVar.b();
    }

    public void setHideMotionSpec(@Nullable qa.h hVar) {
        this.f28104w.i(hVar);
    }

    public void setHideMotionSpecResource(int i10) {
        setHideMotionSpec(qa.h.d(getContext(), i10));
    }

    @Override
    public void setPadding(int i10, int i11, int i12, int i13) {
        super.setPadding(i10, i11, i12, i13);
        if (!this.B || this.C) {
            return;
        }
        this.f28106y = ViewCompat.getPaddingStart(this);
        this.f28107z = ViewCompat.getPaddingEnd(this);
    }

    @Override
    public void setPaddingRelative(int i10, int i11, int i12, int i13) {
        super.setPaddingRelative(i10, i11, i12, i13);
        if (!this.B || this.C) {
            return;
        }
        this.f28106y = i10;
        this.f28107z = i12;
    }

    public void setShowMotionSpec(@Nullable qa.h hVar) {
        this.f28103v.i(hVar);
    }

    public void setShowMotionSpecResource(int i10) {
        setShowMotionSpec(qa.h.d(getContext(), i10));
    }

    public void setShrinkMotionSpec(@Nullable qa.h hVar) {
        this.f28101t.i(hVar);
    }

    public void setShrinkMotionSpecResource(int i10) {
        setShrinkMotionSpec(qa.h.d(getContext(), i10));
    }

    @Override
    public void setTextColor(int i10) {
        super.setTextColor(i10);
        z();
    }

    public void show() {
        y(0, null);
    }

    public void shrink() {
        y(2, null);
    }

    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.extendedFloatingActionButtonStyle);
    }

    public void extend(@NonNull l lVar) {
        y(3, lVar);
    }

    public void hide(@NonNull l lVar) {
        y(1, lVar);
    }

    public void show(@NonNull l lVar) {
        y(0, lVar);
    }

    public void shrink(@NonNull l lVar) {
        y(2, lVar);
    }

    protected static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.c {

        private Rect f28108a;

        private l f28109b;

        private l f28110c;

        private boolean f28111d;

        private boolean f28112e;

        public ExtendedFloatingActionButtonBehavior() {
            this.f28111d = false;
            this.f28112e = true;
        }

        private static boolean G(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                return ((CoordinatorLayout.f) layoutParams).f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean J(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f28111d || this.f28112e) && ((CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams()).e() == view.getId();
        }

        private boolean L(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!J(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.f28108a == null) {
                this.f28108a = new Rect();
            }
            Rect rect = this.f28108a;
            com.google.android.material.internal.d.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                K(extendedFloatingActionButton);
                return true;
            }
            E(extendedFloatingActionButton);
            return true;
        }

        private boolean M(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!J(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                K(extendedFloatingActionButton);
                return true;
            }
            E(extendedFloatingActionButton);
            return true;
        }

        protected void E(ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z10 = this.f28112e;
            extendedFloatingActionButton.y(z10 ? 3 : 0, z10 ? this.f28110c : this.f28109b);
        }

        @Override
        public boolean b(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, Rect rect) {
            return super.b(coordinatorLayout, extendedFloatingActionButton, rect);
        }

        @Override
        public boolean h(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                L(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            }
            if (!G(view)) {
                return false;
            }
            M(view, extendedFloatingActionButton);
            return false;
        }

        @Override
        public boolean l(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, int i10) {
            List<View> dependencies = coordinatorLayout.getDependencies(extendedFloatingActionButton);
            int size = dependencies.size();
            for (int i11 = 0; i11 < size; i11++) {
                View view = dependencies.get(i11);
                if (!(view instanceof AppBarLayout)) {
                    if (G(view) && M(view, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (L(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(extendedFloatingActionButton, i10);
            return true;
        }

        protected void K(ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z10 = this.f28112e;
            extendedFloatingActionButton.y(z10 ? 2 : 1, z10 ? this.f28110c : this.f28109b);
        }

        @Override
        public void g(CoordinatorLayout.f fVar) {
            if (fVar.f7605h == 0) {
                fVar.f7605h = 80;
            }
        }

        public ExtendedFloatingActionButtonBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ExtendedFloatingActionButton_Behavior_Layout);
            this.f28111d = typedArrayObtainStyledAttributes.getBoolean(R$styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.f28112e = typedArrayObtainStyledAttributes.getBoolean(R$styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = I;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f28099r = 0;
        com.google.android.material.floatingactionbutton.a aVar = new com.google.android.material.floatingactionbutton.a();
        this.f28100s = aVar;
        m mVar = new m(aVar);
        this.f28103v = mVar;
        k kVar = new k(aVar);
        this.f28104w = kVar;
        this.B = true;
        this.C = false;
        this.D = false;
        Context context2 = getContext();
        this.A = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.ExtendedFloatingActionButton, i10, i11, new int[0]);
        qa.h hVarC = qa.h.c(context2, typedArrayI, R$styleable.ExtendedFloatingActionButton_showMotionSpec);
        qa.h hVarC2 = qa.h.c(context2, typedArrayI, R$styleable.ExtendedFloatingActionButton_hideMotionSpec);
        qa.h hVarC3 = qa.h.c(context2, typedArrayI, R$styleable.ExtendedFloatingActionButton_extendMotionSpec);
        qa.h hVarC4 = qa.h.c(context2, typedArrayI, R$styleable.ExtendedFloatingActionButton_shrinkMotionSpec);
        this.f28105x = typedArrayI.getDimensionPixelSize(R$styleable.ExtendedFloatingActionButton_collapsedSize, -1);
        int i12 = typedArrayI.getInt(R$styleable.ExtendedFloatingActionButton_extendStrategy, 1);
        this.H = i12;
        this.f28106y = ViewCompat.getPaddingStart(this);
        this.f28107z = ViewCompat.getPaddingEnd(this);
        com.google.android.material.floatingactionbutton.a aVar2 = new com.google.android.material.floatingactionbutton.a();
        j jVar = new j(aVar2, v(i12), true);
        this.f28102u = jVar;
        j jVar2 = new j(aVar2, new a(), false);
        this.f28101t = jVar2;
        mVar.i(hVarC);
        kVar.i(hVarC2);
        jVar.i(hVarC3);
        jVar2.i(hVarC4);
        typedArrayI.recycle();
        setShapeAppearanceModel(cb.n.g(context2, attributeSet, i10, i11, cb.n.f16848m).m());
        z();
    }

    @Override
    public void setTextColor(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        z();
    }
}
