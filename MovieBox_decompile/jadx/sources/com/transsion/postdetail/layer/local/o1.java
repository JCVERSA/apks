package com.transsion.postdetail.layer.local;

import android.animation.Animator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.ViewStub;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.tencent.mmkv.MMKV;
import com.transsion.postdetail.ui.view.VideoDoubleClickBackgroundView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class o1 implements Animator.AnimatorListener {

    public static final a f47070b = new a(null);

    private static final Lazy f47071c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return o1.d();
        }
    });

    private final mn.c f47072a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final Unit g(View view) {
            o1.f47070b.l(view);
            return Unit.f64096a;
        }

        public static final void h(View view, final Function0 function0, View view2) {
            o1.f47070b.l(view);
            view.removeCallbacks(new Runnable() {
                @Override
                public final void run() {
                    o1.a.i(function0);
                }
            });
        }

        public static final void i(Function0 function0) {
            function0.invoke();
        }

        public static final void j(Function0 function0) {
            function0.invoke();
        }

        private final void l(final View view) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
            viewPropertyAnimatorAnimate.setDuration(300L);
            viewPropertyAnimatorAnimate.alpha(0.0f);
            viewPropertyAnimatorAnimate.withEndAction(new Runnable() {
                @Override
                public final void run() {
                    o1.a.m(view);
                }
            }).start();
        }

        public static final void m(View view) {
            uf.c.g(view);
        }

        public final void f(mn.j jVar) {
            final View viewInflate;
            mn.l lVar;
            ViewStub viewStub;
            if (k().getBoolean("video_show_guide", false)) {
                return;
            }
            if (((jVar == null || (lVar = jVar.f66586p) == null || (viewStub = lVar.f66638p) == null) ? null : viewStub.getParent()) == null || (viewInflate = jVar.f66586p.f66638p.inflate()) == null) {
                return;
            }
            o1.f47070b.k().putBoolean("video_show_guide", true);
            final Function0 function0 = new Function0() {
                @Override
                public final Object invoke() {
                    return o1.a.g(viewInflate);
                }
            };
            viewInflate.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    o1.a.h(viewInflate, function0, view);
                }
            });
            viewInflate.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    o1.a.j(function0);
                }
            }, 3000L);
        }

        public final MMKV k() {
            return (MMKV) o1.f47071c.getValue();
        }

        private a() {
        }
    }

    public o1(mn.c bind) {
        Intrinsics.h(bind, "bind");
        this.f47072a = bind;
        bind.f66524b.addAnimatorListener(this);
        bind.f66525c.addAnimatorListener(this);
    }

    private final void c() {
        mn.c cVar = this.f47072a;
        VideoDoubleClickBackgroundView vDoubleClick = cVar.f66528f;
        Intrinsics.g(vDoubleClick, "vDoubleClick");
        uf.c.g(vDoubleClick);
        AppCompatTextView tvDoubleClickLeft = cVar.f66526d;
        Intrinsics.g(tvDoubleClickLeft, "tvDoubleClickLeft");
        uf.c.g(tvDoubleClickLeft);
        AppCompatTextView tvDoubleClickRight = cVar.f66527e;
        Intrinsics.g(tvDoubleClickRight, "tvDoubleClickRight");
        uf.c.g(tvDoubleClickRight);
        LottieAnimationView lottieDoubleClickLeft = cVar.f66524b;
        Intrinsics.g(lottieDoubleClickLeft, "lottieDoubleClickLeft");
        uf.c.g(lottieDoubleClickLeft);
        LottieAnimationView lottieDoubleClickRight = cVar.f66525c;
        Intrinsics.g(lottieDoubleClickRight, "lottieDoubleClickRight");
        uf.c.g(lottieDoubleClickRight);
        cVar.f66524b.pauseAnimation();
        cVar.f66525c.pauseAnimation();
        ConstraintLayout root = cVar.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        uf.c.g(root);
    }

    public static final MMKV d() {
        MMKV mmkvI = MMKV.I("kv_video_double");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final void e(boolean z10) {
        boolean z11;
        mn.c cVar = this.f47072a;
        VideoDoubleClickBackgroundView vDoubleClick = cVar.f66528f;
        Intrinsics.g(vDoubleClick, "vDoubleClick");
        uf.c.k(vDoubleClick);
        boolean zF = uf.c.f();
        if (zF) {
            z11 = z10;
        } else {
            z11 = !z10;
        }
        cVar.f66528f.setLeftStyle(z11);
        if (z10) {
            if (zF) {
                cVar.f66525c.setScaleX(-1.0f);
            }
            AppCompatTextView tvDoubleClickRight = cVar.f66527e;
            Intrinsics.g(tvDoubleClickRight, "tvDoubleClickRight");
            uf.c.k(tvDoubleClickRight);
            LottieAnimationView lottieDoubleClickRight = cVar.f66525c;
            Intrinsics.g(lottieDoubleClickRight, "lottieDoubleClickRight");
            uf.c.k(lottieDoubleClickRight);
            cVar.f66525c.playAnimation();
        } else {
            if (zF) {
                cVar.f66524b.setScaleX(-1.0f);
            }
            AppCompatTextView tvDoubleClickLeft = cVar.f66526d;
            Intrinsics.g(tvDoubleClickLeft, "tvDoubleClickLeft");
            uf.c.k(tvDoubleClickLeft);
            LottieAnimationView lottieDoubleClickLeft = cVar.f66524b;
            Intrinsics.g(lottieDoubleClickLeft, "lottieDoubleClickLeft");
            uf.c.k(lottieDoubleClickLeft);
            cVar.f66524b.playAnimation();
        }
        ConstraintLayout root = cVar.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        uf.c.k(root);
    }

    @Override
    public void onAnimationCancel(Animator animation) {
        Intrinsics.h(animation, "animation");
        c();
    }

    @Override
    public void onAnimationEnd(Animator animation) {
        Intrinsics.h(animation, "animation");
        c();
    }

    @Override
    public void onAnimationRepeat(Animator animation) {
        Intrinsics.h(animation, "animation");
    }

    @Override
    public void onAnimationStart(Animator animation) {
        Intrinsics.h(animation, "animation");
    }
}
