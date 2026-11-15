package com.transsion.player.longvideo.helper;

import android.animation.Animator;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.tencent.mmkv.MMKV;
import com.transsion.postdetail.ui.view.VideoDoubleClickBackgroundView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class i implements Animator.AnimatorListener {

    public static final a f46114b = new a(null);

    private static final Lazy f46115c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return i.c();
        }
    });

    private final mn.c f46116a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public i(mn.c bind) {
        Intrinsics.h(bind, "bind");
        this.f46116a = bind;
        bind.f66524b.addAnimatorListener(this);
        bind.f66525c.addAnimatorListener(this);
    }

    private final void b() {
        mn.c cVar = this.f46116a;
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

    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("kv_video_double");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final void d(boolean z10) {
        boolean z11;
        mn.c cVar = this.f46116a;
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
        b();
    }

    @Override
    public void onAnimationEnd(Animator animation) {
        Intrinsics.h(animation, "animation");
        b();
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
