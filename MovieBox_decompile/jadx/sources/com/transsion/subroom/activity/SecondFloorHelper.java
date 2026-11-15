package com.transsion.subroom.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.animation.DecelerateInterpolator;
import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;
import com.transsion.wrapperad.view.secondfloor.SecondFloorArcCoverView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

public final class SecondFloorHelper {

    private dt.a f52570a;

    private final long f52571b;

    private final long f52572c;

    private final Lazy f52573d;

    private final Lazy f52574e;

    private final Lazy f52575f;

    private AnimatorSet f52576g;

    private AnimatorSet f52577h;

    private Function1 f52578i;

    private String f52579j;

    private final n0 f52580k;

    private t1 f52581l;

    private t1 f52582m;

    private t1 f52583n;

    private t1 f52584o;

    private boolean f52585p;

    private boolean f52586q;

    private boolean f52587r;

    private boolean f52588s;

    private boolean f52589t;

    public static final class a extends AnimatorListenerAdapter {

        final boolean f52591b;

        final boolean f52592c;

        final boolean f52593d;

        final boolean f52594e;

        final boolean f52595f;

        a(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
            this.f52591b = z10;
            this.f52592c = z11;
            this.f52593d = z12;
            this.f52594e = z13;
            this.f52595f = z14;
        }

        @Override
        public void onAnimationCancel(Animator animation) {
            Intrinsics.h(animation, "animation");
            super.onAnimationCancel(animation);
            SecondFloorHelper.this.f52589t = false;
            SecondFloorHelper.this.J(this.f52591b, this.f52592c, this.f52593d, this.f52594e, this.f52595f);
        }

        @Override
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
            super.onAnimationEnd(animation);
            SecondFloorHelper.this.f52589t = false;
            SecondFloorHelper.this.J(this.f52591b, this.f52592c, this.f52593d, this.f52594e, this.f52595f);
        }
    }

    public SecondFloorHelper(dt.a viewBinding) {
        Intrinsics.h(viewBinding, "viewBinding");
        this.f52570a = viewBinding;
        this.f52571b = 400L;
        this.f52572c = 500L;
        this.f52573d = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return Float.valueOf(SecondFloorHelper.x(this.f52608a));
            }
        });
        this.f52574e = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return Float.valueOf(SecondFloorHelper.y(this.f52610a));
            }
        });
        this.f52575f = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return Long.valueOf(SecondFloorHelper.L());
            }
        });
        this.f52579j = CustomSwipeRefreshLayout.IDLE;
        this.f52580k = o0.a(y0.c().plus(l2.b(null, 1, null)));
        this.f52570a.f59077k.setLoadCallback(new Function0() {
            @Override
            public final Object invoke() {
                return SecondFloorHelper.f(this.f52613a);
            }
        });
        this.f52570a.f59077k.setClickCallback(new Function0() {
            @Override
            public final Object invoke() {
                return SecondFloorHelper.g(this.f52614a);
            }
        });
    }

    public final void B() {
        V();
        T(this, G(), true, false, false, true, false, 44, null);
    }

    public final void C() {
        V();
        T(this, H(), true, false, true, false, false, 52, null);
    }

    public final void D(boolean z10) {
        if (this.f52570a.f59070d.getTranslationY() <= 0.0f) {
            SecondFloorArcCoverView arcCover = this.f52570a.f59068b;
            Intrinsics.g(arcCover, "arcCover");
            uf.c.g(arcCover);
        } else {
            if (this.f52589t) {
                return;
            }
            this.f52589t = true;
            V();
            T(this, 0.0f, true, true, false, false, z10, 24, null);
            this.f52570a.f59077k.idleTrigger();
        }
    }

    static void E(SecondFloorHelper secondFloorHelper, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        secondFloorHelper.D(z10);
    }

    private final void F() {
        V();
        T(this, G(), false, false, false, false, false, 62, null);
    }

    private final float G() {
        return ((Number) this.f52573d.getValue()).floatValue();
    }

    public final float H() {
        return ((Number) this.f52574e.getValue()).floatValue();
    }

    public final long I() {
        return ((Number) this.f52575f.getValue()).longValue();
    }

    public final void J(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        if (z10) {
            this.f52570a.f59068b.setAlpha(0.0f);
            SecondFloorArcCoverView arcCover = this.f52570a.f59068b;
            Intrinsics.g(arcCover, "arcCover");
            uf.c.g(arcCover);
        }
        if (z11) {
            P(CustomSwipeRefreshLayout.IDLE);
            if (!z14 && this.f52588s) {
                this.f52570a.f59077k.resetAd();
                this.f52588s = false;
                N(this, false, true, 1, null);
            }
        }
        if (z12) {
            P(CustomSwipeRefreshLayout.HOVER_HALF);
        }
        if (z13) {
            P(CustomSwipeRefreshLayout.HOVER_FULL);
        }
        this.f52577h = null;
    }

    public static final long L() {
        int iE = com.transsion.ad.scene.a.f41152a.e("TrendingTwoLevelloftScene");
        if (iE > 0) {
            return ((long) iE) * 1000;
        }
        return 5000L;
    }

    public static void N(SecondFloorHelper secondFloorHelper, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        secondFloorHelper.M(z10, z11);
    }

    private final void S(float f10, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        AnimatorSet animatorSet = this.f52577h;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f52570a.f59070d, "translationY", f10);
        objectAnimatorOfFloat.setDuration(this.f52571b);
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f52570a.f59068b, "alpha", z10 ? 0.0f : 1.0f);
        objectAnimatorOfFloat2.setDuration(this.f52571b);
        objectAnimatorOfFloat2.setInterpolator(new DecelerateInterpolator());
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f52570a.f59068b, "translationY", f10);
        objectAnimatorOfFloat3.setDuration(this.f52571b);
        objectAnimatorOfFloat3.setInterpolator(new DecelerateInterpolator());
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat3);
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(objectAnimatorOfFloat, animatorSet2);
        animatorSet3.addListener(new a(z10, z11, z12, z13, z14));
        this.f52577h = animatorSet3;
        animatorSet3.start();
    }

    static void T(SecondFloorHelper secondFloorHelper, float f10, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, int i10, Object obj) {
        secondFloorHelper.S(f10, (i10 & 2) != 0 ? false : z10, (i10 & 4) != 0 ? false : z11, (i10 & 8) != 0 ? false : z12, (i10 & 16) != 0 ? false : z13, (i10 & 32) == 0 ? z14 : false);
    }

    public final void U() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f52570a.f59070d, "translationY", H());
        objectAnimatorOfFloat.setDuration(this.f52572c);
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f52570a.f59068b, "translationY", H());
        objectAnimatorOfFloat2.setDuration(this.f52572c);
        objectAnimatorOfFloat2.setInterpolator(new DecelerateInterpolator());
        this.f52570a.f59068b.setAlpha(0.0f);
        SecondFloorArcCoverView arcCover = this.f52570a.f59068b;
        Intrinsics.g(arcCover, "arcCover");
        uf.c.k(arcCover);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f52570a.f59068b, "alpha", 1.0f);
        objectAnimatorOfFloat3.setDuration(this.f52572c);
        objectAnimatorOfFloat3.setInterpolator(new DecelerateInterpolator());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat3);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(objectAnimatorOfFloat, animatorSet);
        animatorSet2.addListener(new AnimatorListenerAdapter() {
            @Override
            public void onAnimationEnd(Animator animation) {
                Intrinsics.h(animation, "animation");
                super.onAnimationEnd(animation);
                this.f52596a.f52576g = null;
                SecondFloorHelper secondFloorHelper = this.f52596a;
                secondFloorHelper.f52581l = kotlinx.coroutines.k.d(secondFloorHelper.f52580k, null, null, new SecondFloorHelper$startGuideAnimation$1$1$onAnimationEnd$1(this.f52596a, null), 3, null);
            }
        });
        this.f52576g = animatorSet2;
        animatorSet2.start();
    }

    private final void V() {
        AnimatorSet animatorSet = this.f52576g;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.f52576g = null;
        AnimatorSet animatorSet2 = this.f52577h;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        this.f52577h = null;
        z();
    }

    public static final Unit f(SecondFloorHelper secondFloorHelper) {
        if (secondFloorHelper.f52585p) {
            secondFloorHelper.R();
        }
        return Unit.f64096a;
    }

    public static final Unit g(SecondFloorHelper secondFloorHelper) {
        secondFloorHelper.P(CustomSwipeRefreshLayout.IDLE);
        E(secondFloorHelper, false, 1, null);
        return Unit.f64096a;
    }

    public static final float x(SecondFloorHelper secondFloorHelper) {
        return (secondFloorHelper.f52570a.getRoot().getContext().getResources().getDisplayMetrics().widthPixels * 9) / 16.0f;
    }

    public static final float y(SecondFloorHelper secondFloorHelper) {
        return ((secondFloorHelper.f52570a.getRoot().getContext().getResources().getDisplayMetrics().widthPixels * 9) / 16) / 2.0f;
    }

    private final void z() {
        t1 t1Var = this.f52582m;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        t1 t1Var2 = this.f52583n;
        if (t1Var2 != null) {
            t1.a.b(t1Var2, null, 1, null);
        }
        t1 t1Var3 = this.f52584o;
        if (t1Var3 != null) {
            t1.a.b(t1Var3, null, 1, null);
        }
        t1 t1Var4 = this.f52581l;
        if (t1Var4 != null) {
            t1.a.b(t1Var4, null, 1, null);
        }
        this.f52582m = null;
        this.f52583n = null;
        this.f52584o = null;
        this.f52581l = null;
    }

    public final void A() {
        o0.d(this.f52580k, null, 1, null);
        V();
        this.f52570a.f59077k.destroy();
    }

    public final boolean K() {
        return this.f52570a.f59077k.hasAd();
    }

    public final void M(boolean z10, boolean z11) {
        this.f52585p = z10;
        this.f52570a.f59077k.loadAd(z11);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void O(String action, float f10, float f11) {
        Intrinsics.h(action, "action");
        Intrinsics.c(action, CustomSwipeRefreshLayout.MOVE);
        switch (action.hashCode()) {
            case -1435393951:
                if (action.equals(CustomSwipeRefreshLayout.SECOND_FLOOR)) {
                    this.f52570a.f59077k.adClick();
                    this.f52588s = true;
                    this.f52584o = kotlinx.coroutines.k.d(this.f52580k, null, null, new SecondFloorHelper$onAction$4(this, null), 3, null);
                    break;
                }
                break;
            case -1294619603:
                if (action.equals(CustomSwipeRefreshLayout.IDLE_TRIGGER)) {
                    this.f52570a.f59068b.idleTrigger();
                    break;
                }
                break;
            case -659833836:
                if (action.equals(CustomSwipeRefreshLayout.REFRESH_TRIGGER)) {
                    this.f52570a.f59068b.refreshTrigger();
                    break;
                }
                break;
            case 2715:
                if (action.equals(CustomSwipeRefreshLayout.UP)) {
                    this.f52587r = false;
                    break;
                }
                break;
            case 2104482:
                if (action.equals(CustomSwipeRefreshLayout.DOWN)) {
                    V();
                    break;
                }
                break;
            case 2242516:
                if (action.equals(CustomSwipeRefreshLayout.IDLE)) {
                    this.f52586q = true;
                    E(this, false, 1, null);
                    break;
                }
                break;
            case 2372561:
                if (action.equals(CustomSwipeRefreshLayout.MOVE)) {
                    if (!this.f52587r) {
                        this.f52570a.f59077k.showAd();
                        this.f52587r = true;
                    }
                    this.f52570a.f59070d.setTranslationY(f10);
                    SecondFloorArcCoverView secondFloorArcCoverView = this.f52570a.f59068b;
                    secondFloorArcCoverView.setAbMode(CustomSwipeRefreshLayout.INSTANCE.b());
                    secondFloorArcCoverView.setTranslationY(f10);
                    secondFloorArcCoverView.setAlpha(f11);
                    Intrinsics.e(secondFloorArcCoverView);
                    uf.c.k(secondFloorArcCoverView);
                    break;
                }
                break;
            case 351156154:
                if (action.equals(CustomSwipeRefreshLayout.SECOND_FLOOR_TRIGGER)) {
                    this.f52570a.f59068b.secondFloorTrigger();
                    break;
                }
                break;
            case 784487378:
                if (action.equals(CustomSwipeRefreshLayout.HOVER_FULL)) {
                    this.f52582m = kotlinx.coroutines.k.d(this.f52580k, null, null, new SecondFloorHelper$onAction$3(this, null), 3, null);
                    break;
                }
                break;
            case 784527734:
                if (action.equals(CustomSwipeRefreshLayout.HOVER_HALF)) {
                    this.f52582m = kotlinx.coroutines.k.d(this.f52580k, null, null, new SecondFloorHelper$onAction$2(this, null), 3, null);
                    break;
                }
                break;
            case 1803427515:
                if (action.equals(CustomSwipeRefreshLayout.REFRESH)) {
                    this.f52588s = true;
                    F();
                    this.f52570a.f59068b.refreshing();
                    this.f52570a.f59077k.refreshing();
                    break;
                }
                break;
        }
    }

    public final void P(String state) {
        Intrinsics.h(state, "state");
        this.f52579j = state;
        Function1 function1 = this.f52578i;
        if (function1 != null) {
            function1.invoke(state);
        }
    }

    public final void Q(Function1 function1) {
        this.f52578i = function1;
    }

    public final void R() {
        t1 t1Var = this.f52581l;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f52581l = kotlinx.coroutines.k.d(this.f52580k, null, null, new SecondFloorHelper$showGuide$1(this, null), 3, null);
    }
}
