package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.ViewCompat;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.ToolbarUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

class i {

    private Animator f28774d;

    private Animator f28775e;

    private boolean f28776f;

    private boolean f28777g;

    private final Set f28771a = new LinkedHashSet();

    private final Set f28772b = new LinkedHashSet();

    private final Set f28773c = new LinkedHashSet();

    private boolean f28778h = true;

    private Animator f28779i = null;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            i.this.k(new g() {
                @Override
                public final void a(SearchBar.b bVar) {
                    bVar.a();
                }
            });
        }
    }

    class b extends AnimatorListenerAdapter {

        final View f28781a;

        final Animator f28782b;

        b(View view, Animator animator) {
            this.f28781a = view;
            this.f28782b = animator;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f28781a.setVisibility(8);
            this.f28782b.start();
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            i.this.f28779i = null;
        }
    }

    class d extends AnimatorListenerAdapter {

        final SearchBar f28785a;

        d(SearchBar searchBar) {
            this.f28785a = searchBar;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            i.this.f28776f = false;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.f28785a.setVisibility(4);
        }
    }

    class e extends AnimatorListenerAdapter {
        e() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            i.this.f28779i = null;
        }
    }

    class f extends AnimatorListenerAdapter {

        final SearchBar f28788a;

        f(SearchBar searchBar) {
            this.f28788a = searchBar;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f28788a.setVisibility(0);
            i.this.f28777g = false;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.f28788a.stopOnLoadAnimation();
        }
    }

    interface g {
        void a(SearchBar.b bVar);
    }

    i() {
    }

    public static void A(cb.i iVar, View view, ValueAnimator valueAnimator) {
        iVar.e0(1.0f - valueAnimator.getAnimatedFraction());
        ViewCompat.setBackground(view, iVar);
        view.setAlpha(1.0f);
    }

    public void C(SearchBar searchBar, View view, AppBarLayout appBarLayout, boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(t(searchBar, view), o(searchBar, view, appBarLayout));
        animatorSet.addListener(new c());
        Iterator it = this.f28772b.iterator();
        while (it.hasNext()) {
            animatorSet.addListener((AnimatorListenerAdapter) it.next());
        }
        if (z10) {
            animatorSet.setDuration(0L);
        }
        animatorSet.start();
        this.f28779i = animatorSet;
    }

    public void k(g gVar) {
        Iterator it = this.f28771a.iterator();
        while (it.hasNext()) {
            gVar.a((SearchBar.b) it.next());
        }
    }

    private Animator l(SearchBar searchBar, View view, AppBarLayout appBarLayout) {
        return p(searchBar, view, appBarLayout).o(250L).d(new f(searchBar)).g();
    }

    private Animator m(View view) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(view));
        TimeInterpolator timeInterpolator = qa.a.f69577a;
        valueAnimatorOfFloat.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat.setDuration(this.f28778h ? 250L : 0L);
        valueAnimatorOfFloat.setStartDelay(this.f28778h ? 500L : 0L);
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.addUpdateListener(com.google.android.material.internal.q.f(view));
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat2.setDuration(250L);
        valueAnimatorOfFloat2.setStartDelay(750L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        return animatorSet;
    }

    private List n(View view) {
        boolean zP = com.google.android.material.internal.f0.p(view);
        ArrayList arrayList = new ArrayList();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if ((!zP && (childAt instanceof ActionMenuView)) || (zP && !(childAt instanceof ActionMenuView))) {
                    arrayList.add(childAt);
                }
            }
        }
        return arrayList;
    }

    private Animator o(SearchBar searchBar, View view, AppBarLayout appBarLayout) {
        return p(searchBar, view, appBarLayout).o(300L).d(new d(searchBar)).i();
    }

    private com.google.android.material.internal.g p(SearchBar searchBar, View view, AppBarLayout appBarLayout) {
        return new com.google.android.material.internal.g(searchBar, view).m(q(searchBar, view)).n(appBarLayout != null ? appBarLayout.getTop() : 0).c(n(view));
    }

    private ValueAnimator.AnimatorUpdateListener q(SearchBar searchBar, final View view) {
        final cb.i iVarM = cb.i.m(view.getContext());
        iVarM.a0(searchBar.getCornerSize());
        iVarM.c0(ViewCompat.getElevation(searchBar));
        return new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                i.A(iVarM, view, valueAnimator);
            }
        };
    }

    private List r(SearchBar searchBar) {
        List listI = com.google.android.material.internal.f0.i(searchBar);
        if (searchBar.getCenterView() != null) {
            listI.remove(searchBar.getCenterView());
        }
        return listI;
    }

    private Animator s(SearchBar searchBar) {
        List listR = r(searchBar);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.e(listR));
        valueAnimatorOfFloat.setDuration(100L);
        valueAnimatorOfFloat.setInterpolator(qa.a.f69577a);
        return valueAnimatorOfFloat;
    }

    private Animator t(SearchBar searchBar, final View view) {
        List listR = r(searchBar);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.e(listR));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setAlpha(0.0f);
            }
        });
        valueAnimatorOfFloat.setDuration(75L);
        valueAnimatorOfFloat.setInterpolator(qa.a.f69577a);
        return valueAnimatorOfFloat;
    }

    private Animator u(View view) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(view));
        valueAnimatorOfFloat.setInterpolator(qa.a.f69577a);
        valueAnimatorOfFloat.setDuration(250L);
        return valueAnimatorOfFloat;
    }

    private Animator v(TextView textView, View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setStartDelay(250L);
        animatorSet.play(w(textView));
        if (view != null) {
            animatorSet.play(u(view));
        }
        return animatorSet;
    }

    private Animator w(TextView textView) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(com.google.android.material.internal.q.f(textView));
        valueAnimatorOfFloat.setInterpolator(qa.a.f69577a);
        valueAnimatorOfFloat.setDuration(250L);
        return valueAnimatorOfFloat;
    }

    boolean D(AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f28773c.remove(animatorListenerAdapter);
    }

    boolean E(AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f28772b.remove(animatorListenerAdapter);
    }

    boolean F(SearchBar.b bVar) {
        return this.f28771a.remove(bVar);
    }

    void G(boolean z10) {
        this.f28778h = z10;
    }

    void H(SearchBar searchBar, View view, AppBarLayout appBarLayout, boolean z10) {
        Animator animator;
        if (y() && (animator = this.f28779i) != null) {
            animator.cancel();
        }
        this.f28777g = true;
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(l(searchBar, view, appBarLayout), s(searchBar));
        animatorSet.addListener(new e());
        Iterator it = this.f28773c.iterator();
        while (it.hasNext()) {
            animatorSet.addListener((AnimatorListenerAdapter) it.next());
        }
        if (z10) {
            animatorSet.setDuration(0L);
        }
        animatorSet.start();
        this.f28779i = animatorSet;
    }

    void I(final SearchBar searchBar, final View view, final AppBarLayout appBarLayout, final boolean z10) {
        Animator animator;
        if (x() && (animator = this.f28779i) != null) {
            animator.cancel();
        }
        this.f28776f = true;
        view.setVisibility(4);
        view.post(new Runnable() {
            @Override
            public final void run() {
                this.f28741a.C(searchBar, view, appBarLayout, z10);
            }
        });
    }

    void J(SearchBar searchBar) {
        k(new g() {
            @Override
            public final void a(SearchBar.b bVar) {
                bVar.b();
            }
        });
        TextView textView = searchBar.getTextView();
        View centerView = searchBar.getCenterView();
        View viewF = ToolbarUtils.f(searchBar);
        Animator animatorV = v(textView, viewF);
        animatorV.addListener(new a());
        this.f28774d = animatorV;
        textView.setAlpha(0.0f);
        if (viewF != null) {
            viewF.setAlpha(0.0f);
        }
        if (centerView == null) {
            animatorV.start();
            return;
        }
        centerView.setAlpha(0.0f);
        centerView.setVisibility(0);
        Animator animatorM = m(centerView);
        this.f28775e = animatorM;
        animatorM.addListener(new b(centerView, animatorV));
        animatorM.start();
    }

    void K(SearchBar searchBar) {
        Animator animator = this.f28774d;
        if (animator != null) {
            animator.end();
        }
        Animator animator2 = this.f28775e;
        if (animator2 != null) {
            animator2.end();
        }
        View centerView = searchBar.getCenterView();
        if (centerView != null) {
            centerView.setAlpha(0.0f);
        }
    }

    void h(AnimatorListenerAdapter animatorListenerAdapter) {
        this.f28773c.add(animatorListenerAdapter);
    }

    void i(AnimatorListenerAdapter animatorListenerAdapter) {
        this.f28772b.add(animatorListenerAdapter);
    }

    void j(SearchBar.b bVar) {
        this.f28771a.add(bVar);
    }

    boolean x() {
        return this.f28777g;
    }

    boolean y() {
        return this.f28776f;
    }

    boolean z() {
        return this.f28778h;
    }
}
