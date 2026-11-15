package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.support.v4.media.session.c;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$attr;
import java.util.Iterator;
import java.util.LinkedHashSet;
import ya.j;

public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.c {

    private static final int f27484j = R$attr.motionDurationLong2;

    private static final int f27485k = R$attr.motionDurationMedium4;

    private static final int f27486l = R$attr.motionEasingEmphasizedInterpolator;

    private final LinkedHashSet f27487a;

    private int f27488b;

    private int f27489c;

    private TimeInterpolator f27490d;

    private TimeInterpolator f27491e;

    private int f27492f;

    private int f27493g;

    private int f27494h;

    private ViewPropertyAnimator f27495i;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f27495i = null;
        }
    }

    public interface b {
    }

    public HideBottomViewOnScrollBehavior() {
        this.f27487a = new LinkedHashSet();
        this.f27492f = 0;
        this.f27493g = 2;
        this.f27494h = 0;
    }

    private void G(View view, int i10, long j10, TimeInterpolator timeInterpolator) {
        this.f27495i = view.animate().translationY(i10).setInterpolator(timeInterpolator).setDuration(j10).setListener(new a());
    }

    private void Q(View view, int i10) {
        this.f27493g = i10;
        Iterator it = this.f27487a.iterator();
        if (it.hasNext()) {
            c.a(it.next());
            throw null;
        }
    }

    @Override
    public boolean A(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i10, int i11) {
        return i10 == 2;
    }

    public void F(b bVar) {
        this.f27487a.add(bVar);
    }

    public void H() {
        this.f27487a.clear();
    }

    public boolean I() {
        return this.f27493g == 1;
    }

    public boolean J() {
        return this.f27493g == 2;
    }

    public void K(b bVar) {
        this.f27487a.remove(bVar);
    }

    public void L(View view, int i10) {
        this.f27494h = i10;
        if (this.f27493g == 1) {
            view.setTranslationY(this.f27492f + i10);
        }
    }

    public void M(View view) {
        N(view, true);
    }

    public void N(View view, boolean z10) {
        if (I()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f27495i;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        Q(view, 1);
        int i10 = this.f27492f + this.f27494h;
        if (z10) {
            G(view, i10, this.f27489c, this.f27491e);
        } else {
            view.setTranslationY(i10);
        }
    }

    public void O(View view) {
        P(view, true);
    }

    public void P(View view, boolean z10) {
        if (J()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f27495i;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        Q(view, 2);
        if (z10) {
            G(view, 0, this.f27488b, this.f27490d);
        } else {
            view.setTranslationY(0);
        }
    }

    @Override
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i10) {
        this.f27492f = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
        this.f27488b = j.f(view.getContext(), f27484j, 225);
        this.f27489c = j.f(view.getContext(), f27485k, 175);
        Context context = view.getContext();
        int i11 = f27486l;
        this.f27490d = j.g(context, i11, qa.a.f69580d);
        this.f27491e = j.g(view.getContext(), i11, qa.a.f69579c);
        return super.l(coordinatorLayout, view, i10);
    }

    @Override
    public void t(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        if (i11 > 0) {
            M(view);
        } else if (i11 < 0) {
            O(view);
        }
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27487a = new LinkedHashSet();
        this.f27492f = 0;
        this.f27493g = 2;
        this.f27494h = 0;
    }
}
