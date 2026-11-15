package com.google.android.exoplayer2.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;

final class i0 {
    private boolean A;
    private boolean B;

    private final StyledPlayerControlView f26354a;

    private final View f26355b;

    private final ViewGroup f26356c;

    private final ViewGroup f26357d;

    private final ViewGroup f26358e;

    private final ViewGroup f26359f;

    private final ViewGroup f26360g;

    private final ViewGroup f26361h;

    private final ViewGroup f26362i;

    private final View f26363j;

    private final View f26364k;

    private final AnimatorSet f26365l;

    private final AnimatorSet f26366m;

    private final AnimatorSet f26367n;

    private final AnimatorSet f26368o;

    private final AnimatorSet f26369p;

    private final ValueAnimator f26370q;

    private final ValueAnimator f26371r;

    private final Runnable f26372s = new Runnable() {
        @Override
        public final void run() {
            this.f26451a.d0();
        }
    };

    private final Runnable f26373t = new Runnable() {
        @Override
        public final void run() {
            this.f26336a.D();
        }
    };

    private final Runnable f26374u = new Runnable() {
        @Override
        public final void run() {
            this.f26344a.H();
        }
    };

    private final Runnable f26375v = new Runnable() {
        @Override
        public final void run() {
            this.f26345a.G();
        }
    };

    private final Runnable f26376w = new Runnable() {
        @Override
        public final void run() {
            this.f26347a.E();
        }
    };

    private final View.OnLayoutChangeListener f26377x = new View.OnLayoutChangeListener() {
        @Override
        public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.f26349a.S(view, i10, i11, i12, i13, i14, i15, i16, i17);
        }
    };
    private boolean C = true;

    private int f26379z = 0;

    private final List f26378y = new ArrayList();

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (i0.this.f26355b != null) {
                i0.this.f26355b.setVisibility(4);
            }
            if (i0.this.f26356c != null) {
                i0.this.f26356c.setVisibility(4);
            }
            if (i0.this.f26358e != null) {
                i0.this.f26358e.setVisibility(4);
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (!(i0.this.f26363j instanceof DefaultTimeBar) || i0.this.A) {
                return;
            }
            ((DefaultTimeBar) i0.this.f26363j).hideScrubber(250L);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (i0.this.f26355b != null) {
                i0.this.f26355b.setVisibility(0);
            }
            if (i0.this.f26356c != null) {
                i0.this.f26356c.setVisibility(0);
            }
            if (i0.this.f26358e != null) {
                i0.this.f26358e.setVisibility(i0.this.A ? 0 : 4);
            }
            if (!(i0.this.f26363j instanceof DefaultTimeBar) || i0.this.A) {
                return;
            }
            ((DefaultTimeBar) i0.this.f26363j).showScrubber(250L);
        }
    }

    class c extends AnimatorListenerAdapter {

        final StyledPlayerControlView f26382a;

        c(StyledPlayerControlView styledPlayerControlView) {
            this.f26382a = styledPlayerControlView;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            i0.this.a0(1);
            if (i0.this.B) {
                this.f26382a.post(i0.this.f26372s);
                i0.this.B = false;
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            i0.this.a0(3);
        }
    }

    class d extends AnimatorListenerAdapter {

        final StyledPlayerControlView f26384a;

        d(StyledPlayerControlView styledPlayerControlView) {
            this.f26384a = styledPlayerControlView;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            i0.this.a0(2);
            if (i0.this.B) {
                this.f26384a.post(i0.this.f26372s);
                i0.this.B = false;
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            i0.this.a0(3);
        }
    }

    class e extends AnimatorListenerAdapter {

        final StyledPlayerControlView f26386a;

        e(StyledPlayerControlView styledPlayerControlView) {
            this.f26386a = styledPlayerControlView;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            i0.this.a0(2);
            if (i0.this.B) {
                this.f26386a.post(i0.this.f26372s);
                i0.this.B = false;
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            i0.this.a0(3);
        }
    }

    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            i0.this.a0(0);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            i0.this.a0(4);
        }
    }

    class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            i0.this.a0(0);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            i0.this.a0(4);
        }
    }

    class h extends AnimatorListenerAdapter {
        h() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (i0.this.f26359f != null) {
                i0.this.f26359f.setVisibility(4);
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (i0.this.f26361h != null) {
                i0.this.f26361h.setVisibility(0);
                i0.this.f26361h.setTranslationX(i0.this.f26361h.getWidth());
                i0.this.f26361h.scrollTo(i0.this.f26361h.getWidth(), 0);
            }
        }
    }

    class i extends AnimatorListenerAdapter {
        i() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (i0.this.f26361h != null) {
                i0.this.f26361h.setVisibility(4);
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (i0.this.f26359f != null) {
                i0.this.f26359f.setVisibility(0);
            }
        }
    }

    public i0(StyledPlayerControlView styledPlayerControlView) {
        this.f26354a = styledPlayerControlView;
        this.f26355b = styledPlayerControlView.findViewById(R$id.exo_controls_background);
        this.f26356c = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_center_controls);
        this.f26358e = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_minimal_controls);
        ViewGroup viewGroup = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_bottom_bar);
        this.f26357d = viewGroup;
        this.f26362i = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_time);
        View viewFindViewById = styledPlayerControlView.findViewById(R$id.exo_progress);
        this.f26363j = viewFindViewById;
        this.f26359f = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_basic_controls);
        this.f26360g = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_extra_controls);
        this.f26361h = (ViewGroup) styledPlayerControlView.findViewById(R$id.exo_extra_controls_scroll_view);
        View viewFindViewById2 = styledPlayerControlView.findViewById(R$id.exo_overflow_show);
        this.f26364k = viewFindViewById2;
        View viewFindViewById3 = styledPlayerControlView.findViewById(R$id.exo_overflow_hide);
        if (viewFindViewById2 != null && viewFindViewById3 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f26351a.U(view);
                }
            });
            viewFindViewById3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f26351a.U(view);
                }
            });
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f26352a.K(valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new a());
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f26452a.L(valueAnimator);
            }
        });
        valueAnimatorOfFloat2.addListener(new b());
        Resources resources = styledPlayerControlView.getResources();
        float dimension = resources.getDimension(R$dimen.exo_styled_bottom_bar_height) - resources.getDimension(R$dimen.exo_styled_progress_bar_height);
        float dimension2 = resources.getDimension(R$dimen.exo_styled_bottom_bar_height);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f26365l = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new c(styledPlayerControlView));
        animatorSet.play(valueAnimatorOfFloat).with(O(0.0f, dimension, viewFindViewById)).with(O(0.0f, dimension, viewGroup));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f26366m = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new d(styledPlayerControlView));
        animatorSet2.play(O(dimension, dimension2, viewFindViewById)).with(O(dimension, dimension2, viewGroup));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f26367n = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new e(styledPlayerControlView));
        animatorSet3.play(valueAnimatorOfFloat).with(O(0.0f, dimension2, viewFindViewById)).with(O(0.0f, dimension2, viewGroup));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f26368o = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new f());
        animatorSet4.play(valueAnimatorOfFloat2).with(O(dimension, 0.0f, viewFindViewById)).with(O(dimension, 0.0f, viewGroup));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.f26369p = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new g());
        animatorSet5.play(valueAnimatorOfFloat2).with(O(dimension2, 0.0f, viewFindViewById)).with(O(dimension2, 0.0f, viewGroup));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f26370q = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.setDuration(250L);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f26455a.M(valueAnimator);
            }
        });
        valueAnimatorOfFloat3.addListener(new h());
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f26371r = valueAnimatorOfFloat4;
        valueAnimatorOfFloat4.setDuration(250L);
        valueAnimatorOfFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f26329a.N(valueAnimator);
            }
        });
        valueAnimatorOfFloat4.addListener(new i());
    }

    private static int B(View view) {
        if (view == null) {
            return 0;
        }
        int width = view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return width;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return width + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
    }

    public void D() {
        this.f26367n.start();
    }

    public void E() {
        a0(2);
    }

    public void G() {
        this.f26365l.start();
        V(this.f26374u, 2000L);
    }

    public void H() {
        this.f26366m.start();
    }

    public void K(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f26355b;
        if (view != null) {
            view.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup = this.f26356c;
        if (viewGroup != null) {
            viewGroup.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup2 = this.f26358e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(fFloatValue);
        }
    }

    public void L(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f26355b;
        if (view != null) {
            view.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup = this.f26356c;
        if (viewGroup != null) {
            viewGroup.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup2 = this.f26358e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(fFloatValue);
        }
    }

    public void M(ValueAnimator valueAnimator) {
        y(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public void N(ValueAnimator valueAnimator) {
        y(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private static ObjectAnimator O(float f10, float f11, View view) {
        return ObjectAnimator.ofFloat(view, "translationY", f10, f11);
    }

    public void S(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        boolean zF0 = f0();
        if (this.A != zF0) {
            this.A = zF0;
            view.post(new Runnable() {
                @Override
                public final void run() {
                    this.f26453a.e0();
                }
            });
        }
        boolean z10 = i12 - i10 != i16 - i14;
        if (this.A || !z10) {
            return;
        }
        view.post(new Runnable() {
            @Override
            public final void run() {
                this.f26454a.T();
            }
        });
    }

    public void T() {
        int i10;
        if (this.f26359f == null || this.f26360g == null) {
            return;
        }
        int width = (this.f26354a.getWidth() - this.f26354a.getPaddingLeft()) - this.f26354a.getPaddingRight();
        while (true) {
            if (this.f26360g.getChildCount() <= 1) {
                break;
            }
            int childCount = this.f26360g.getChildCount() - 2;
            View childAt = this.f26360g.getChildAt(childCount);
            this.f26360g.removeViewAt(childCount);
            this.f26359f.addView(childAt, 0);
        }
        View view = this.f26364k;
        if (view != null) {
            view.setVisibility(8);
        }
        int iB = B(this.f26362i);
        int childCount2 = this.f26359f.getChildCount() - 1;
        for (int i11 = 0; i11 < childCount2; i11++) {
            iB += B(this.f26359f.getChildAt(i11));
        }
        if (iB <= width) {
            ViewGroup viewGroup = this.f26361h;
            if (viewGroup == null || viewGroup.getVisibility() != 0 || this.f26371r.isStarted()) {
                return;
            }
            this.f26370q.cancel();
            this.f26371r.start();
            return;
        }
        View view2 = this.f26364k;
        if (view2 != null) {
            view2.setVisibility(0);
            iB += B(this.f26364k);
        }
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < childCount2; i12++) {
            View childAt2 = this.f26359f.getChildAt(i12);
            iB -= B(childAt2);
            arrayList.add(childAt2);
            if (iB <= width) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.f26359f.removeViews(0, arrayList.size());
        for (i10 = 0; i10 < arrayList.size(); i10++) {
            this.f26360g.addView((View) arrayList.get(i10), this.f26360g.getChildCount() - 1);
        }
    }

    public void U(View view) {
        X();
        if (view.getId() == R$id.exo_overflow_show) {
            this.f26370q.start();
        } else if (view.getId() == R$id.exo_overflow_hide) {
            this.f26371r.start();
        }
    }

    private void V(Runnable runnable, long j10) {
        if (j10 >= 0) {
            this.f26354a.postDelayed(runnable, j10);
        }
    }

    public void a0(int i10) {
        int i11 = this.f26379z;
        this.f26379z = i10;
        if (i10 == 2) {
            this.f26354a.setVisibility(8);
        } else if (i11 == 2) {
            this.f26354a.setVisibility(0);
        }
        if (i11 != i10) {
            this.f26354a.c0();
        }
    }

    private boolean b0(View view) {
        int id2 = view.getId();
        return id2 == R$id.exo_bottom_bar || id2 == R$id.exo_prev || id2 == R$id.exo_next || id2 == R$id.exo_rew || id2 == R$id.exo_rew_with_amount || id2 == R$id.exo_ffwd || id2 == R$id.exo_ffwd_with_amount;
    }

    public void d0() {
        if (!this.C) {
            a0(0);
            X();
            return;
        }
        int i10 = this.f26379z;
        if (i10 == 1) {
            this.f26368o.start();
        } else if (i10 == 2) {
            this.f26369p.start();
        } else if (i10 == 3) {
            this.B = true;
        } else if (i10 == 4) {
            return;
        }
        X();
    }

    public void e0() {
        ViewGroup viewGroup = this.f26358e;
        if (viewGroup != null) {
            viewGroup.setVisibility(this.A ? 0 : 4);
        }
        if (this.f26363j != null) {
            int dimensionPixelSize = this.f26354a.getResources().getDimensionPixelSize(R$dimen.exo_styled_progress_margin_bottom);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f26363j.getLayoutParams();
            if (marginLayoutParams != null) {
                if (this.A) {
                    dimensionPixelSize = 0;
                }
                marginLayoutParams.bottomMargin = dimensionPixelSize;
                this.f26363j.setLayoutParams(marginLayoutParams);
            }
            View view = this.f26363j;
            if (view instanceof DefaultTimeBar) {
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view;
                if (this.A) {
                    defaultTimeBar.hideScrubber(true);
                } else {
                    int i10 = this.f26379z;
                    if (i10 == 1) {
                        defaultTimeBar.hideScrubber(false);
                    } else if (i10 != 3) {
                        defaultTimeBar.showScrubber();
                    }
                }
            }
        }
        for (View view2 : this.f26378y) {
            view2.setVisibility((this.A && b0(view2)) ? 4 : 0);
        }
    }

    private boolean f0() {
        int width = (this.f26354a.getWidth() - this.f26354a.getPaddingLeft()) - this.f26354a.getPaddingRight();
        int height = (this.f26354a.getHeight() - this.f26354a.getPaddingBottom()) - this.f26354a.getPaddingTop();
        int iB = B(this.f26356c);
        ViewGroup viewGroup = this.f26356c;
        int paddingLeft = iB - (viewGroup != null ? viewGroup.getPaddingLeft() + this.f26356c.getPaddingRight() : 0);
        int iZ = z(this.f26356c);
        ViewGroup viewGroup2 = this.f26356c;
        return width <= Math.max(paddingLeft, B(this.f26362i) + B(this.f26364k)) || height <= (iZ - (viewGroup2 != null ? viewGroup2.getPaddingTop() + this.f26356c.getPaddingBottom() : 0)) + (z(this.f26357d) * 2);
    }

    private void y(float f10) {
        ViewGroup viewGroup = this.f26361h;
        if (viewGroup != null) {
            this.f26361h.setTranslationX((int) (viewGroup.getWidth() * (1.0f - f10)));
        }
        ViewGroup viewGroup2 = this.f26362i;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f10);
        }
        ViewGroup viewGroup3 = this.f26359f;
        if (viewGroup3 != null) {
            viewGroup3.setAlpha(1.0f - f10);
        }
    }

    private static int z(View view) {
        if (view == null) {
            return 0;
        }
        int height = view.getHeight();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return height;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return height + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public boolean A(View view) {
        return view != null && this.f26378y.contains(view);
    }

    public void C() {
        int i10 = this.f26379z;
        if (i10 == 3 || i10 == 2) {
            return;
        }
        W();
        if (!this.C) {
            E();
        } else if (this.f26379z == 1) {
            H();
        } else {
            D();
        }
    }

    public void F() {
        int i10 = this.f26379z;
        if (i10 == 3 || i10 == 2) {
            return;
        }
        W();
        E();
    }

    public boolean I() {
        return this.C;
    }

    public boolean J() {
        return this.f26379z == 0 && this.f26354a.isVisible();
    }

    public void P() {
        this.f26354a.addOnLayoutChangeListener(this.f26377x);
    }

    public void Q() {
        this.f26354a.removeOnLayoutChangeListener(this.f26377x);
    }

    public void R(boolean z10, int i10, int i11, int i12, int i13) {
        View view = this.f26355b;
        if (view != null) {
            view.layout(0, 0, i12 - i10, i13 - i11);
        }
    }

    public void W() {
        this.f26354a.removeCallbacks(this.f26376w);
        this.f26354a.removeCallbacks(this.f26373t);
        this.f26354a.removeCallbacks(this.f26375v);
        this.f26354a.removeCallbacks(this.f26374u);
    }

    public void X() {
        if (this.f26379z == 3) {
            return;
        }
        W();
        int showTimeoutMs = this.f26354a.getShowTimeoutMs();
        if (showTimeoutMs > 0) {
            if (!this.C) {
                V(this.f26376w, showTimeoutMs);
            } else if (this.f26379z == 1) {
                V(this.f26374u, 2000L);
            } else {
                V(this.f26375v, showTimeoutMs);
            }
        }
    }

    public void Y(boolean z10) {
        this.C = z10;
    }

    public void Z(View view, boolean z10) {
        if (view == null) {
            return;
        }
        if (!z10) {
            view.setVisibility(8);
            this.f26378y.remove(view);
            return;
        }
        if (this.A && b0(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        this.f26378y.add(view);
    }

    public void c0() {
        if (!this.f26354a.isVisible()) {
            this.f26354a.setVisibility(0);
            this.f26354a.k0();
            this.f26354a.g0();
        }
        d0();
    }
}
