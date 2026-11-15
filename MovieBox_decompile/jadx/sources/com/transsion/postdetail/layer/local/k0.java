package com.transsion.postdetail.layer.local;

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

public final class k0 implements Animator.AnimatorListener {

    public static final a f47052b = new a(null);

    private static final Lazy f47053c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return k0.c();
        }
    });

    private final wn.v f47054a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public k0(wn.v bind) {
        Intrinsics.h(bind, "bind");
        this.f47054a = bind;
        bind.f74609b.addAnimatorListener(this);
        bind.f74610c.addAnimatorListener(this);
    }

    private final void b() {
        wn.v vVar = this.f47054a;
        VideoDoubleClickBackgroundView vDoubleClick = vVar.f74613f;
        Intrinsics.g(vDoubleClick, "vDoubleClick");
        uf.c.g(vDoubleClick);
        AppCompatTextView tvDoubleClickLeft = vVar.f74611d;
        Intrinsics.g(tvDoubleClickLeft, "tvDoubleClickLeft");
        uf.c.g(tvDoubleClickLeft);
        AppCompatTextView tvDoubleClickRight = vVar.f74612e;
        Intrinsics.g(tvDoubleClickRight, "tvDoubleClickRight");
        uf.c.g(tvDoubleClickRight);
        LottieAnimationView lottieDoubleClickLeft = vVar.f74609b;
        Intrinsics.g(lottieDoubleClickLeft, "lottieDoubleClickLeft");
        uf.c.g(lottieDoubleClickLeft);
        LottieAnimationView lottieDoubleClickRight = vVar.f74610c;
        Intrinsics.g(lottieDoubleClickRight, "lottieDoubleClickRight");
        uf.c.g(lottieDoubleClickRight);
        vVar.f74609b.pauseAnimation();
        vVar.f74610c.pauseAnimation();
        ConstraintLayout root = vVar.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        uf.c.g(root);
    }

    public static final MMKV c() {
        MMKV mmkvI = MMKV.I("kv_video_double");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final void d(boolean z10) {
        wn.v vVar = this.f47054a;
        VideoDoubleClickBackgroundView vDoubleClick = vVar.f74613f;
        Intrinsics.g(vDoubleClick, "vDoubleClick");
        uf.c.k(vDoubleClick);
        vVar.f74613f.setLeftStyle(!z10);
        if (z10) {
            AppCompatTextView tvDoubleClickRight = vVar.f74612e;
            Intrinsics.g(tvDoubleClickRight, "tvDoubleClickRight");
            uf.c.k(tvDoubleClickRight);
            LottieAnimationView lottieDoubleClickRight = vVar.f74610c;
            Intrinsics.g(lottieDoubleClickRight, "lottieDoubleClickRight");
            uf.c.k(lottieDoubleClickRight);
            vVar.f74610c.playAnimation();
        } else {
            AppCompatTextView tvDoubleClickLeft = vVar.f74611d;
            Intrinsics.g(tvDoubleClickLeft, "tvDoubleClickLeft");
            uf.c.k(tvDoubleClickLeft);
            LottieAnimationView lottieDoubleClickLeft = vVar.f74609b;
            Intrinsics.g(lottieDoubleClickLeft, "lottieDoubleClickLeft");
            uf.c.k(lottieDoubleClickLeft);
            vVar.f74609b.playAnimation();
        }
        ConstraintLayout root = vVar.getRoot();
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
