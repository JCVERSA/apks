package com.transsion.widgetslib.util.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.NonNull;
import com.transsion.widgetslib.util.search.SearchAnimManager;
import com.transsion.widgetslib.widget.SearchBar;
import defpackage.bq5;
import defpackage.olb;
import java.lang.ref.WeakReference;
import java.util.Arrays;

public class SearchAnimManager {
    public static SearchAnimManager N;
    public float a = 1.0f;
    public float b = 0.0f;
    public WeakReference c;
    public WeakReference d;
    public WeakReference[] e;
    public WeakReference[] f;
    public WeakReference g;
    public WeakReference h;
    public boolean i;
    public int j;
    public int k;
    public boolean l;
    public WeakReference m;
    public static final Interpolator n = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator o = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator p = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator q = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator r = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator s = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator t = new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);
    public static final Interpolator u = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator v = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator w = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator x = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator y = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator z = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator A = new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);
    public static final Interpolator B = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator C = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator D = new PathInterpolator(0.0f, 0.0f, 0.0f, 1.0f);
    public static final Interpolator E = new PathInterpolator(0.0f, 0.0f, 0.0f, 1.0f);
    public static final Interpolator F = new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);
    public static final Interpolator G = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator H = new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);
    public static final Interpolator I = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator J = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator K = new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);
    public static final Interpolator L = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    public static final Interpolator M = new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);

    public static class ShowSoftInputRunnable implements Runnable {
        private final WeakReference<SearchBar> mHostViewWR;

        public ShowSoftInputRunnable(@NonNull SearchBar searchBar) {
            this.mHostViewWR = new WeakReference<>(searchBar);
        }

        @Override
        public void run() {
            SearchBar searchBar = this.mHostViewWR.get();
            if (searchBar != null) {
                olb.T0(searchBar.getEditText());
            }
        }
    }

    public static class b extends AnimatorListenerAdapter {
        public final WeakReference b;

        public b(SearchBar searchBar) {
            this.b = new WeakReference(searchBar);
        }

        public static void b(SearchBar searchBar) {
            olb.T0(searchBar.getEditText());
        }

        public void c() {
            final SearchBar searchBar = (SearchBar) this.b.get();
            if (searchBar != null) {
                searchBar.post(new Runnable() {
                    @Override
                    public final void run() {
                        SearchAnimManager.b.b(searchBar);
                    }
                });
            }
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            SearchBar searchBar = (SearchBar) this.b.get();
            if (searchBar != null) {
                searchBar.setVisibility(0);
                c();
            }
        }
    }

    public static class c extends AnimatorListenerAdapter {
        public final WeakReference b;
        public final WeakReference c;

        public c(Object obj, WeakReference weakReference) {
            this.b = new WeakReference(obj);
            this.c = weakReference;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            WeakReference weakReference;
            SearchBar searchBar;
            if (this.b.get() == null || (weakReference = this.c) == null || (searchBar = (SearchBar) weakReference.get()) == null) {
                return;
            }
            searchBar.requireSearchAnimManagerTrans(false);
        }
    }

    public static class d implements ValueAnimator.AnimatorUpdateListener {
        public final WeakReference b;
        public final int c;
        public final int d;

        public d(View view, int i, int i2) {
            this.b = new WeakReference(view);
            this.c = i;
            this.d = i2;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (this.b.get() != null) {
                View view = (View) this.b.get();
                int i = this.c;
                if (i == 0) {
                    bq5.p("SearchAnimManager", "onAnimationUpdate: //进入-进入 translation = " + (this.d - fFloatValue) + " mHostViewWR.get() = " + view.hashCode());
                    view.setTranslationY(((float) this.d) - fFloatValue);
                    return;
                }
                if (i == 1) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("onAnimationUpdate: //进入-退出 translation = ");
                    float f = -fFloatValue;
                    sb.append(f);
                    sb.append(" mHostViewWR.get() = ");
                    sb.append(view.hashCode());
                    bq5.p("SearchAnimManager", sb.toString());
                    view.setTranslationY(f);
                    return;
                }
                if (i == 2) {
                    bq5.p("SearchAnimManager", "onAnimationUpdate: //退出-退出 translation = " + fFloatValue + " mHostViewWR.get() = " + view.hashCode());
                    view.setTranslationY(fFloatValue);
                    return;
                }
                if (i == 3) {
                    bq5.p("SearchAnimManager", "onAnimationUpdate: //退出-进入 translation = " + (fFloatValue - this.d) + " mHostViewWR.get() = " + view.hashCode());
                    view.setTranslationY(fFloatValue - ((float) this.d));
                }
            }
        }
    }

    public static SearchAnimManager getInstance() {
        if (N == null) {
            N = new SearchAnimManager();
        }
        return N;
    }

    public void A(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    public void B(SearchBar searchBar, View view) {
        this.h = new WeakReference(view);
        this.f = D(new View[]{view});
        this.d = new WeakReference(searchBar);
        v();
    }

    public final void C() {
        WeakReference weakReference = this.c;
        if (weakReference == null) {
            bq5.f("unionPgsTranslationY object recycled");
            return;
        }
        SearchBar searchBar = (SearchBar) weakReference.get();
        if (searchBar != null) {
            Rect rect = new Rect();
            searchBar.getGlobalVisibleRect(rect);
            this.j = rect.top;
        }
    }

    public final WeakReference[] D(View[] viewArr) {
        if (viewArr == null || viewArr.length == 0) {
            return new WeakReference[0];
        }
        WeakReference[] weakReferenceArr = new WeakReference[viewArr.length];
        for (int i = 0; i < viewArr.length; i++) {
            weakReferenceArr[i] = new WeakReference(viewArr[i]);
        }
        return weakReferenceArr;
    }

    public final void a(SearchBar searchBar, SearchBar searchBar2) {
        if (searchBar2.getMeasuredWidth() != searchBar.getMeasuredWidth()) {
            this.a = (searchBar2.getMeasuredWidth() * 1.0f) / searchBar.getMeasuredWidth();
            this.b = (searchBar2.getMeasuredWidth() - searchBar.getMeasuredWidth()) / 2.0f;
            searchBar.requireSearchAnimManagerTrans(true);
        } else {
            A(1.0f, 0.0f);
        }
        bq5.p("SearchAnimManager", "calculateScaleAndOffset: mScale = " + this.a + " mOffset = " + this.b);
    }

    public AnimatorSet b() {
        bq5.p("SearchAnimManager", "enterSearch: getSecondPageReCreate() = " + getSecondPageReCreate());
        if (getSecondPageReCreate()) {
            setSecondPageReCreate(false);
            return null;
        }
        this.i = true;
        if (olb.E) {
            this.m = new WeakReference(e());
        } else {
            int i = this.k;
            if (i == 0) {
                C();
                this.m = new WeakReference(c());
            } else if (i == 1) {
                this.m = new WeakReference(d());
            } else {
                this.m = new WeakReference(e());
            }
        }
        AnimatorSet animatorSet = (AnimatorSet) this.m.get();
        SearchBar searchBar = (SearchBar) this.d.get();
        if (animatorSet != null && searchBar != null) {
            animatorSet.addListener(new b(searchBar));
        }
        return animatorSet;
    }

    public final AnimatorSet c() {
        WeakReference weakReference = this.c;
        SearchBar searchBar = weakReference != null ? (SearchBar) weakReference.get() : null;
        WeakReference weakReference2 = this.d;
        SearchBar searchBar2 = weakReference2 != null ? (SearchBar) weakReference2.get() : null;
        if (searchBar == null || searchBar2 == null) {
            bq5.f("object recycled");
            return null;
        }
        int i = this.j;
        Rect rect = new Rect();
        searchBar2.getGlobalVisibleRect(rect);
        int i2 = rect.top;
        int i3 = i - i2;
        bq5.c("SearchAnimManager", "enterSearchForPolicyA: startY =" + i + " endY = " + i2 + " transY = " + i3);
        View view = (View) this.h.get();
        if (view != null) {
            view.setTranslationY(i3);
        }
        ValueAnimator valueAnimatorM = m(this.h, i3, n, 400L);
        ValueAnimator valueAnimatorL = l(this.g, i3, o, 400L);
        ValueAnimator valueAnimatorJ = j(this.e, q, 250L);
        u();
        ValueAnimator valueAnimatorK = k(this.f, p, 250L, 150L);
        a(searchBar, searchBar2);
        AnimatorSet animatorSetStartSearchForTransition = ((SearchBar) this.c.get()).startSearchForTransition(this.a, this.b);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorM, valueAnimatorL, valueAnimatorJ, animatorSetStartSearchForTransition, valueAnimatorK);
        animatorSet.start();
        return animatorSet;
    }

    public final AnimatorSet d() {
        int iH = olb.h(((SearchBar) this.d.get()).getContext(), 56);
        ((View) this.h.get()).setTranslationY(iH);
        ValueAnimator valueAnimatorM = m(this.h, iH, v, 400L);
        ValueAnimator valueAnimatorL = l(this.g, iH, w, 400L);
        ((SearchBar) this.d.get()).setVisibility(0);
        ((SearchBar) this.d.get()).setAlpha(0.0f);
        ValueAnimator valueAnimatorQ = q(this.d, y, 250L);
        valueAnimatorQ.setStartDelay(0L);
        ValueAnimator valueAnimatorJ = j(this.e, z, 250L);
        u();
        ValueAnimator valueAnimatorK = k(this.f, x, 250L, 150L);
        AnimatorSet animatorSetStartSearchForTransition = ((SearchBar) this.d.get()).startSearchForTransition();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorM, valueAnimatorL, valueAnimatorJ, animatorSetStartSearchForTransition, valueAnimatorK, valueAnimatorQ);
        animatorSet.start();
        return animatorSet;
    }

    public final AnimatorSet e() {
        ((SearchBar) this.d.get()).setVisibility(0);
        int iH = olb.h(((View) this.h.get()).getContext(), 56);
        ValueAnimator valueAnimatorM = m(this.h, iH, F, 400L);
        ValueAnimator valueAnimatorL = l(this.g, iH, G, 400L);
        ValueAnimator valueAnimatorJ = j(this.e, I, 250L);
        u();
        ValueAnimator valueAnimatorK = k(this.f, H, 250L, 150L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorM, valueAnimatorL, valueAnimatorJ, valueAnimatorK);
        animatorSet.start();
        return animatorSet;
    }

    public AnimatorSet f() {
        AnimatorSet animatorSetI;
        if (!this.i || w()) {
            return null;
        }
        this.i = false;
        if (olb.E) {
            animatorSetI = i();
        } else {
            int i = this.k;
            if (i == 0) {
                animatorSetI = g();
            } else {
                animatorSetI = i == 1 ? h() : i();
            }
        }
        if (animatorSetI != null) {
            animatorSetI.addListener(new c(N, this.c));
        }
        t();
        return animatorSetI;
    }

    public AnimatorSet g() {
        WeakReference weakReference = this.c;
        SearchBar searchBar = weakReference != null ? (SearchBar) weakReference.get() : null;
        WeakReference weakReference2 = this.d;
        SearchBar searchBar2 = weakReference2 != null ? (SearchBar) weakReference2.get() : null;
        if (searchBar == null || searchBar2 == null) {
            bq5.f("object recycled");
            return null;
        }
        searchBar2.setVisibility(4);
        ValueAnimator valueAnimatorN = n(this.f, u, 200L);
        ValueAnimator valueAnimatorS = s(this.e, t, 200L);
        valueAnimatorS.setStartDelay(50L);
        int i = this.j;
        Rect rect = new Rect();
        searchBar2.getGlobalVisibleRect(rect);
        int i2 = i - rect.top;
        ValueAnimator valueAnimatorO = o(this.h, i2, s, 200L);
        ValueAnimator valueAnimatorP = p(this.g, i2, r, 200L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorN, valueAnimatorS, valueAnimatorO, valueAnimatorP);
        a(searchBar, searchBar2);
        animatorSet.playTogether(searchBar.endSearchForTransition(this.a, this.b));
        animatorSet.start();
        return animatorSet;
    }

    public int getActionPolicy() {
        return this.k;
    }

    public float getOffset() {
        return this.b;
    }

    public float getScale() {
        return this.a;
    }

    public boolean getSecondPageReCreate() {
        return this.l;
    }

    public AnimatorSet h() {
        ValueAnimator valueAnimatorN = n(this.f, E, 250L);
        ValueAnimator valueAnimatorS = s(this.e, C, 250L);
        valueAnimatorS.setStartDelay(100L);
        ValueAnimator valueAnimatorR = r(this.d, D, 200L);
        int iH = olb.h(((SearchBar) this.d.get()).getContext(), 56);
        ValueAnimator valueAnimatorO = o(this.h, iH, B, 350L);
        ValueAnimator valueAnimatorP = p(this.g, iH, A, 350L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorN, valueAnimatorS, valueAnimatorO, valueAnimatorP, valueAnimatorR);
        animatorSet.start();
        return animatorSet;
    }

    public AnimatorSet i() {
        ValueAnimator valueAnimatorN = n(this.f, M, 250L);
        ValueAnimator valueAnimatorS = s(this.e, L, 250L);
        valueAnimatorS.setStartDelay(200L);
        int iH = olb.h(((View) this.h.get()).getContext(), 56);
        ValueAnimator valueAnimatorO = o(this.h, iH, K, 250L);
        ValueAnimator valueAnimatorP = p(this.g, iH, J, 350L);
        valueAnimatorP.setStartDelay(100L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorN, valueAnimatorS, valueAnimatorO, valueAnimatorP);
        animatorSet.start();
        return animatorSet;
    }

    public final ValueAnimator j(WeakReference[] weakReferenceArr, Interpolator interpolator, long j) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setInterpolator(interpolator);
        valueAnimatorOfFloat.setDuration(j);
        valueAnimatorOfFloat.addUpdateListener(new a(weakReferenceArr));
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator k(WeakReference[] weakReferenceArr, Interpolator interpolator, long j, long j2) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setStartDelay(j2);
        valueAnimatorOfFloat.setDuration(j);
        valueAnimatorOfFloat.setInterpolator(interpolator);
        valueAnimatorOfFloat.addUpdateListener(new a(weakReferenceArr));
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator l(WeakReference weakReference, int i, Interpolator interpolator, long j) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, i);
        valueAnimatorOfFloat.setInterpolator(interpolator);
        valueAnimatorOfFloat.setDuration(j);
        valueAnimatorOfFloat.addUpdateListener(new d((View) weakReference.get(), 1, i));
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator m(WeakReference weakReference, int i, Interpolator interpolator, long j) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, i);
        valueAnimatorOfFloat.setInterpolator(interpolator);
        valueAnimatorOfFloat.setDuration(j);
        valueAnimatorOfFloat.addUpdateListener(new d((View) weakReference.get(), 0, i));
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator n(WeakReference[] weakReferenceArr, Interpolator interpolator, long j) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setDuration(j);
        valueAnimatorOfFloat.setInterpolator(interpolator);
        valueAnimatorOfFloat.addUpdateListener(new a(weakReferenceArr));
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator o(WeakReference weakReference, int i, Interpolator interpolator, long j) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, i);
        valueAnimatorOfFloat.setDuration(j);
        valueAnimatorOfFloat.setInterpolator(interpolator);
        valueAnimatorOfFloat.addUpdateListener(new d((View) weakReference.get(), 2, i));
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator p(WeakReference weakReference, int i, Interpolator interpolator, long j) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, i);
        valueAnimatorOfFloat.setDuration(j);
        valueAnimatorOfFloat.setInterpolator(interpolator);
        valueAnimatorOfFloat.addUpdateListener(new d((View) weakReference.get(), 3, i));
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator q(WeakReference weakReference, Interpolator interpolator, long j) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(j);
        valueAnimatorOfFloat.setInterpolator(interpolator);
        valueAnimatorOfFloat.addUpdateListener(new a((View) weakReference.get()));
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator r(WeakReference weakReference, Interpolator interpolator, long j) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setDuration(j);
        valueAnimatorOfFloat.setInterpolator(interpolator);
        valueAnimatorOfFloat.addUpdateListener(new a((View) weakReference.get()));
        return valueAnimatorOfFloat;
    }

    public final ValueAnimator s(WeakReference[] weakReferenceArr, Interpolator interpolator, long j) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(j);
        valueAnimatorOfFloat.setInterpolator(interpolator);
        valueAnimatorOfFloat.addUpdateListener(new a(weakReferenceArr));
        return valueAnimatorOfFloat;
    }

    public void setActionPolicy(int i) {
        this.k = i;
    }

    public void setSecondPageReCreate(boolean z2) {
        this.l = z2;
    }

    public final void t() {
        InputMethodManager inputMethodManager;
        WeakReference weakReference = this.d;
        SearchBar searchBar = weakReference != null ? (SearchBar) weakReference.get() : null;
        WeakReference weakReference2 = this.h;
        View view = weakReference2 != null ? (View) weakReference2.get() : null;
        if (searchBar == null || view == null || (inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(searchBar.getEditText().getWindowToken(), 0);
    }

    public final void u() {
        View view;
        for (WeakReference weakReference : this.f) {
            if (weakReference != null && (view = (View) weakReference.get()) != null) {
                view.setVisibility(0);
                view.setAlpha(0.0f);
            }
        }
    }

    public final void v() {
        bq5.p("SearchAnimManager", "initSecondPageStatus: getSecondPageReCreate() = " + getSecondPageReCreate());
        WeakReference weakReference = this.d;
        SearchBar searchBar = weakReference != null ? (SearchBar) weakReference.get() : null;
        WeakReference weakReference2 = this.h;
        View view = weakReference2 != null ? (View) weakReference2.get() : null;
        if (getSecondPageReCreate()) {
            if (searchBar != null) {
                searchBar.setVisibility(0);
            }
            if (view != null) {
                view.setAlpha(1.0f);
                return;
            }
            return;
        }
        if (searchBar != null) {
            searchBar.setVisibility(4);
        }
        if (view != null) {
            view.setAlpha(0.0f);
        }
    }

    public boolean w() {
        AnimatorSet animatorSet;
        WeakReference weakReference = this.m;
        return (weakReference == null || (animatorSet = (AnimatorSet) weakReference.get()) == null || !animatorSet.isRunning()) ? false : true;
    }

    public boolean x() {
        return this.i;
    }

    public void y(ViewGroup viewGroup, View... viewArr) {
        this.g = new WeakReference(viewGroup);
        if (viewArr == null || viewArr.length <= 0) {
            this.e = D(new View[]{viewGroup});
            return;
        }
        View[] viewArr2 = (View[]) Arrays.copyOf(viewArr, viewArr.length + 1, View[].class);
        viewArr2[viewArr2.length - 1] = viewGroup;
        this.e = D(viewArr2);
    }

    public void z(SearchBar searchBar, ViewGroup viewGroup, View... viewArr) {
        if (olb.E) {
            y(viewGroup, new View[0]);
            return;
        }
        this.c = new WeakReference(searchBar);
        this.g = new WeakReference(viewGroup);
        this.e = D(viewArr);
    }

    public static class a implements ValueAnimator.AnimatorUpdateListener {
        public WeakReference b;
        public WeakReference[] c;

        public a(View view) {
            this.b = new WeakReference(view);
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            View view;
            View view2;
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            WeakReference weakReference = this.b;
            if (weakReference != null && (view2 = (View) weakReference.get()) != null) {
                view2.setAlpha(fFloatValue);
                bq5.p("SearchAnimManager", "onAnimationUpdate: alpha = " + fFloatValue + " mHostViewWR.get() = " + view2.hashCode());
            }
            WeakReference[] weakReferenceArr = this.c;
            if (weakReferenceArr != null) {
                for (WeakReference weakReference2 : weakReferenceArr) {
                    if (weakReference2 != null && (view = (View) weakReference2.get()) != null) {
                        view.setAlpha(fFloatValue);
                        bq5.p("SearchAnimManager", "onAnimationUpdate: alpha = " + fFloatValue + " mHostViewWR.get() = " + view.hashCode());
                    }
                }
            }
        }

        public a(WeakReference[] weakReferenceArr) {
            this.c = weakReferenceArr;
        }
    }
}
