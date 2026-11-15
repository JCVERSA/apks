package androidx.media3.ui;

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

final class e0 {
    private boolean A;
    private boolean B;

    private final PlayerControlView f13340a;

    private final View f13341b;

    private final ViewGroup f13342c;

    private final ViewGroup f13343d;

    private final ViewGroup f13344e;

    private final ViewGroup f13345f;

    private final ViewGroup f13346g;

    private final ViewGroup f13347h;

    private final ViewGroup f13348i;

    private final View f13349j;

    private final View f13350k;

    private final AnimatorSet f13351l;

    private final AnimatorSet f13352m;

    private final AnimatorSet f13353n;

    private final AnimatorSet f13354o;

    private final AnimatorSet f13355p;

    private final ValueAnimator f13356q;

    private final ValueAnimator f13357r;

    private final Runnable f13358s = new Runnable() {
        @Override
        public final void run() {
            this.f13400a.d0();
        }
    };

    private final Runnable f13359t = new Runnable() {
        @Override
        public final void run() {
            this.f13443a.D();
        }
    };

    private final Runnable f13360u = new Runnable() {
        @Override
        public final void run() {
            this.f13444a.H();
        }
    };

    private final Runnable f13361v = new Runnable() {
        @Override
        public final void run() {
            this.f13445a.G();
        }
    };

    private final Runnable f13362w = new Runnable() {
        @Override
        public final void run() {
            this.f13317a.E();
        }
    };

    private final View.OnLayoutChangeListener f13363x = new View.OnLayoutChangeListener() {
        @Override
        public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.f13326a.S(view, i10, i11, i12, i13, i14, i15, i16, i17);
        }
    };
    private boolean C = true;

    private int f13365z = 0;

    private final List f13364y = new ArrayList();

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (e0.this.f13341b != null) {
                e0.this.f13341b.setVisibility(4);
            }
            if (e0.this.f13342c != null) {
                e0.this.f13342c.setVisibility(4);
            }
            if (e0.this.f13344e != null) {
                e0.this.f13344e.setVisibility(4);
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (!(e0.this.f13349j instanceof DefaultTimeBar) || e0.this.A) {
                return;
            }
            ((DefaultTimeBar) e0.this.f13349j).hideScrubber(250L);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (e0.this.f13341b != null) {
                e0.this.f13341b.setVisibility(0);
            }
            if (e0.this.f13342c != null) {
                e0.this.f13342c.setVisibility(0);
            }
            if (e0.this.f13344e != null) {
                e0.this.f13344e.setVisibility(e0.this.A ? 0 : 4);
            }
            if (!(e0.this.f13349j instanceof DefaultTimeBar) || e0.this.A) {
                return;
            }
            ((DefaultTimeBar) e0.this.f13349j).showScrubber(250L);
        }
    }

    class c extends AnimatorListenerAdapter {

        final PlayerControlView f13368a;

        c(PlayerControlView playerControlView) {
            this.f13368a = playerControlView;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            e0.this.a0(1);
            if (e0.this.B) {
                this.f13368a.post(e0.this.f13358s);
                e0.this.B = false;
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            e0.this.a0(3);
        }
    }

    class d extends AnimatorListenerAdapter {

        final PlayerControlView f13370a;

        d(PlayerControlView playerControlView) {
            this.f13370a = playerControlView;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            e0.this.a0(2);
            if (e0.this.B) {
                this.f13370a.post(e0.this.f13358s);
                e0.this.B = false;
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            e0.this.a0(3);
        }
    }

    class e extends AnimatorListenerAdapter {

        final PlayerControlView f13372a;

        e(PlayerControlView playerControlView) {
            this.f13372a = playerControlView;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            e0.this.a0(2);
            if (e0.this.B) {
                this.f13372a.post(e0.this.f13358s);
                e0.this.B = false;
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            e0.this.a0(3);
        }
    }

    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            e0.this.a0(0);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            e0.this.a0(4);
        }
    }

    class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            e0.this.a0(0);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            e0.this.a0(4);
        }
    }

    class h extends AnimatorListenerAdapter {
        h() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (e0.this.f13345f != null) {
                e0.this.f13345f.setVisibility(4);
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (e0.this.f13347h != null) {
                e0.this.f13347h.setVisibility(0);
                e0.this.f13347h.setTranslationX(e0.this.f13347h.getWidth());
                e0.this.f13347h.scrollTo(e0.this.f13347h.getWidth(), 0);
            }
        }
    }

    class i extends AnimatorListenerAdapter {
        i() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (e0.this.f13347h != null) {
                e0.this.f13347h.setVisibility(4);
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            if (e0.this.f13345f != null) {
                e0.this.f13345f.setVisibility(0);
            }
        }
    }

    public e0(PlayerControlView playerControlView) {
        this.f13340a = playerControlView;
        this.f13341b = playerControlView.findViewById(R$id.exo_controls_background);
        this.f13342c = (ViewGroup) playerControlView.findViewById(R$id.exo_center_controls);
        this.f13344e = (ViewGroup) playerControlView.findViewById(R$id.exo_minimal_controls);
        ViewGroup viewGroup = (ViewGroup) playerControlView.findViewById(R$id.exo_bottom_bar);
        this.f13343d = viewGroup;
        this.f13348i = (ViewGroup) playerControlView.findViewById(R$id.exo_time);
        View viewFindViewById = playerControlView.findViewById(R$id.exo_progress);
        this.f13349j = viewFindViewById;
        this.f13345f = (ViewGroup) playerControlView.findViewById(R$id.exo_basic_controls);
        this.f13346g = (ViewGroup) playerControlView.findViewById(R$id.exo_extra_controls);
        this.f13347h = (ViewGroup) playerControlView.findViewById(R$id.exo_extra_controls_scroll_view);
        View viewFindViewById2 = playerControlView.findViewById(R$id.exo_overflow_show);
        this.f13350k = viewFindViewById2;
        View viewFindViewById3 = playerControlView.findViewById(R$id.exo_overflow_hide);
        if (viewFindViewById2 != null && viewFindViewById3 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f13336a.U(view);
                }
            });
            viewFindViewById3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f13336a.U(view);
                }
            });
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f13338a.K(valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new a());
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f13412a.L(valueAnimator);
            }
        });
        valueAnimatorOfFloat2.addListener(new b());
        Resources resources = playerControlView.getResources();
        float dimension = resources.getDimension(R$dimen.exo_styled_bottom_bar_height) - resources.getDimension(R$dimen.exo_styled_progress_bar_height);
        float dimension2 = resources.getDimension(R$dimen.exo_styled_bottom_bar_height);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f13351l = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new c(playerControlView));
        animatorSet.play(valueAnimatorOfFloat).with(O(0.0f, dimension, viewFindViewById)).with(O(0.0f, dimension, viewGroup));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f13352m = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new d(playerControlView));
        animatorSet2.play(O(dimension, dimension2, viewFindViewById)).with(O(dimension, dimension2, viewGroup));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f13353n = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new e(playerControlView));
        animatorSet3.play(valueAnimatorOfFloat).with(O(0.0f, dimension2, viewFindViewById)).with(O(0.0f, dimension2, viewGroup));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f13354o = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new f());
        animatorSet4.play(valueAnimatorOfFloat2).with(O(dimension, 0.0f, viewFindViewById)).with(O(dimension, 0.0f, viewGroup));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.f13355p = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new g());
        animatorSet5.play(valueAnimatorOfFloat2).with(O(dimension2, 0.0f, viewFindViewById)).with(O(dimension2, 0.0f, viewGroup));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f13356q = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.setDuration(250L);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f13441a.M(valueAnimator);
            }
        });
        valueAnimatorOfFloat3.addListener(new h());
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f13357r = valueAnimatorOfFloat4;
        valueAnimatorOfFloat4.setDuration(250L);
        valueAnimatorOfFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f13442a.N(valueAnimator);
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
        this.f13353n.start();
    }

    public void E() {
        a0(2);
    }

    public void G() {
        this.f13351l.start();
        V(this.f13360u, 2000L);
    }

    public void H() {
        this.f13352m.start();
    }

    public void K(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f13341b;
        if (view != null) {
            view.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup = this.f13342c;
        if (viewGroup != null) {
            viewGroup.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup2 = this.f13344e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(fFloatValue);
        }
    }

    public void L(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f13341b;
        if (view != null) {
            view.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup = this.f13342c;
        if (viewGroup != null) {
            viewGroup.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup2 = this.f13344e;
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
                    this.f13413a.e0();
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
                this.f13414a.T();
            }
        });
    }

    public void T() {
        int i10;
        if (this.f13345f == null || this.f13346g == null) {
            return;
        }
        int width = (this.f13340a.getWidth() - this.f13340a.getPaddingLeft()) - this.f13340a.getPaddingRight();
        while (true) {
            if (this.f13346g.getChildCount() <= 1) {
                break;
            }
            int childCount = this.f13346g.getChildCount() - 2;
            View childAt = this.f13346g.getChildAt(childCount);
            this.f13346g.removeViewAt(childCount);
            this.f13345f.addView(childAt, 0);
        }
        View view = this.f13350k;
        if (view != null) {
            view.setVisibility(8);
        }
        int iB = B(this.f13348i);
        int childCount2 = this.f13345f.getChildCount() - 1;
        for (int i11 = 0; i11 < childCount2; i11++) {
            iB += B(this.f13345f.getChildAt(i11));
        }
        if (iB <= width) {
            ViewGroup viewGroup = this.f13347h;
            if (viewGroup == null || viewGroup.getVisibility() != 0 || this.f13357r.isStarted()) {
                return;
            }
            this.f13356q.cancel();
            this.f13357r.start();
            return;
        }
        View view2 = this.f13350k;
        if (view2 != null) {
            view2.setVisibility(0);
            iB += B(this.f13350k);
        }
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < childCount2; i12++) {
            View childAt2 = this.f13345f.getChildAt(i12);
            iB -= B(childAt2);
            arrayList.add(childAt2);
            if (iB <= width) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.f13345f.removeViews(0, arrayList.size());
        for (i10 = 0; i10 < arrayList.size(); i10++) {
            this.f13346g.addView((View) arrayList.get(i10), this.f13346g.getChildCount() - 1);
        }
    }

    public void U(View view) {
        X();
        if (view.getId() == R$id.exo_overflow_show) {
            this.f13356q.start();
        } else if (view.getId() == R$id.exo_overflow_hide) {
            this.f13357r.start();
        }
    }

    private void V(Runnable runnable, long j10) {
        if (j10 >= 0) {
            this.f13340a.postDelayed(runnable, j10);
        }
    }

    public void a0(int i10) {
        int i11 = this.f13365z;
        this.f13365z = i10;
        if (i10 == 2) {
            this.f13340a.setVisibility(8);
        } else if (i11 == 2) {
            this.f13340a.setVisibility(0);
        }
        if (i11 != i10) {
            this.f13340a.Z();
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
        int i10 = this.f13365z;
        if (i10 == 1) {
            this.f13354o.start();
        } else if (i10 == 2) {
            this.f13355p.start();
        } else if (i10 == 3) {
            this.B = true;
        } else if (i10 == 4) {
            return;
        }
        X();
    }

    public void e0() {
        ViewGroup viewGroup = this.f13344e;
        if (viewGroup != null) {
            viewGroup.setVisibility(this.A ? 0 : 4);
        }
        if (this.f13349j != null) {
            int dimensionPixelSize = this.f13340a.getResources().getDimensionPixelSize(R$dimen.exo_styled_progress_margin_bottom);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f13349j.getLayoutParams();
            if (marginLayoutParams != null) {
                if (this.A) {
                    dimensionPixelSize = 0;
                }
                marginLayoutParams.bottomMargin = dimensionPixelSize;
                this.f13349j.setLayoutParams(marginLayoutParams);
            }
            View view = this.f13349j;
            if (view instanceof DefaultTimeBar) {
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view;
                if (this.A) {
                    defaultTimeBar.hideScrubber(true);
                } else {
                    int i10 = this.f13365z;
                    if (i10 == 1) {
                        defaultTimeBar.hideScrubber(false);
                    } else if (i10 != 3) {
                        defaultTimeBar.showScrubber();
                    }
                }
            }
        }
        for (View view2 : this.f13364y) {
            view2.setVisibility((this.A && b0(view2)) ? 4 : 0);
        }
    }

    private boolean f0() {
        int width = (this.f13340a.getWidth() - this.f13340a.getPaddingLeft()) - this.f13340a.getPaddingRight();
        int height = (this.f13340a.getHeight() - this.f13340a.getPaddingBottom()) - this.f13340a.getPaddingTop();
        int iB = B(this.f13342c);
        ViewGroup viewGroup = this.f13342c;
        int paddingLeft = iB - (viewGroup != null ? viewGroup.getPaddingLeft() + this.f13342c.getPaddingRight() : 0);
        int iZ = z(this.f13342c);
        ViewGroup viewGroup2 = this.f13342c;
        return width <= Math.max(paddingLeft, B(this.f13348i) + B(this.f13350k)) || height <= (iZ - (viewGroup2 != null ? viewGroup2.getPaddingTop() + this.f13342c.getPaddingBottom() : 0)) + (z(this.f13343d) * 2);
    }

    private void y(float f10) {
        ViewGroup viewGroup = this.f13347h;
        if (viewGroup != null) {
            this.f13347h.setTranslationX((int) (viewGroup.getWidth() * (1.0f - f10)));
        }
        ViewGroup viewGroup2 = this.f13348i;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f10);
        }
        ViewGroup viewGroup3 = this.f13345f;
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
        return view != null && this.f13364y.contains(view);
    }

    public void C() {
        int i10 = this.f13365z;
        if (i10 == 3 || i10 == 2) {
            return;
        }
        W();
        if (!this.C) {
            E();
        } else if (this.f13365z == 1) {
            H();
        } else {
            D();
        }
    }

    public void F() {
        int i10 = this.f13365z;
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
        return this.f13365z == 0 && this.f13340a.isVisible();
    }

    public void P() {
        this.f13340a.addOnLayoutChangeListener(this.f13363x);
    }

    public void Q() {
        this.f13340a.removeOnLayoutChangeListener(this.f13363x);
    }

    public void R(boolean z10, int i10, int i11, int i12, int i13) {
        View view = this.f13341b;
        if (view != null) {
            view.layout(0, 0, i12 - i10, i13 - i11);
        }
    }

    public void W() {
        this.f13340a.removeCallbacks(this.f13362w);
        this.f13340a.removeCallbacks(this.f13359t);
        this.f13340a.removeCallbacks(this.f13361v);
        this.f13340a.removeCallbacks(this.f13360u);
    }

    public void X() {
        if (this.f13365z == 3) {
            return;
        }
        W();
        int showTimeoutMs = this.f13340a.getShowTimeoutMs();
        if (showTimeoutMs > 0) {
            if (!this.C) {
                V(this.f13362w, showTimeoutMs);
            } else if (this.f13365z == 1) {
                V(this.f13360u, 2000L);
            } else {
                V(this.f13361v, showTimeoutMs);
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
            this.f13364y.remove(view);
            return;
        }
        if (this.A && b0(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        this.f13364y.add(view);
    }

    public void c0() {
        if (!this.f13340a.isVisible()) {
            this.f13340a.setVisibility(0);
            this.f13340a.f0();
            this.f13340a.d0();
        }
        d0();
    }
}
