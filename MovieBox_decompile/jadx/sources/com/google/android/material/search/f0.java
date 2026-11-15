package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.TouchObserverFrameLayout;
import java.util.Objects;

class f0 {

    private final SearchView f28749a;

    private final View f28750b;

    private final ClippableRoundedCornerLayout f28751c;

    private final FrameLayout f28752d;

    private final FrameLayout f28753e;

    private final Toolbar f28754f;

    private final Toolbar f28755g;

    private final TextView f28756h;

    private final EditText f28757i;

    private final ImageButton f28758j;

    private final View f28759k;

    private final TouchObserverFrameLayout f28760l;

    private final ya.h f28761m;

    private AnimatorSet f28762n;

    private SearchBar f28763o;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (!f0.this.f28749a.k()) {
                f0.this.f28749a.x();
            }
            f0.this.f28749a.setTransitionState(SearchView.TransitionState.SHOWN);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            f0.this.f28751c.setVisibility(0);
            f0.this.f28763o.stopOnLoadAnimation();
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            f0.this.f28751c.setVisibility(8);
            if (!f0.this.f28749a.k()) {
                f0.this.f28749a.clearFocusAndHideKeyboard();
            }
            f0.this.f28749a.setTransitionState(SearchView.TransitionState.HIDDEN);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            f0.this.f28749a.setTransitionState(SearchView.TransitionState.HIDING);
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (!f0.this.f28749a.k()) {
                f0.this.f28749a.x();
            }
            f0.this.f28749a.setTransitionState(SearchView.TransitionState.SHOWN);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            f0.this.f28751c.setVisibility(0);
            f0.this.f28749a.setTransitionState(SearchView.TransitionState.SHOWING);
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            f0.this.f28751c.setVisibility(8);
            if (!f0.this.f28749a.k()) {
                f0.this.f28749a.clearFocusAndHideKeyboard();
            }
            f0.this.f28749a.setTransitionState(SearchView.TransitionState.HIDDEN);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            f0.this.f28749a.setTransitionState(SearchView.TransitionState.HIDING);
        }
    }

    class e extends AnimatorListenerAdapter {

        final boolean f28768a;

        e(boolean z10) {
            this.f28768a = z10;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            f0.this.U(this.f28768a ? 1.0f : 0.0f);
            f0.this.f28751c.resetClipBoundsAndCornerRadius();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            f0.this.U(this.f28768a ? 0.0f : 1.0f);
        }
    }

    f0(SearchView searchView) {
        this.f28749a = searchView;
        this.f28750b = searchView.f28706a;
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = searchView.f28707b;
        this.f28751c = clippableRoundedCornerLayout;
        this.f28752d = searchView.f28710e;
        this.f28753e = searchView.f28711f;
        this.f28754f = searchView.f28712g;
        this.f28755g = searchView.f28713h;
        this.f28756h = searchView.f28714i;
        this.f28757i = searchView.f28715j;
        this.f28758j = searchView.f28716k;
        this.f28759k = searchView.f28717l;
        this.f28760l = searchView.f28718m;
        this.f28761m = new ya.h(clippableRoundedCornerLayout);
    }

    private Animator A(boolean z10) {
        return K(z10, true, this.f28757i);
    }

    private AnimatorSet B(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (this.f28762n == null) {
            animatorSet.playTogether(s(z10), t(z10));
        }
        animatorSet.playTogether(H(z10), G(z10), u(z10), w(z10), F(z10), z(z10), q(z10), A(z10), I(z10));
        animatorSet.addListener(new e(z10));
        return animatorSet;
    }

    private int C(View view) {
        int marginEnd = MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) view.getLayoutParams());
        return com.google.android.material.internal.f0.p(this.f28763o) ? this.f28763o.getLeft() - marginEnd : (this.f28763o.getRight() - this.f28749a.getWidth()) + marginEnd;
    }

    private int D(View view) {
        int marginStart = MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) view.getLayoutParams());
        int paddingStart = ViewCompat.getPaddingStart(this.f28763o);
        return com.google.android.material.internal.f0.p(this.f28763o) ? ((this.f28763o.getWidth() - this.f28763o.getRight()) + marginStart) - paddingStart : (this.f28763o.getLeft() - marginStart) + paddingStart;
    }

    private int E() {
        return ((this.f28763o.getTop() + this.f28763o.getBottom()) / 2) - ((this.f28753e.getTop() + this.f28753e.getBottom()) / 2);
    }

    private Animator F(boolean z10) {
        return K(z10, false, this.f28752d);
    }

    private Animator G(boolean z10) {
        Rect rectM = this.f28761m.m();
        Rect rectL = this.f28761m.l();
        if (rectM == null) {
            rectM = com.google.android.material.internal.f0.c(this.f28749a);
        }
        if (rectL == null) {
            rectL = com.google.android.material.internal.f0.b(this.f28751c, this.f28763o);
        }
        final Rect rect = new Rect(rectL);
        final float cornerSize = this.f28763o.getCornerSize();
        final float fMax = Math.max(this.f28751c.getCornerRadius(), this.f28761m.k());
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new com.google.android.material.internal.u(rect), rectL, rectM);
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f28802a.P(cornerSize, fMax, rect, valueAnimator);
            }
        });
        valueAnimatorOfObject.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfObject.setInterpolator(com.google.android.material.internal.v.a(z10, qa.a.f69578b));
        return valueAnimatorOfObject;
    }

    private Animator H(boolean z10) {
        TimeInterpolator timeInterpolator = z10 ? qa.a.f69577a : qa.a.f69578b;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, timeInterpolator));
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(this.f28750b));
        return valueAnimatorOfFloat;
    }

    private Animator I(boolean z10) {
        return K(z10, true, this.f28756h);
    }

    private AnimatorSet J(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(L());
        k(animatorSet);
        animatorSet.setInterpolator(com.google.android.material.internal.v.a(z10, qa.a.f69578b));
        animatorSet.setDuration(z10 ? 350L : 300L);
        return animatorSet;
    }

    private Animator K(boolean z10, boolean z11, View view) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(z11 ? D(view) : C(view), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.m(view));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(E(), 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(com.google.android.material.internal.q.n(view));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        animatorSet.setDuration(z10 ? 300L : 250L);
        animatorSet.setInterpolator(com.google.android.material.internal.v.a(z10, qa.a.f69578b));
        return animatorSet;
    }

    private Animator L() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f28751c.getHeight(), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.n(this.f28751c));
        return valueAnimatorOfFloat;
    }

    public static void N(androidx.appcompat.graphics.drawable.c cVar, ValueAnimator valueAnimator) {
        cVar.setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public static void O(com.google.android.material.internal.h hVar, ValueAnimator valueAnimator) {
        hVar.a(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public void P(float f10, float f11, Rect rect, ValueAnimator valueAnimator) {
        this.f28751c.updateClipBoundsAndCornerRadius(rect, qa.a.a(f10, f11, valueAnimator.getAnimatedFraction()));
    }

    public void Q() {
        AnimatorSet animatorSetB = B(true);
        animatorSetB.addListener(new a());
        animatorSetB.start();
    }

    public void R() {
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = this.f28751c;
        clippableRoundedCornerLayout.setTranslationY(clippableRoundedCornerLayout.getHeight());
        AnimatorSet animatorSetJ = J(true);
        animatorSetJ.addListener(new c());
        animatorSetJ.start();
    }

    private void T(float f10) {
        ActionMenuView actionMenuViewB;
        if (!this.f28749a.isMenuItemsAnimated() || (actionMenuViewB = ToolbarUtils.b(this.f28754f)) == null) {
            return;
        }
        actionMenuViewB.setAlpha(f10);
    }

    public void U(float f10) {
        this.f28758j.setAlpha(f10);
        this.f28759k.setAlpha(f10);
        this.f28760l.setAlpha(f10);
        T(f10);
    }

    private void V(Drawable drawable) {
        if (drawable instanceof androidx.appcompat.graphics.drawable.c) {
            ((androidx.appcompat.graphics.drawable.c) drawable).setProgress(1.0f);
        }
        if (drawable instanceof com.google.android.material.internal.h) {
            ((com.google.android.material.internal.h) drawable).a(1.0f);
        }
    }

    private void W(Toolbar toolbar) {
        ActionMenuView actionMenuViewB = ToolbarUtils.b(toolbar);
        if (actionMenuViewB != null) {
            for (int i10 = 0; i10 < actionMenuViewB.getChildCount(); i10++) {
                View childAt = actionMenuViewB.getChildAt(i10);
                childAt.setClickable(false);
                childAt.setFocusable(false);
                childAt.setFocusableInTouchMode(false);
            }
        }
    }

    private void Y() {
        Menu menu = this.f28755g.getMenu();
        if (menu != null) {
            menu.clear();
        }
        if (this.f28763o.getMenuResId() == -1 || !this.f28749a.isMenuItemsAnimated()) {
            this.f28755g.setVisibility(8);
            return;
        }
        this.f28755g.inflateMenu(this.f28763o.getMenuResId());
        W(this.f28755g);
        this.f28755g.setVisibility(0);
    }

    private AnimatorSet b0() {
        if (this.f28749a.k()) {
            this.f28749a.clearFocusAndHideKeyboard();
        }
        AnimatorSet animatorSetB = B(false);
        animatorSetB.addListener(new b());
        animatorSetB.start();
        return animatorSetB;
    }

    private AnimatorSet c0() {
        if (this.f28749a.k()) {
            this.f28749a.clearFocusAndHideKeyboard();
        }
        AnimatorSet animatorSetJ = J(false);
        animatorSetJ.addListener(new d());
        animatorSetJ.start();
        return animatorSetJ;
    }

    private void d0() {
        if (this.f28749a.k()) {
            this.f28749a.x();
        }
        this.f28749a.setTransitionState(SearchView.TransitionState.SHOWING);
        Y();
        this.f28757i.setText(this.f28763o.getText());
        EditText editText = this.f28757i;
        editText.setSelection(editText.getText().length());
        this.f28751c.setVisibility(4);
        this.f28751c.post(new Runnable() {
            @Override
            public final void run() {
                this.f28737a.Q();
            }
        });
    }

    private void e0() {
        if (this.f28749a.k()) {
            final SearchView searchView = this.f28749a;
            Objects.requireNonNull(searchView);
            searchView.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    searchView.x();
                }
            }, 150L);
        }
        this.f28751c.setVisibility(4);
        this.f28751c.post(new Runnable() {
            @Override
            public final void run() {
                this.f28746a.R();
            }
        });
    }

    private void j(AnimatorSet animatorSet) {
        ActionMenuView actionMenuViewB = ToolbarUtils.b(this.f28754f);
        if (actionMenuViewB == null) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(C(actionMenuViewB), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.m(actionMenuViewB));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(E(), 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(com.google.android.material.internal.q.n(actionMenuViewB));
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
    }

    private void k(AnimatorSet animatorSet) {
        ImageButton imageButtonE = ToolbarUtils.e(this.f28754f);
        if (imageButtonE == null) {
            return;
        }
        Drawable drawableQ = a1.a.q(imageButtonE.getDrawable());
        if (!this.f28749a.isAnimatedNavigationIcon()) {
            V(drawableQ);
        } else {
            m(animatorSet, drawableQ);
            n(animatorSet, drawableQ);
        }
    }

    private void l(AnimatorSet animatorSet) {
        ImageButton imageButtonE = ToolbarUtils.e(this.f28754f);
        if (imageButtonE == null) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(D(imageButtonE), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.m(imageButtonE));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(E(), 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(com.google.android.material.internal.q.n(imageButtonE));
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
    }

    private void m(AnimatorSet animatorSet, Drawable drawable) {
        if (drawable instanceof androidx.appcompat.graphics.drawable.c) {
            final androidx.appcompat.graphics.drawable.c cVar = (androidx.appcompat.graphics.drawable.c) drawable;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    f0.N(cVar, valueAnimator);
                }
            });
            animatorSet.playTogether(valueAnimatorOfFloat);
        }
    }

    private void n(AnimatorSet animatorSet, Drawable drawable) {
        if (drawable instanceof com.google.android.material.internal.h) {
            final com.google.android.material.internal.h hVar = (com.google.android.material.internal.h) drawable;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    f0.O(hVar, valueAnimator);
                }
            });
            animatorSet.playTogether(valueAnimatorOfFloat);
        }
    }

    private Animator q(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, qa.a.f69578b));
        if (this.f28749a.isMenuItemsAnimated()) {
            valueAnimatorOfFloat.addUpdateListener(new com.google.android.material.internal.i(ToolbarUtils.b(this.f28755g), ToolbarUtils.b(this.f28754f)));
        }
        return valueAnimatorOfFloat;
    }

    private AnimatorSet s(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        k(animatorSet);
        animatorSet.setDuration(z10 ? 300L : 250L);
        animatorSet.setInterpolator(com.google.android.material.internal.v.a(z10, qa.a.f69578b));
        return animatorSet;
    }

    private AnimatorSet t(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        l(animatorSet);
        j(animatorSet);
        animatorSet.setDuration(z10 ? 300L : 250L);
        animatorSet.setInterpolator(com.google.android.material.internal.v.a(z10, qa.a.f69578b));
        return animatorSet;
    }

    private Animator u(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 50L : 42L);
        valueAnimatorOfFloat.setStartDelay(z10 ? 250L : 0L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, qa.a.f69577a));
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(this.f28758j));
        return valueAnimatorOfFloat;
    }

    private Animator v(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 150L : 83L);
        valueAnimatorOfFloat.setStartDelay(z10 ? 75L : 0L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, qa.a.f69577a));
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(this.f28759k, this.f28760l));
        return valueAnimatorOfFloat;
    }

    private Animator w(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(v(z10), y(z10), x(z10));
        return animatorSet;
    }

    private Animator x(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.95f, 1.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, qa.a.f69578b));
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.g(this.f28760l));
        return valueAnimatorOfFloat;
    }

    private Animator y(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat((this.f28760l.getHeight() * 0.050000012f) / 2.0f, 0.0f);
        valueAnimatorOfFloat.setDuration(z10 ? 300L : 250L);
        valueAnimatorOfFloat.setInterpolator(com.google.android.material.internal.v.a(z10, qa.a.f69578b));
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.n(this.f28759k));
        return valueAnimatorOfFloat;
    }

    private Animator z(boolean z10) {
        return K(z10, false, this.f28755g);
    }

    AnimatorSet M() {
        return this.f28763o != null ? b0() : c0();
    }

    public androidx.activity.b S() {
        return this.f28761m.c();
    }

    void X(SearchBar searchBar) {
        this.f28763o = searchBar;
    }

    void Z() {
        if (this.f28763o != null) {
            d0();
        } else {
            e0();
        }
    }

    void a0(androidx.activity.b bVar) {
        this.f28761m.t(bVar, this.f28763o);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void f0(androidx.activity.b bVar) {
        if (bVar.a() <= 0.0f) {
            return;
        }
        ya.h hVar = this.f28761m;
        SearchBar searchBar = this.f28763o;
        hVar.v(bVar, searchBar, searchBar.getCornerSize());
        AnimatorSet animatorSet = this.f28762n;
        if (animatorSet != null) {
            animatorSet.setCurrentPlayTime((long) (bVar.a() * this.f28762n.getDuration()));
            return;
        }
        if (this.f28749a.k()) {
            this.f28749a.clearFocusAndHideKeyboard();
        }
        if (this.f28749a.isAnimatedNavigationIcon()) {
            AnimatorSet animatorSetS = s(false);
            this.f28762n = animatorSetS;
            animatorSetS.start();
            this.f28762n.pause();
        }
    }

    public void o() {
        this.f28761m.g(this.f28763o);
        AnimatorSet animatorSet = this.f28762n;
        if (animatorSet != null) {
            animatorSet.reverse();
        }
        this.f28762n = null;
    }

    public void p() {
        this.f28761m.j(M().getTotalDuration(), this.f28763o);
        if (this.f28762n != null) {
            t(false).start();
            this.f28762n.resume();
        }
        this.f28762n = null;
    }

    ya.h r() {
        return this.f28761m;
    }
}
